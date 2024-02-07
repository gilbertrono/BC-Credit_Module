codeunit 71706581 "Penalty Charge"
{
    trigger OnRun()
    var
        LoansR: Record Loans;
        ProductType: record "Product Types";
        GenJnlLine: Record "Gen. Journal Line";
        CustLedgerEntry: Record "Cust. Ledger Entry";
        Today: Date;
        InterestDue: Decimal;
        LoanAmount: Decimal;
        InterestRate: Decimal;
        RepayPeriod: Integer;
        LInterest: Decimal;
        LPrincipal: Decimal;
        TotalMRepay: Decimal;
        Lbalance: Decimal;
        DueDateToday: Date;
        DaysUntilDueToday: Integer;
        PenaltyAmount: Decimal;
        PenaltytRate: Decimal;
    begin
        Today := WorkDate();
        LoansR.Init();

        GenJnlLine.Reset();
        GenJnlLine.setrange("Journal Template Name", 'GENERAL');
        GenJnlLine.setrange("Journal Batch Name", 'PENALTY');
        GenJnlLine.DeleteAll();
        LoansR.Reset();

        if LoansR.FindSet() then begin
            LoansR.SetRange("Next Repayment Date", Today);
            if LoansR.FindSet() then begin
                repeat
                    if Today > LoansR."Next Repayment Date" then begin
                        LoanAmount := LoansR."Approved Amount";

                        if ProductType.Get(LoansR."Loan Product Type") then begin
                            PenaltytRate := ProductType."Penalty Percentage";
                            PenaltyAmount := LoansR."Approved Amount" * PenaltytRate;
                        end;
                        GenJnlLine.INIT;
                        GenJnlLine."Journal Template Name" := 'GENERAL';
                        GenJnlLine."Journal Batch Name" := 'PENALTY';
                        GenJnlLine."Line No." := GenJnlLine."Line No." + 1000;
                        GenJnlLine."Document No." := LoansR."Loan No";
                        GenJnlLine."Posting Date" := Today;
                        GenJnlLine."Account Type" := GenJnlLine."Account Type"::Customer;
                        GenJnlLine."Customer No" := LoansR."Customer No";
                        GenJnlLine."Account No." := LoansR."Customer No";
                        GenJnlLine.Validate(GenJnlLine."Account No.");
                        GenJnlLine.Description := 'Penalty Charged';
                        GenJnlLine."Loan No" := LoansR."Loan No";
                        GenJnlLine."Amount" := PenaltyAmount;
                        GenJnlLine."Amount (LCY)" := PenaltyAmount;
                        GenJnlLine."Balance (LCY)" := PenaltyAmount;
                        GenJnlLine."Currency Factor" := 0.00;
                        GenJnlLine."Transaction Type" := GenJnlLine."Transaction Type"::Penalty;
                        GenJnlLine."Currency Code" := '';
                        if ProductType.Get(LoansR."Loan Product Type") then begin
                            GenJnlLine."Bal. Account No." := ProductType."Penalty Income Account";
                        end;//GenJnlLine.Validate("Shortcut Dimension 1 Code", LoansR."Global Dimension 1 Code");
                            //GenJnlLine.Validate("Shortcut Dimension 2 Code", LoansR."Global Dimension 2 Code");
                        if GenJnlLine.Amount <> 0 then
                            GenJnlLine.INSERT(true);
                            //
                        GenJnlLine.Reset();
                        GenJnlLine.SetRange("Journal Template Name", 'GENERAL');
                        GenJnlLine.SetRange("Journal Batch Name", 'PENALTY');
                        if GenJnlLine.Find('-') THEN begin
                            Codeunit.Run(Codeunit::"Gen. Jnl.-Post Batch", GenJnlLine);
                        end;
                    end;

                until LoansR.Next() = 0;
            end;
        end;
    end;
}
