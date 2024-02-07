table 71706587 "Loan Application Docs"
{
    DataClassification = TobeClassified;    

    fields
    { 
        field(1; "Document Type ID"; Code[20])
        {
            Caption='Document Type ID';
            DataClassification = TobeClassified; 
        }
        field(2; "Loan Product Type"; Code[20])
        {
            Caption='Loan Product Type';
            DataClassification = TobeClassified; 
        }
        field(3; "Document Description"; Text[100])
        {
            Caption='Document Description';
            DataClassification = TobeClassified; 
        }
        field(4; "Mandatory"; Boolean)
        {
            Caption='Mandatory';
            DataClassification = TobeClassified; 
        }
        field(7; "Provided By Customer"; Option)
        {
            Caption='Provided By Customer';
            OptionMembers=No,Yes;
            DataClassification = TobeClassified; 
        }
        field(8; "Exemption Given"; Boolean)
        {
            Caption='Exemption Given';
            DataClassification = TobeClassified; 
        }
        field(9; "Exemption Date_Time"; DateTime)
        {
            Caption='Exemption Date_Time';
            DataClassification = TobeClassified; 
        }
        field(10; "Exemption By"; Code[50])
        {
            Caption='Exemption By';
            DataClassification = TobeClassified; 
        }
        field(11; "Document Category"; Option)
        {
            Caption='Document Category';
            OptionMembers="",KYC,"Proof of Income",Security,School,Business,"Proof of Purpose";
            DataClassification = TobeClassified; 
        }
        field(12; "Document Type"; Code[20])
        {
            Caption='Document Type';
            DataClassification = TobeClassified; 
        }
        field(13; "Allow Exemption"; Option)
        {
            Caption='Allow Exemption';
            OptionMembers=No,Yes;
            DataClassification = TobeClassified; 
        }
        field(14; "Exemption Reasons"; Text[100])
        {
            Caption='Exemption Reasons';
            DataClassification = TobeClassified; 
        }
       
    }

    keys
    {
        key(PK; "Document Type ID")
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
        if "Document Type ID"='' then 
        begin
           Setup.Get();
           "Document Type ID":=NoMgt.GetNextNo(Setup."Loan Application Document Nos",WorkDate,true);
        end;        
    end;
}

