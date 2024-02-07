table 71706603 "RO Re-assignment"
{
    DataClassification = TobeClassified;   

    fields
    {        
        field(1; "RO No"; Code[50])
        {
            Caption='RO No';
            DataClassification = TobeClassified; 
            
        }
        field(3; "Customer No"; Code[20])
        {
            Caption='Customer No';
            TableRelation=Customer;   
             trigger OnValidate()
            var
                recCust: Record Customer;                
            begin
                if  xRec."Customer No"<>Rec."Customer No" then 
                begin
                    
                    if recCust.Get("Customer No") then begin
                       "Customer Name":=recCust.Name;                
                    end;                    
                end;                
            end;   
        }
        field(4; "Customer Name"; Text[100])
        {
            Caption='Customer Name';
            DataClassification = TobeClassified;   
        }
        field(6; "Current Relationship Officer"; Code[50])
        {
            Caption='Current Relationship Officer';
            TableRelation="Dimension Value".Code;
            DataClassification = TobeClassified;   
        }
        field(7; "Current RO Name"; Text[100])
        {
            Caption='Current RO Name';            
            DataClassification = TobeClassified;   
        }        
        field(9; "New RO Name"; Text[100])
        {
            Caption='New RO Name';
            TableRelation="Dimension Value".Code;
            DataClassification = TobeClassified;   
        }
        field(10; "Status"; Option)
        {
            Caption='Status';
            OptionMembers="Open","Pending","Closed";
            DataClassification = TobeClassified;   
        }
        field(11; "Transaction Date"; DateTime)
        {
           Caption='Transaction Date';
           DataClassification = TobeClassified;   
        }
    }

    keys
    {
        key(PK; "RO No")
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
        if "RO No"='' then 
        begin
           Setup.Get();
           "RO No":=NoMgt.GetNextNo(Setup."RO Transfers",WorkDate,true);
        end;        
    end;
}





