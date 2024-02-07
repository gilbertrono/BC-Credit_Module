table 71706583 "Guarantors"
{
    DataClassification = TobeClassified;    

    fields
    {        
        field(1; "No"; Code[20])
        {            
            Caption = 'Guarantor No';
        }
        field(3; "Surname"; Text[50])
        {            
            Caption = 'Surname';
            DataClassification = TobeClassified; 
        }
        field(4; "First Name"; Text[50])
        {            
            Caption = 'First Name';
            DataClassification = TobeClassified; 
        }
        field(5; "Last Name"; Text[50])
        {            
            Caption = 'Last Name';
            DataClassification = TobeClassified; 
        }
        field(6; "Gender"; Option)
        {            
            Caption = 'Gender';
            OptionMembers="Male","Female","Other";
        }
        field(7; "ID No"; Code[10])
        {            
            Caption = 'ID No';
            DataClassification = TobeClassified; 
        }
        field(8; "Date of Birth"; DateTime)
        {            
            Caption = 'Date of Birth';
            DataClassification = TobeClassified; 
        }
        field(9; "Occupation"; Option)
        {            
            Caption = 'Occupation';
            OptionMembers="Employed","Self Employed","Unemployed";
        }
        field(10; "Business Location"; Text[100])
        {            
            Caption = 'Business Location';
            DataClassification = TobeClassified; 
        }
        field(11; "Work Business Phone"; Text[20])
        {            
            Caption = 'Business Phone';
            DataClassification = TobeClassified; 
        }
        field(12; "Alteranative Phone"; Text[20])
        {            
            Caption = 'Alternative Phone';
            DataClassification = TobeClassified; 
        }
        field(13; "Residential Location"; Text[200])
        {            
            Caption = 'Residential Location';
            DataClassification = TobeClassified;             
        }
        field(14; "Postal Address"; Text[100])
        {            
            Caption = 'Postal Address';
            DataClassification = TobeClassified; 
        }
        field(15; "Post Code"; Code[20])
        {            
            Caption = 'Post Code';
            DataClassification = TobeClassified; 
        }
        field(16; "Marital Status"; Option)
        {            
            Caption = 'Marital Status';
            OptionMembers="",Married,Single,Divorced;
            DataClassification = TobeClassified; 
        }
        field(17; "Security Pledged"; Text[100])
        {            
            Caption = 'Security Pledged';
            DataClassification = TobeClassified; 
        }
        field(18; "Personal Phone"; Text[20])
        {            
            Caption = 'Personal Phone';
            DataClassification = TobeClassified; 
        }
        field(20; "Name"; Text[100])
        {            
            Caption = 'Name';
            DataClassification = TobeClassified; 
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
    
    trigger OnInsert()var
    Setup:Record "Credit No.Series";
    NoMgt: Codeunit NoSeriesManagement;
   
    begin
        if "No"='' then 
        begin
           Setup.Get();
           "No":=NoMgt.GetNextNo(Setup."Loan Guarantors",WorkDate,true);
        end;        
    end;
}
