table 71706617 "Loan Purpose"
{
    Caption = 'Loan Purpose';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Purpose ID"; Code[50])
        {
            Caption = 'Purpose ID';
            DataClassification = ToBeClassified;
        }
        field(2; "Purpose Description"; Text[100])
        {
            Caption = 'Purpose Description';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Purpose ID")
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
        if "Purpose ID"='' then 
        begin
           Setup.Get();
           "Purpose ID":=NoMgt.GetNextNo(Setup."Loan Purpose Nos",WorkDate,true);
        end;        
    end;
}
