table 71706593 "Loan Documents"
{
    DataClassification = ToBeClassified;    

    fields
    { 
        field(2; "Document Type ID"; Code[20])
        {
            Caption='Document Type ID';
        }

        field(3; "Document Description"; Text[100])
        {
            Caption='Document Description';
        }

        field(4; "Document Category"; Option)
        {
            Caption='Document Category';
            OptionMembers="KYC","Proof of Income","Security","School","Business","Proof of Purpose";
        }

        field(5; "No_ Series"; Code[20])
        {
            Caption='No_ Series';
        }

        field(6; "Document Type"; Code[20])
        {
           Caption='Document Type';
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
           "Document Type ID":=NoMgt.GetNextNo(Setup."Loan Document Nos",WorkDate,true);
        end;        
    end;
}
