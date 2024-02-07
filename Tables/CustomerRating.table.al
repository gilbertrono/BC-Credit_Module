table 71706580 "Customer Rating"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Log ID"; Code[20])
        {
            Caption='Log ID';
            DataClassification = ToBeClassified;
        }

        field(2; "Customer No"; Code[20])
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
        field(3; "Customer Name"; Text[50])
        {
            Caption='Customer Name';
            DataClassification = ToBeClassified;
        }       

        field(4; Rating; Integer)
        {
            Caption='Rating';
            DataClassification = ToBeClassified;
        }

        field(5; "Date & Time"; DateTime)
        {
            Caption='Date & Time';
            DataClassification = ToBeClassified;
        }
        
    }

    keys
    {
        key(PK; "Log ID")
        {
            Clustered=true;
        }
   }
    var
        myInt: Integer;
    
    trigger OnInsert()var
    Setup:Record "Credit No.Series";
    NoMgt: Codeunit NoSeriesManagement;
   
    begin
        if "Log ID"='' then 
        begin
           Setup.Get();
           "Log ID":=NoMgt.GetNextNo(Setup."Customer Rating Nos",WorkDate,true);
        end;        
    end;
}