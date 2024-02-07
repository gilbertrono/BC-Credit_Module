table 71706602 "RO Loans"
{
    DataClassification = ToBeClassified;    

    fields
    {
        
        field(1; "No"; Code[20])
        {
            Caption='No';
        }

        field(3; "Disbursement Date"; DateTime)
        {
            Caption='Disbursement Date';
        }

        field(4; "Next Repayment Date"; DateTime)
        {
            Caption='Next Repayment Date';
        }

        field(5; "Loan No"; Code[20])
        {
            Caption='Loan No';
        }

        field(6; "Approved Amount"; Decimal)
        {
            Caption='Approved Amount';
        }

        field(7; "Outstanding Principle Balance"; Decimal)
        {
            Caption='Outstanding Principle Balance';
        }

        field(8; "Outstanding Interest"; Decimal)
        {
            Caption='Outstanding Interest';
        }

        field(9; "Oustanding Penalty"; Decimal)
        {
            Caption='Oustanding Penalty';
        }

        field(10; "Total Arrears"; Decimal)
        {
            Caption='Total Arrears';
        }        

        field(12; "Loan Product Type"; Code[20])
        {
            Caption='Loan Product Type';
        }
    }

    keys
    {
        key(PK; "No")
        {
            Clustered = true;
        }
        
    }
}





