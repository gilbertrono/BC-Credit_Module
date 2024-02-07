codeunit 71706579 "Process Monthly Interest"
{
    trigger OnRun()
    var
        LoansR: Record Loans;
        ProductType: record "Product Types";
        cust: record Customer;
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

    begin

        Today := WorkDate();
        LoansR.Init();

        GenJnlLine.Reset();
        GenJnlLine.setrange("Journal Template Name", 'GENERAL');
        GenJnlLine.setrange("Journal Batch Name", 'INTEREST');
        GenJnlLine.DeleteAll();
        LoansR.Reset();

        if LoansR.FindSet() then begin
            LoansR.SetRange("Next Repayment Date", Today);
            if LoansR.FindSet() then begin
                repeat
                    LoanAmount := LoansR."Approved Amount";
                    InterestRate := LoansR.Interest;
                    if LoansR."Interest Calculation Method" = LoansR."Interest Calculation Method"::"Straight Line" then begin
                        LInterest := (InterestRate / 12 / 100) * LoanAmount;
                        InterestDue := LInterest;
                    end;
                    if LoansR."Interest Calculation Method" = LoansR."Interest Calculation Method"::Amortised then begin
                        TotalMRepay := Round((InterestRate / 12 / 100) / (1 - Power((1 + (InterestRate / 12 / 100)), -(RepayPeriod))) * (LoanAmount), 0.0001, '>');
                        LInterest := Round(LBalance / 100 / 12 * InterestRate, 0.0001, '>');
                        LPrincipal := TotalMRepay - LInterest;
                        InterestDue := LInterest;
                    end;
                    if (LoansR."Interest Calculation Method" in [LoansR."Interest Calculation Method"::"Reducing Balance",
                                                             LoansR."Interest Calculation Method"::Constants]) then begin
                        LPrincipal := LoanAmount / RepayPeriod;
                        LInterest := (InterestRate / 12 / 100) * LBalance;
                        InterestDue := LInterest;
                    end;
                    GenJnlLine.INIT;
                    GenJnlLine."Journal Template Name" := 'GENERAL';
                    GenJnlLine."Journal Batch Name" := 'INTEREST';
                    GenJnlLine."Line No." := GenJnlLine."Line No." + 1000;
                    GenJnlLine."Document No." := LoansR."Loan No";
                    GenJnlLine."Posting Date" := Today;
                    GenJnlLine."Account Type" := GenJnlLine."Account Type"::Customer;
                    GenJnlLine."Customer No" := LoansR."Customer No";
                    GenJnlLine."Account No." := LoansR."Customer No";
                    GenJnlLine.Validate(GenJnlLine."Account No.");
                    GenJnlLine.Description := 'Interest Charged';
                    GenJnlLine."Loan No" := LoansR."Loan No";
                    GenJnlLine."Amount" := InterestDue;
                    GenJnlLine.Validate(Amount);
                    GenJnlLine."Amount (LCY)" := InterestDue;
                    GenJnlLine."Currency Factor" := 0.00;
                    GenJnlLine."Balance (LCY)" := InterestDue;
                    GenJnlLine."Transaction Type" := GenJnlLine."Transaction Type"::"Interest Due";
                    GenJnlLine."Currency Code" := '';
                    if ProductType.Get(LoansR."Loan Product Type")then begin
                        GenJnlLine."Bal. Account No.":=ProductType."Loan Interest Account _G_L_";
                    end;
                    //GenJnlLine.Validate("Shortcut Dimension 1 Code", LoansR."Global Dimension 1 Code");
                    //GenJnlLine.Validate("Shortcut Dimension 2 Code", LoansR."Global Dimension 2 Code");
                    if GenJnlLine.Amount <> 0 then
                        GenJnlLine.INSERT(true);
                   /* GenJnlLine.Reset();
                    GenJnlLine.SetRange("Journal Template Name", 'GENERAL');
                    GenJnlLine.SetRange("Journal Batch Name", 'INTEREST');
                    if GenJnlLine.Find('-') THEN begin
                        Codeunit.Run(Codeunit::"Gen. Jnl.-Post Batch", GenJnlLine);
                    end;

                    //Create Customer Ledger Entry
                    CustLedgerEntry.INIT;
                    CustLedgerEntry."Document No." := LoansR."Loan No";
                    CustLedgerEntry."Customer No." := LoansR."Customer No";
                    CustLedgerEntry.Description := 'Interest Charged';
                    CustLedgerEntry."Loan  No" := LoansR."Loan No";
                    CustLedgerEntry."Loan Type" := LoansR."Loan Product Type";
                    CustLedgerEntry."Branch Code" := LoansR."Branch Code";
                    CustLedgerEntry."Relationship Officer Code" := LoansR."Relationship Officer";
                    CustLedgerEntry."Amount" := InterestDue;
                    CustLedgerEntry.Validate(CustLedgerEntry.Amount);
                    CustLedgerEntry."Transaction Type" := CustLedgerEntry."Transaction Type"::"Interest Due";
                    CustLedgerEntry."Posting Date" := Today;
                    if CustLedgerEntry.Amount <> 0 then
                        CustLedgerEntry.INSERT;*/
                until LoansR.Next() = 0;
            end;
        end;
        /*
             if cust.get(LoansR."Customer No") then begin
                 GenJnlLine.Init();
                 GenJnlLine."Journal Template Name" := 'GENERAL';
                 GenJnlLine."Journal Batch Name" := 'INTEREST';
                 GenJnlLine."Line No." := GenJnlLine."Line No." + 1000;
                 GenJnlLine."Document No." := LoansR."Loan No";
                 GenJnlLine."Posting Date" := Today;
                 GenJnlLine."Account Type" := GenJnlLine."Account Type"::Customer;
                 GenJnlLine."Customer No" := LoansR."Customer No";
                 GenJnlLine.Validate(GenJnlLine."Account No.");
                 GenJnlLine.Description := 'Interest Charged';
                 GenJnlLine.Amount := InterestDue;
                 GenJnlLine.Validate(Amount);
                 GenJnlLine."Loan No" := LoansR."Loan No";
                 GenJnlLine."Transaction Type" := GenJnlLine."Transaction Type"::"Repayment Account";
                 //GenJnlLine.Validate("Shortcut Dimension 1 Code", LoansR."Global Dimension 1 Code");
                 //GenJnlLine.Validate("Shortcut Dimension 2 Code", LoansR."Global Dimension 2 Code");
                 if GenJnlLine.Amount <> 0 then
                     GenJnlLine.Insert();
             end;
             GenJnlLine.Reset();
             GenJnlLine.SetRange("Journal Template Name", 'GENERAL');
             GenJnlLine.SetRange("Journal Batch Name", 'INTEREST');
             if GenJnlLine.Find('-') THEN begin
                 Codeunit.Run(Codeunit::"Gen. Jnl.-Post Batch", GenJnlLine);
             end;
            until LoansR.next = 0;
        end;
        */
    end;
}
