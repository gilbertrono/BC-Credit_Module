codeunit 71706583 "Post Loan"
{
    procedure LoanPosting(LoanDisbHeader: Record "Loan Disbursement Header")
    var
        LoansR: Record Loans;
        LoansDisbLines: Record "Loan Disbursement Lines";
        ProductType: record "Product Types";
        ProductTypeCharges: record "Loan Product Charges";
        cust: record Customer;
        GenJnlLine: Record "Gen. Journal Line";
        CustLedgerEntry: Record "Cust. Ledger Entry";
        DetailedCustLedgerEntry: record "Detailed Cust. Ledg. Entry";
        GLAccount: record "G/L Account";
        LoanAmount: Decimal;
    begin

        LoansDisbLines.Init();
        GenJnlLine.Reset();
        GenJnlLine.setrange("Journal Template Name", 'GENERAL');
        GenJnlLine.setrange("Journal Batch Name", 'DISBURSE');
        GenJnlLine.DeleteAll();
        LoansDisbLines.Reset();
        if LoansDisbLines.FindSet() then begin
            // if LoansDisbLines.Status = LoansDisbLines.Status::Approved then begin
            repeat
                LoanAmount := LoansDisbLines."Approved Amount";
                //Loan Amount
                GenJnlLine.INIT;
                GenJnlLine."Journal Template Name" := 'GENERAL';
                GenJnlLine."Journal Batch Name" := 'DISBURSE';
                GenJnlLine."Line No." := GenJnlLine."Line No." + 1000;
                GenJnlLine."Document No." := LoansDisbLines."Loan No";
                GenJnlLine."Posting Date" := Today;
                GenJnlLine."Account Type" := GenJnlLine."Account Type"::Customer;
                GenJnlLine."Customer No" := LoansDisbLines."Account No";
                GenJnlLine."Account No." := LoansDisbLines."Account No";
                GenJnlLine.Validate(GenJnlLine."Account No.");
                GenJnlLine.Description := 'Loan Application';
                GenJnlLine."Loan No" := LoansDisbLines."Loan No";
                GenJnlLine."Amount" := LoanAmount;
                GenJnlLine.Validate(Amount);
                GenJnlLine."Amount (LCY)" := LoanAmount;
                GenJnlLine."Currency Factor" := 0.00;
                GenJnlLine."Balance (LCY)" := LoanAmount;
                GenJnlLine."Transaction Type" := GenJnlLine."Transaction Type"::Loan;
                GenJnlLine."Currency Code" := '';
                LoansR.SetRange("Loan No", LoansDisbLines."Loan No");
                if LoansR.FindSet() then begin
                    if ProductType.Get(LoansR."Loan Product Type") then begin
                        GenJnlLine."Bal. Account No." := ProductType."Loan Account _G_L_";
                    end;
                end;
                GenJnlLine.Validate("Shortcut Dimension 1 Code", LoansR."Global Dimension 1 Code");
                GenJnlLine.Validate("Shortcut Dimension 2 Code", LoansR."Global Dimension 2 Code");
                if GenJnlLine.Amount <> 0 then
                    GenJnlLine.INSERT(true);
                //Loan Charges      
                if ProductType.Get(LoansR."Loan Product Type") then begin
                    ProductTypeCharges.SetRange("Product ID", ProductType."Product ID");
                    if ProductTypeCharges.FindSet() then begin
                        repeat
                            GenJnlLine.INIT;
                            GenJnlLine."Journal Template Name" := 'GENERAL';
                            GenJnlLine."Journal Batch Name" := 'DISBURSE';
                            GenJnlLine."Line No." := GenJnlLine."Line No." + 1000;
                            GenJnlLine."Document No." := LoansR."Loan No";
                            GenJnlLine."Posting Date" := Today;
                            GenJnlLine."Account Type" := GenJnlLine."Account Type"::Customer;
                            GenJnlLine."Customer No" := LoansR."Customer No";
                            GenJnlLine."Account No." := LoansR."Customer No";
                            GenJnlLine.Validate(GenJnlLine."Account No.");
                            GenJnlLine."Loan No" := LoansR."Loan No";
                            GenJnlLine.Amount := ProductTypeCharges."Amount Percentage";
                            GenJnlLine.Validate(Amount);
                            GenJnlLine."Amount (LCY)" := ProductTypeCharges."Amount Percentage";
                            GenJnlLine."Currency Factor" := 0.00;
                            GenJnlLine."Balance (LCY)" := ProductTypeCharges."Amount Percentage";
                            GenJnlLine."Transaction Type" := GenJnlLine."Transaction Type"::Loan;
                            GenJnlLine."Currency Code" := '';
                            GenJnlLine.Description := ProductTypeCharges.Description;
                            GenJnlLine."Bal. Account No." := ProductTypeCharges."Charges G/L Account";
                            GenJnlLine.Validate("Shortcut Dimension 1 Code", LoansR."Global Dimension 1 Code");
                            GenJnlLine.Validate("Shortcut Dimension 2 Code", LoansR."Global Dimension 2 Code");
                            if GenJnlLine.Amount <> 0 then
                                GenJnlLine.INSERT(true);
                        until ProductTypeCharges.Next() = 0;
                    end;
                end;
            /* GenJnlLine.Reset();
        GenJnlLine.SetRange("Journal Template Name", 'GENERAL');
        GenJnlLine.SetRange("Journal Batch Name", 'DISBURSE');
        if GenJnlLine.Find('-') THEN begin
            Codeunit.Run(Codeunit::"Gen. Jnl.-Post Batch", GenJnlLine);
        end;*/
            until LoansDisbLines.Next() = 0;
        end;
        //end;
    end;
}
