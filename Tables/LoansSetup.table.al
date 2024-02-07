table 71706578 "Loans Setup"
{
    Caption = 'Loans Setup';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; PK; Code[20])
        {
            Caption = 'PK';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; PK)
        {
            Clustered = true;
        }
    }
}
