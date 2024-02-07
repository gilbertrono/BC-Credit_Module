table 71706590 "Bank Codes"
{
    DataClassification = ToBeClassified; 
    LookupPageId="Bank Codes";
    fields
    {       
        field(1; "No"; Integer)
        {
            Caption='No';
            AutoIncrement=true;
            DataClassification = ToBeClassified;
        }
        field(2; "Bank Code"; Text[20])
        {
            Caption='Bank Code';
            DataClassification = ToBeClassified;
        }
        field(5; "Bank Name"; Text[100])
        {
             Caption='Bank Name';
             DataClassification = ToBeClassified;
        }
        field(3; "Bank Branch Code"; Code[20])
        {
            Caption='Branch Code';
            DataClassification = ToBeClassified;
        }
        field(4; "Branch Name"; Text[100])
        {
            Caption='Branch Name';
            DataClassification = ToBeClassified;
        }
        
    }

    keys
    {
        Key(PK; "No")
        {
            Clustered=True;
        }
        
    }
    
}