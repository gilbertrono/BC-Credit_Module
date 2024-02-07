table 71706611 Employers
{
    Caption = 'Employers';
    LookupPageId=Employers;
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
        }
        field(27; Balance; Decimal)
        {
            Caption = 'Balance';
            DataClassification = ToBeClassified;
        }
        field(28; Gender; Option)
        {
            Caption = 'Gender';
            OptionMembers="","Male","Female","Others";
            DataClassification = ToBeClassified;
        }
        field(3; "Mobile Phone No."; Text[50])
        {
            Caption = 'Office Telephone';
            DataClassification = ToBeClassified;
        }
        field(4; Address; Text[50])
        {
            Caption = 'Address';
            DataClassification = ToBeClassified;
        }
        field(5; City; Text[50])
        {
            Caption = 'City';
            DataClassification = ToBeClassified;
        }
        field(6; Email; Text[50])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
        }
        field(7; Blocked; Option)
        {
            Caption = 'Blocked';
            OptionMembers="","Ship","Invoice","All";
        }
        field(8; "Identification Doc No"; Code[10])
        {
            Caption='Identification Doc No';
            DataClassification = TobeClassified;
        }
        field(9; "Passport No"; Code[10])
        {
            Caption='Passport No';
            DataClassification = TobeClassified;
        }
        field(10; "P.I.N Code"; Code[12])
        {
            Caption='P.I.N Code';
            DataClassification = TobeClassified;
        }
        field(11; "Identification Doc Type"; Option)
        {            
            Caption='Identification Doc Type';
            OptionMembers="","Identification Card","Passport";           
        }

        field(12; "Relationship Officer"; Code[20])
        {
            Caption='Relationship Officer';
            DataClassification = TobeClassified;
            TableRelation="Dimension Value".Code;             
        }
        field(13; "Relationship Officer Name"; Code[100])
        {
            Caption='Relationship Officer Name';
            DataClassification = TobeClassified;
        }
        field(14; "Employer Name"; Text[50])
        {
            Caption='Employer Name';
            DataClassification = TobeClassified;
        }
        field(15; "Branch Code"; Code[20])
        {
            Caption='Branch Code';
           DataClassification = TobeClassified;
           TableRelation="Dimension Value".Code;           
        }
        field(16; "Employer Code"; Code[20])
        {
            Caption='Employer Code';
            DataClassification = TobeClassified;            
        } 
        field(17; "Home Address"; Code[50])
        {
            Caption='Home Address';
            DataClassification = TobeClassified;
        }
        field(18; "No of Male Employees"; Integer)
        {
            Caption='No of Male Employees'; 
            DataClassification = TobeClassified;                       
        } 
        field(19; "No of Female Employees"; Integer)
        {
            Caption='No of Female Employees'; 
            DataClassification = TobeClassified;                       
        } 
        field(20; "No of Employees"; Integer)
        {
            Caption='No of Employees'; 
            DataClassification = TobeClassified;                       
        }  
        field(21; "Defaulter Employer"; Boolean)
        {
            Caption='Defaulter Employer'; 
            DataClassification = TobeClassified;                       
        }    
        field(22; "Enforce Employer 2"; Boolean)
        {
            Caption='Enforce Employer 2'; 
            DataClassification = TobeClassified;                       
        }  
        field(23; "Office Telephone Number"; Text[50])
        {
            Caption='Office Telephone Number'; 
            DataClassification = TobeClassified;                       
        }  
        field(24; "Member No"; Text[50])
        {
            Caption='Member No'; 
            TableRelation=Customer;
            DataClassification = TobeClassified;                       
        } 
        field(25; "Customer Posting Group"; Text[50])
        {
            Caption='Customer Posting Group'; 
            TableRelation="Customer Posting Group";
            DataClassification = TobeClassified;                       
        } 
          field(26; "Member Status"; Option)
        {
            Caption='Member Status'; 
            OptionMembers="","New","Active","Dormant","Frozen","Withdrawal Application","Withdrawn","Deceased","Defaulter","Closed";
            DataClassification = TobeClassified;                       
        } 
        field(29; "Phone No"; Text[50])
        {
            Caption='Phone No'; 
            DataClassification = TobeClassified;                       
        } 
        field(30; "Post Code"; Code[50])
        {
            Caption='Post Code';
            TableRelation="Post Code"; 
            DataClassification = TobeClassified;                       
        }
        field(31; "Last Date Modified"; Date)
        {
            Caption='Last Date Modified';
            DataClassification = TobeClassified;
        } 
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
    var
        myInt: Integer;
    
    trigger OnInsert()var
    Setup:Record "Credit No.Series";
    NoMgt: Codeunit NoSeriesManagement;
   
    begin
        if "No."='' then 
        begin
           Setup.Get();
           "No.":=NoMgt.GetNextNo(Setup."Employer Nos",WorkDate,true);
        end;        
    end;
}
