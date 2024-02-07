table 71706591 "Loan Disbursement Header"
{
    DataClassification = TobeClassified;

    fields
    {

        field(1; "No"; Code[20])
        {
            Caption = 'No';
            DataClassification = TobeClassified;
            Editable = false;
        }
        field(3; "Date Created"; Date)
        {
            Caption = 'Date Created';
            DataClassification = TobeClassified;
        }
        field(4; "Currency Factor"; Decimal)
        {
            Caption = 'Currency Factor';
            DataClassification = TobeClassified;
        }
        field(5; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            DataClassification = TobeClassified;
        }
        field(6; "Posted"; Boolean)
        {
            Caption = 'Posted';
            DataClassification = TobeClassified;
        }
        field(7; "Date Posted"; DateTime)
        {
            Caption = 'Date Posted';
            DataClassification = TobeClassified;
        }
        field(8; "Time Posted"; DateTime)
        {
            Caption = 'Time Posted';
            DataClassification = TobeClassified;
        }
        field(9; "Posted By"; Code[50])
        {
            Caption = 'Posted By';
            DataClassification = TobeClassified;
        }
        field(11; "Status"; Option)
        {
            Caption = 'Status';
            OptionMembers = "Open","Pending Approval","Approved";
        }
        field(12; "Payment Type"; Integer)
        {
            Caption = 'Payment Type';
            DataClassification = TobeClassified;
        }
        field(15; "Responsibility Center"; Code[20])
        {
            Caption = 'Responsibility Center';
            TableRelation = "Responsibility Center";
        }
        field(30; "No of Loans"; Integer)
        {
            Caption = 'No of Loans';
            //DataClassification = TobeClassified;
            FieldClass = FlowField;
            CalcFormula = count("Loan Disbursement Lines" where("LD No" = field(No)));
        }
        field(16; "Posting Remarks"; Text[50])
        {
            Caption = 'Posting Remarks';
            DataClassification = TobeClassified;
        }
        field(17; "Loan Product Type"; Code[20])
        {
            Caption = 'Loan Product Type';
            DataClassification = TobeClassified;
        }
        field(18; "Issued Date From"; DateTime)
        {
            Caption = 'Issued Date From';
            DataClassification = TobeClassified;
        }
        field(19; "Issued Date To"; DateTime)
        {
            Caption = 'Issued Date To';
            DataClassification = TobeClassified;
        }
        field(20; "Subsequent Disbursements"; Integer)
        {
            Caption = 'Subsequent Disbursements';
            DataClassification = TobeClassified;
        }
        field(21; "Time Created"; DateTime)
        {
            Caption = 'Time Created';
            DataClassification = TobeClassified;
        }
        field(22; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
            DataClassification = TobeClassified;
        }
        field(23; "Prepared By"; Code[50])
        {
            Caption = 'Prepared By';
            DataClassification = TobeClassified;
        }
        field(24; "Mode of Disbursement"; Option)
        {
            Caption = 'Mode of Disbursement';
            OptionMembers = "","MPESA","EFT","RTGS";
        }
        field(25; "Bank Account No"; Code[20])
        {
            Caption = 'Bank Account No';
            TableRelation = "Bank Account";
        }
        field(26; "Special Processing Commission"; Decimal)
        {
            Caption = 'Special Processing Commission';
            DataClassification = TobeClassified;
        }
        field(27; "Bank Name"; Text[50])
        {
            Caption = 'Bank Name';
            DataClassification = TobeClassified;
        }
        field(28; "Total Amount"; Decimal)
        {
            // DataClassification = ToBeClassified;
            FieldClass = FlowField;
            CalcFormula = sum("Loan Disbursement Lines"."Disbursement Amount" where("LD No" = field(No)));
            Editable = false;
        }
    }

    keys
    {
        key(PK; "No")
        {
            Clustered = true;
        }

    }
    var
        myInt: Integer;

    trigger OnInsert()
    var
        Setup: Record "Credit No.Series";
        NoMgt: Codeunit NoSeriesManagement;
        LoansR: Record Loans;
        LoanDisbHeaderLines: record "Loan Disbursement Lines";
        LoansBatch: Codeunit "Loan Batching";
    begin
        if "No" = '' then begin
            Setup.Get();
            "No" := NoMgt.GetNextNo(Setup."Loan Disbursemment Nos", WorkDate, true);
            "Posted By" := UserId;
        end;
        /*if No <> '' then begin
            LoansBatch.Batch(Rec);

        end;*/
    end;

    trigger OnModify()
    var
        LoansR: Record Loans;
        LoanDisbHeaderLines: record "Loan Disbursement Lines";
        LoansBatch: Codeunit "Loan Batching";
    begin
        /*if No <> '' then begin
            LoansBatch.Batch(Rec);

        end;*/
    end;
}

