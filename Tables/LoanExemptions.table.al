table 71706594 "Loan Exemptions"
{
    Caption = 'Loan Exemptions';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Entry No"; Integer)
        {
            Caption = 'Entry No';
            AutoIncrement=true;
        }
        field(2; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation="User Setup";
        }
        field(3; "Name of User"; Text[100])
        {
            Caption = 'Name of User';
        }
        field(4; "Category of Exeption"; Option)
        {
            Caption = 'Category of Exeption';
            OptionMembers="","KYC","Proof of Income","Security","School","Business","Proof of Purpose";
        }
    }
    keys
    {
        key(PK; "Entry No")
        {
            Clustered = true;
        }
    }
}
