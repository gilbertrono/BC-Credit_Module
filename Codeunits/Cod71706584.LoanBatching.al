codeunit 71706584 "Loan Batching"
{
    procedure Batch(LoanDisbHeader1: Record "Loan Disbursement Header")

    var
        LoansR: Record Loans;
        cust: record Customer;
        LoanDisbHeader: Record "Loan Disbursement Header";
        LoanDisbHeaderLines: record "Loan Disbursement Lines";
        LastEntryNo: Integer;
    begin
        LoansR.Init();
        if LoansR.FindSet() then begin
            LoansR.SetRange("Batch No", LoanDisbHeader1.No);
            if LoansR.FindSet() then begin
                repeat
                    //Line  No
                    LastEntryNo := 0;
                    if LoanDisbHeaderLines.FindLast() then
                        LastEntryNo := LoanDisbHeaderLines."Line No";
                    LoanDisbHeaderLines.Init();
                    LoanDisbHeaderLines."LD No" := LoanDisbHeader1.No;
                    LoanDisbHeaderLines."Line No" := LastEntryNo + 1;
                    LoanDisbHeaderLines."Account No" := LoansR."Customer No";
                    LoanDisbHeaderLines."Account Name" := LoansR."Customer Name";
                    LoanDisbHeaderLines."Disbursement Amount" := LoansR."Approved Amount";
                    LoanDisbHeaderLines."Approved Amount" := LoansR."Approved Amount";
                    LoanDisbHeaderLines."Loan No" := LoansR."Loan No";
                    LoanDisbHeaderLines."Branch Code" := LoansR."Branch Code";
                    LoanDisbHeaderLines."Relationship Officer" := LoansR."Relationship Officer";
                    LoanDisbHeaderLines.Date := Today;
                    LoanDisbHeaderLines.Insert();
                until LoansR.Next() = 0;
            end;
        end;
    end;
}
