codeunit 71706578 "Credit Management"
{
    procedure generateSchedule(LoanNo: Code[20])
    var
        LoansR: Record Loans;
        LoanAmount: Decimal;
        InterestRate: Decimal;
        RepayPeriod: Integer;
        LBalance: Decimal;
        RunDate: Date;
        InstalNo: Decimal;
        RepayInterval: DateFormula;
        TotalMRepay: Decimal;
        LInterest: Decimal;
        LPrincipal: Decimal;
        RepayCode: Code[40];
        GrPrinciple: Integer;
        GrInterest: Integer;
        QPrinciple: Decimal;
        QCounter: Integer;
        InPeriod: DateFormula;
        InitialInstal: Integer;
        InitialGraceInt: Integer;
        RSchedule: Record "Loan Repayment Schedule";
    begin
        // Delete schedule
        RSchedule.SetRange(RSchedule."Loan No", LoanNo);
        IF RSchedule.FindSet THEN
            REPEAT
                RSchedule.Delete;
            UNTIL RSchedule.NEXT = 0;

        QCounter := 0;
        QCounter := 3;

        LoansR.Reset;
        LoansR.SetRange(LoansR."Loan No", LoanNo);
        LoansR.SetFilter("Repayment Start Date", '<>%1', 0D);
        if LoansR.Find('-') then begin

            /*LoansR.TESTFIELD("Disbursement Date");
            LoansR.TESTFIELD("Repayment Start Date");*/

            if LoansR."Disbursement Date" <> 0D then
                //LoansR.VALIDATE("Disbursement Date" , TODAY);

            LoanAmount := LoansR."Approved Amount";
            InterestRate := LoansR.Interest;
            RepayPeriod := LoansR.Installments;
            InitialInstal := LoansR.Installments;
            LBalance := LoansR."Approved Amount";
            RunDate := LoansR."Repayment Start Date";

            InstalNo := 0;

            repeat
                InstalNo := InstalNo + 1;

                //kma
                if LoansR."Interest Calculation Method" = LoansR."Interest Calculation Method"::Amortised then begin
                    LoansR.TestField(Interest);
                    LoansR.TestField(Installments);
                    TotalMRepay := Round((InterestRate / 12 / 100) / (1 - Power((1 + (InterestRate / 12 / 100)), -(RepayPeriod))) * (LoanAmount), 0.0001, '>');
                    LInterest := Round(LBalance / 100 / 12 * InterestRate, 0.0001, '>');
                    LPrincipal := TotalMRepay - LInterest;
                end;

                if LoansR."Interest Calculation Method" = LoansR."Interest Calculation Method"::"Straight Line" then begin
                    LoansR.TestField(Interest);
                    LoansR.TestField(Installments);
                    LPrincipal := LoanAmount / RepayPeriod;
                    LInterest := (InterestRate / 12 / 100) * LoanAmount;
                end;

                if (LoansR."Interest Calculation Method" in [LoansR."Interest Calculation Method"::"Reducing Balance",
                                                             LoansR."Interest Calculation Method"::Constants]) then begin
                    LoansR.TestField(Interest);
                    LoansR.TestField(Installments);
                    LPrincipal := LoanAmount / RepayPeriod;
                    LInterest := (InterestRate / 12 / 100) * LBalance;
                end;

                //Grace Period
                if GrPrinciple > 0 then begin
                    LPrincipal := 0
                end else begin
                    //IF "Instalment Period" <> InPeriod THEN
                    LBalance := LBalance - LPrincipal;
                end;

                if GrInterest > 0 then
                    LInterest := 0;

                GrPrinciple := GrPrinciple - 1;
                GrInterest := GrInterest - 1;

                Evaluate(RepayCode, Format(InstalNo));


                ///
                RSchedule.SETRANGE("Loan No", LoansR."Loan No");
                RSchedule.SETRANGE("Member No.", LoansR."Customer No");
                RSchedule.SETRANGE("Repayment Date", RunDate);
                RSchedule.SetRange("Instalment No", InstalNo);

                IF RSchedule.FINDFIRST THEN BEGIN
                    for InstalNo := 1 to LoansR.Installments do begin
                        RSchedule."Repayment Code" := RepayCode;
                        RSchedule."Loan Amount" := LoanAmount;
                        RSchedule."Instalment No" := InstalNo;
                        RSchedule."Loan Category" := LoansR."Loan Product Type";
                        RSchedule."Monthly Repayment" := LInterest + LPrincipal;
                        RSchedule."Monthly Interest" := LInterest;
                        RSchedule."Principal Repayment" := LPrincipal;
                        RSchedule.MODIFY;

                    end;

                END ELSE BEGIN
                    //for InstalNo := 1 to LoansR.Installments do begin
                    RSchedule.INIT;
                    RSchedule."Repayment Code" := RepayCode;
                    RSchedule."Loan No" := LoansR."Loan No";
                    RSchedule."Loan Amount" := LoanAmount;
                    RSchedule."Instalment No" := InstalNo;
                    RSchedule."Repayment Date" := RunDate;
                    RSchedule."Member No." := LoansR."Customer No";
                    RSchedule."Loan Category" := LoansR."Loan Product Type";
                    RSchedule."Monthly Repayment" := LInterest + LPrincipal;
                    RSchedule."Monthly Interest" := LInterest;
                    RSchedule."Principal Repayment" := LPrincipal;
                    RSchedule.INSERT;
                    // end;

                END;

                //Repayment Frequency
                if LoansR."Repayment Frequency" = LoansR."Repayment Frequency"::Daily then
                    RunDate := CalcDate('1D', RunDate)
                else
                    if LoansR."Repayment Frequency" = LoansR."Repayment Frequency"::Weekly then
                        RunDate := CalcDate('1W', RunDate)
                    else
                        if LoansR."Repayment Frequency" = LoansR."Repayment Frequency"::Monthly then
                            RunDate := CalcDate('1M', RunDate)
                        else
                            if LoansR."Repayment Frequency" = LoansR."Repayment Frequency"::Quarterly then
                                RunDate := CalcDate('1Q', RunDate)
                            else
                                if LoansR."Repayment Frequency" = LoansR."Repayment Frequency"::"Bi-Annual" then
                                    RunDate := CalcDate('6M', RunDate)
                                else
                                    if LoansR."Repayment Frequency" = LoansR."Repayment Frequency"::Yearly then
                                        RunDate := CalcDate('1Y', RunDate);

            until LBalance < 1
            // until InstalNo =RepayPeriod;


        end;

    end;


    procedure ManageLoanApplication(LoansR: record Loans)
    var

    begin

        if LoansR."Loan Product Type" <> '' then begin
            ProductTypes.SetRange("Product ID", LoansR."Loan Product Type");
            if ProductTypes.FindFirst() then begin
                if (LoansR."Applied Amount") > ProductTypes."Maximum Loan Amount" then
                    Error('The amount applied exceed the maximum loan amount for the product');

                if (LoansR."Applied Amount") < ProductTypes."Minimum Loan Amount" then
                    Error('The amount applied is less than the minimum loan amount for the product');

            end;
        end;
    end;

    procedure UpdateRepayment(Loan: record Loans)
    var
        LoansR: Record Loans;
    begin
        LoansR := Loan;
        LoanAmount := LoansR."Approved Amount";
        InterestRate := LoansR.Interest;
        RepayPeriod := LoansR.Installments;
        InitialInstal := LoansR.Installments;
        LBalance := LoansR."Approved Amount";
        //Update Repayments in the loan card
        if LoansR."Approved Amount" <> 0 then begin
            LoansR.SetRange("Loan No", LoansR."Loan No");
            if Loan.Find('-') then begin
                if LoansR."Interest Calculation Method" = LoansR."Interest Calculation Method"::Amortised then begin
                    LoansR.TestField(Interest);
                    LoansR.TestField(Installments);
                    TotalMRepay := Round((InterestRate / 12 / 100) / (1 - Power((1 + (InterestRate / 12 / 100)), -(RepayPeriod))) * (LoanAmount), 0.0001, '>');
                    LInterest := Round(LBalance / 100 / 12 * InterestRate, 0.0001, '>');
                    LPrincipal := TotalMRepay - LInterest;
                    LoansR.Repayment := LPrincipal + LInterest;
                    LoansR.Modify();
                end;
                if LoansR."Interest Calculation Method" = LoansR."Interest Calculation Method"::"Straight Line" then begin
                    LoansR.TestField(Interest);
                    LoansR.TestField(Installments);
                    LPrincipal := LoanAmount / RepayPeriod;
                    LInterest := (InterestRate / 12 / 100) * LoanAmount;
                    LoansR.Repayment := LPrincipal + LInterest;
                    LoansR.Modify();
                end;

                if (LoansR."Interest Calculation Method" in [LoansR."Interest Calculation Method"::"Reducing Balance",
                                                             LoansR."Interest Calculation Method"::Constants]) then begin
                    LoansR.TestField(Interest);
                    LoansR.TestField(Installments);
                    LPrincipal := LoanAmount / RepayPeriod;
                    LInterest := (InterestRate / 12 / 100) * LBalance;
                    LoansR.Repayment := LPrincipal + LInterest;
                    LoansR.Modify();
                end;

            end;
        end
        else begin
            LoansR.Repayment:=0;
            LoansR.Modify();
        end;
   end;


    procedure RunReport(ReportNumber: Integer)
    begin
        LoansR.SetRange("Loan No", LoansR."Loan No");
        Report.RunModal(ReportNumber, true, true, LoansR);
    end;

    var
        myInt: Integer;
        Member: Record Customer;
        mydate: Date;
        NotRun: Boolean;
        Rundate: date;
        DormancyMessage: text[251];
        SourceType: Option "New Member","New Account","Loan Account Approval","Deposit Confirmation","Cash Withdrawal Confirm","Loan Application","Loan Appraisal","Loan Guarantors","Loan Rejected","Loan Posted","Loan defaulted","Salary Processing","Teller Cash Deposit"," Teller Cash Withdrawal","Teller Cheque Deposit","Fixed Deposit Maturity","InterAccount Transfer","Account Status","Status Order","EFT Effected"," ATM Application Failed","ATM Collection",MSACCO,"Member Changes","Cashier Below Limit","Cashier Above Limit","Chq Book",Dormancy;
        post: Codeunit "Credit Management";
        LoansR: Record Loans;
        ProductTypes: record "Product Types";
        //
        LoanAmount: Decimal;
        InterestRate: Decimal;
        RepayPeriod: Integer;
        LBalance: Decimal;
        InstalNo: Decimal;
        RepayInterval: DateFormula;
        TotalMRepay: Decimal;
        LInterest: Decimal;
        LPrincipal: Decimal;
        RepayCode: Code[40];
        GrPrinciple: Integer;
        GrInterest: Integer;
        QPrinciple: Decimal;
        QCounter: Integer;
        InPeriod: DateFormula;
        InitialInstal: Integer;
        InitialGraceInt: Integer;
        RSchedule: Record "Loan Repayment Schedule";


}
