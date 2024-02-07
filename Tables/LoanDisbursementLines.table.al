table 71706592 "Loan Disbursement Lines"
{
    DataClassification = TobeClassified;

    fields
    {
        field(1; "LD No"; Code[20])
        {
            Caption = 'LD No';
            Editable = false;
        }

        field(3; "Line No"; Integer)
        {
            Caption = 'Line No';
            AutoIncrement = true;
            Editable = false;
        }

        field(4; "Date"; Date)
        {
            Caption = 'Date';
            Editable = false;
        }

        field(5; "Cheque No"; Code[20])
        {
            Caption = 'Cheque No';

        }

        field(6; "Cheque Date"; Date)
        {
            Caption = 'Cheque Date';
        }

        field(7; "Bank Code"; Code[100])
        {
            Caption = 'Bank Code';
            Editable = false;
        }

        field(8; "Account No"; Code[100])
        {
            Caption = 'Account No';
            Editable = false;
        }
        field(10; "Account Name"; Text[150])
        {
            Caption = 'Account Name';
            Editable = false;
        }
        field(11; "Posted"; Boolean)
        {
            Caption = 'Posted';
            Editable = false;
        }

        field(12; "Date Posted"; DateTime)
        {
            Caption = 'Date Posted';
        }

        field(13; "Time Posted"; DateTime)
        {
            Caption = 'Time Posted';
        }

        field(14; "Posted By"; Code[50])
        {
            Caption = 'Posted By';
        }

        field(15; "Disbursement Amount"; Decimal)
        {
            Caption = 'Disbursement Amount';
            Editable = false;
        }

        field(17; "Loan No"; Code[20])
        {
            Caption = 'Loan No';
            Editable = false;
        }
        field(19; "Disbursement Serial PD"; Integer)
        {
            Caption = 'Disbursement Serial PD';
        }
        field(20; "Approved Amount"; Decimal)
        {
            Caption = 'Approved Amount';
            Editable = false;
        }
        field(21; "Branch Code"; code[100])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(22; "Relationship Officer"; code[100])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
        field(23; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "","Open","Pending Approval","Approved";
        }
    }

    keys
    {
        key(key1; "LD No", "Line No")
        {
            // Clustered = true;
        }
        key(key2; "Loan No")
        {

        }

    }
    trigger OnInsert()
    var
        LoanDisHeader: Record "Loan Disbursement Header";
    begin
        LoanDisHeader.SetRange(No, "LD No");

        if LoanDisHeader.FindSet() then begin
            Status := LoanDisHeader.Status;
        end;
    end;
}
