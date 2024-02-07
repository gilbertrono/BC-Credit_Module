table 71706618 "Loan Repayment Schedule"
{
    Caption = 'Loan Repayment Schedule';
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "Loan No"; Code[50])
        {
            Caption = 'Loan No';
            DataClassification = ToBeClassified;
        }
        field(2; "Member No."; Code[20])
        {
            Caption = 'Member No.';
            DataClassification = ToBeClassified;
        }

        field(3; "Repayment Date"; Date)
        {
            Caption = 'Repayment Date';
            DataClassification = ToBeClassified;
        }

        field(4; "Loan Category"; Code[20])
        {
            Caption = 'Loan Category';
            DataClassification = ToBeClassified;
        }

        field(5; "Closed Date"; Date)
        {
            Caption = 'Closed Date';
            DataClassification = ToBeClassified;
        }

        field(6; "Loan Amount"; Decimal)
        {
            Caption = 'Loan Amount';
            DataClassification = ToBeClassified;
        }

        field(7; "Interest Rate"; Decimal)
        {
            Caption = 'Interest Rate';
            DataClassification = ToBeClassified;
        }

        field(8; "Monthly Repayment"; Decimal)
        {
            Caption = 'Monthly Repayment';
            DataClassification = ToBeClassified;
        }

        field(9; "Member Name"; Text[100])
        {
            Caption = 'Member Name';
            DataClassification = ToBeClassified;
        }

        field(10; "Monthly Interest"; Decimal)
        {
            Caption = 'Monthly Interest';
            DataClassification = ToBeClassified;
        }

        field(11; "Amount Repayed"; Decimal)
        {
            Caption = 'Amount Repayed';
            DataClassification = ToBeClassified;
        }

        field(12; "Principal Repayment"; Decimal)
        {
            Caption = 'Principal Repayment';
            DataClassification = ToBeClassified;
        }

        field(13; "Paid"; Boolean)
        {
            Caption = 'Paid';
            DataClassification = ToBeClassified;
        }

        field(14; "Remaining Debt"; Decimal)
        {
            Caption = 'Remaining Debt';
            DataClassification = ToBeClassified;
        }

        field(15; "Instalment No"; Integer)
        {
            Caption = 'Instalment No';
            DataClassification = ToBeClassified;
        }

        field(16; "Actual Loan Repayment Date"; Date)
        {
            Caption = 'Actual Loan Repayment Date';
            DataClassification = ToBeClassified;
        }

        field(17; "Repayment Code"; Code[20])
        {
            Caption = 'Repayment Code';
            DataClassification = ToBeClassified;
        }

        field(18; "Group Code"; Code[20])
        {
            Caption = 'Group Code';
            DataClassification = ToBeClassified;
        }

        field(19; "Loan Application No"; Code[20])
        {
            Caption = 'Loan Application No';
            DataClassification = ToBeClassified;
        }

        field(20; "Actual Principal Paid"; Decimal)
        {
            Caption = 'Actual Principal Paid';
            DataClassification = ToBeClassified;
        }

        field(21; "Actual Interest Paid"; Decimal)
        {
            Caption = 'Actual Interest Paid';
            DataClassification = ToBeClassified;
        }

        field(22; "Actual Installment Paid"; Decimal)
        {
            Caption = 'Actual Installment Paid';
            DataClassification = ToBeClassified;
        }

        field(23; "Repayment Adjustment"; Decimal)
        {
            Caption = 'Repayment Adjustment';
            DataClassification = ToBeClassified;
        }

        field(24; "Reset Schedule"; Boolean)
        {
            Caption = 'Reset Schedule';
            DataClassification = ToBeClassified;
        }

        field(25; "Reset Doc No."; Code[20])
        {
            Caption = 'Reset Doc No.';
            DataClassification = ToBeClassified;

        }
    }
    keys
    {
        /*
        key(Key1; "Loan No", "Member No.", "Repayment Date")
        {
        }
        key(Key2; "Member No.")
        {
        }
        key(Key3; Paid)
        {
        }
        key(Key4; "Loan No", "Member No.", Paid)
        {
        }
        key(Key5; "Loan Category")
        {
        }
        key(Key6; "Loan No", "Member No.", Paid, "Loan Category")
        {
        }
        key(Key7; "Loan No", "Member No.", "Repayment Code")
        {
        }*/
        key(Key8; "Loan Application No", "Instalment No")
        {
           
        }
    }
}
