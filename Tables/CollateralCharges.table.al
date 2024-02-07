table 71706585 "Collateral Charges"
{
    DataClassification = TobeClassified;     

    fields
    {       
        field(1; "Code"; Code[20])
        {
            Caption='Code';
             DataClassification = TobeClassified; 
        }

        field(2; "Description"; Code[70])
        {
            Caption='Description';            
             DataClassification = TobeClassified; 
        }

        field(3; "Amount"; Decimal)
        {
            Caption='Amount';
             DataClassification = TobeClassified; 
        }

        field(5; "Charges G_L Account"; Code[20])
        {
            Caption='Charges GL Account';
            TableRelation="G/L Account";
             DataClassification = TobeClassified; 
        }

        field(6; "Collateral Type"; Option)
        {
            Caption='Collateral Type';
            OptionMembers="Log Book","Land and Building","Share Guarantee","Checkoff","Staff Guarantee","HASL","Guarantor";
             DataClassification = TobeClassified; 
        }

        field(7; "Additional Annual Charge"; Decimal)
        {
            Caption='Additional Annual Charge';
             DataClassification = TobeClassified; 
        }

        field(8; "Is Chattel?"; Boolean)
        {
            Caption='Is Chattel?';
             DataClassification = TobeClassified; 
        }

        field(9; "Is Tracking ?"; Boolean)
        {
            Caption='Is Tracking ?';
             DataClassification = TobeClassified; 
        }

        field(10; "Is Incharge?"; Boolean)
        {
            Caption='Is Incharge?';
             DataClassification = TobeClassified; 
        }        
    }

    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
        
    }    
}
