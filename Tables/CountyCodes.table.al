table 71706584 "County Codes"
{
    DataClassification = TobeClassified;  
    LookupPageId="County Codes";
    DrillDownPageId="County Codes"; 
    DataCaptionFields = "County Code", "County Name";   
    fields
    {      

        field(1; "County Code"; Code[10])
        {
            Caption='County Code';            
             DataClassification = TobeClassified; 
        }
        field(2; "County Name";Text[50])
        {
            Caption='County Name';
             DataClassification = TobeClassified; 
        }        
    }

    keys
    {
        key(PK; "County Code")
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
        if "County Code"='' then 
        begin
           Setup.Get();
           "County Code":=NoMgt.GetNextNo(Setup."County Codes Nos",WorkDate,true);
        end;        
    end;
}