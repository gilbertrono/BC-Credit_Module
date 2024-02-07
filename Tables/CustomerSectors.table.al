table 71706610 "Customer Sectors"
{
    Caption = 'Customer Sectors';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; No; Integer)
        {
            Caption = 'No';
            AutoIncrement=true;            
            DataClassification = TobeClassified;
        }
        field(2; "Sector Code"; Code[20])
        {
            Caption = 'Sector Code';
            DataClassification = TobeClassified;
        }
        field(3; "Sector Name"; Text[50])
        {
            Caption = 'Sector Name';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
    
}
