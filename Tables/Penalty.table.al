table 71706599 "Penalty"
{
    DataClassification = TobeClassified;

    fields
    {
        field(1; "Entry No"; Integer)
        {              
            Caption = 'Entry No';
            AutoIncrement=true;
            DataClassification = TobeClassified;

        }
        field(2; "Customer No"; Code[50])
        {            
            Caption = 'Customer No';
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
        field(3; "Customer Name"; Text[100])
        {            
            Caption = 'Customer Name';
            DataClassification = TobeClassified;
        }
        field(4; "Loan No"; Code[50])
        {            
            Caption = 'Loan Number';
            TableRelation=Loans;
            DataClassification = TobeClassified;
        }
        field(5; "Penalty Date"; DateTime)
        {            
            Caption = 'Penalty Date';
            DataClassification = TobeClassified;
        }
        field(6; "Amount"; Decimal)
        {            
            Caption = 'Penalty Amount';
            DataClassification = TobeClassified;
        }
        field(7; "Posted"; Boolean)
        {            
            Caption = 'Posted';
            DataClassification = TobeClassified;
        }
        field(8; "Penalty Receivable GL"; Code[50])
        {            
            Caption = 'Penalty Receivable GL';
           TableRelation="G/L Account";
        }
    }

    keys
    {
        key(PK; "Entry No")
        {
            Clustered = true;
        }
    }   
}
