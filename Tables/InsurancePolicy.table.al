table 71706586 "Insurance Policy"
{
    DataClassification = ToBeClassified;    

    fields
    {       

        field(1; "No"; Code[20]) 
        {
            Caption = 'No';
        }
        field(3; "Collateral ID"; Code[100]) 
        {
            Caption = 'Collateral ID';
            TableRelation="Collateral Register";
        }
        field(4; "Customer Name"; Code[100]) 
        {
            Caption = 'Customer Name';            
        }
        field(5; "Collateral Desc"; Text[500]) 
        {
            Caption = 'Collateral Description';
        }
        field(6; "Loan Amount"; Decimal) 
        {
            Caption = 'Loan Amount';
        }
        field(7; Product; Code[100]) 
        {
            Caption = 'Product';
            TableRelation="Product Types";
        }
        field(8; Make; Code[100]) 
        {
            Caption = 'Make';
        }
        field(9; "Engine No"; Code[100])
        {
            Caption = 'Engine No';
        }
        field(10; "Is Insured"; Boolean) 
        {
            Caption = 'Is Insured';
        }
        field(11; "Insurance Policy"; Option) 
        {
            Caption = 'Insurance Policy';
            OptionMembers="",Comprehensive,TPO;
        }
        field(12; "Insurance Policy No:"; Code[100]) 
        {
            Caption = 'Insurance Policy Number';
        }
        field(13; "Insurance Company"; Code[100]) 
        {
            Caption = 'Insurance Company';
        }
        field(14; "Expiry date"; DateTime) 
        {
            Caption = 'Expiry Date';
        }
        field(15; "Customer No"; Code[20]) 
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
        field(17; "Start Date"; DateTime) 
        {
            Caption = 'Start Date';
        }
        field(18; "Insurance Vendor"; Code[20]) 
        {
            Caption = 'Insurance Vendor';
        }
        field(19; "Insurance Vendor Name"; Code[50]) 
        {
            Caption = 'Insurance Vendor Name';
        }        

    }

   keys {
        key(PK; No)
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
           "No":=NoMgt.GetNextNo(Setup."Insurance Policy Nos",WorkDate,true);
        end;        
    end;
}
