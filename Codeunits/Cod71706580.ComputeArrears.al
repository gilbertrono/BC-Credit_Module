codeunit 71706580 "Compute Arrears"
{
    trigger OnRun()
    var
        LoansR: Record Loans;
        ArrearsDays: Integer;
        OutstandingInterest: Decimal;
        OutstandingPrincipal: Decimal;
        Today: Date;
        NextRepaymentDate: Date;
        InterestRate: Decimal;
        RepayPeriod: Integer;
        LInterest: Decimal;
        LPrincipal: Decimal;
        TotalMRepay: Decimal;
        Lbalance: Decimal;
        LoanAmount: Decimal;
    begin
        Today := WorkDate();
        LoansR.Init();
        LoansR.Reset();
        if LoansR.FindSet() then begin
            if Today > LoansR."Next Repayment Date" THEN begin
                repeat
                    LoanAmount := LoansR."Approved Amount";
                    NextRepaymentDate := LoansR."Next Repayment Date";
                    InterestRate := LoansR.Interest;
                    RepayPeriod := LoansR.Installments;
                    ArrearsDays := Today - NextRepaymentDate;
                    if LoansR."Interest Calculation Method" = LoansR."Interest Calculation Method"::"Straight Line" then begin
                         LPrincipal := LoanAmount / RepayPeriod;
                        LInterest := (InterestRate / 12 / 100) * LoanAmount;

                    end;
                    if LoansR."Interest Calculation Method" = LoansR."Interest Calculation Method"::Amortised then begin
                        TotalMRepay := Round((InterestRate / 12 / 100) / (1 - Power((1 + (InterestRate / 12 / 100)), -(RepayPeriod))) * (LoanAmount), 0.0001, '>');
                        LInterest := Round(LBalance / 100 / 12 * InterestRate, 0.0001, '>');
                        LPrincipal := TotalMRepay - LInterest;
                    end;
                    if (LoansR."Interest Calculation Method" in [LoansR."Interest Calculation Method"::"Reducing Balance",
                                                             LoansR."Interest Calculation Method"::Constants]) then begin
                        LPrincipal := LoanAmount / RepayPeriod;
                        LInterest := (InterestRate / 12 / 100) * LBalance;
                    end;
                    LoansR."Principal in arrears" := LPrincipal;
                    LoansR."Interest In Arrears" := LInterest;
                    LoansR."Days in Arrears" := ArrearsDays;
                    LoansR."Total In Arrears" := LoansR."Principal in arrears" + LoansR."Interest In Arrears";
                    LoansR.Modify(true);
                until LoansR.NEXT = 0;
            end;
        end;
    end;
}
