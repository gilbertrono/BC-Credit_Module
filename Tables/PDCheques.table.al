table 71706597 "PD Cheques"
{
      DataClassification = ToBeClassified;    

    fields
    {        
        field(1; "Line No"; Code[20])
        {
             Caption = 'Line No';
             DataClassification = ToBeClassified;   
        }
        field(3; "No"; Code[20])
        {
             Caption = 'No';
             DataClassification = ToBeClassified;   
        }
        field(4; "Drawer Name"; Code[50])
        {
             Caption = 'Drawer Name';
             DataClassification = ToBeClassified;   
        }
        field(5; "Issuer Bank"; Code[20])
        {
             Caption = 'Issuer Bank';                       
        }
        field(6; "Cheque No"; Code[20])
        {
             Caption = 'Cheque No';
             DataClassification = ToBeClassified;   
        }
        field(7; "Amount"; Decimal)
        {
             Caption = 'Amount';
             DataClassification = ToBeClassified;   
        }
        field(8; "Customer No"; Code[20])
        {
             Caption = 'Customer No';
              TableRelation=Customer;    
        }        
        field(9; "Issuer Bank Branch Code"; Code[20])
        {
             Caption = 'Issuer Bank Branch Code';             
             TableRelation="Bank Codes";           
            trigger OnValidate()
            var
                recBC: Record "Bank Codes";                
            begin
                if  xRec."Issuer Bank Branch Code"<>Rec."Issuer Bank Branch Code" then 
                begin
                    
                    if recBC.Get("Issuer Bank Branch Code") then begin                        
                        "Issuer Bank Branch Name":=recBC."Branch Name"; 
                        "Issuer Bank Branch Code":=recBC."Bank Branch Code"; 
                         "Issuer Bank":=recBC."Bank Code";            
                    end;                    
                end;                
            end;    
        }
        field(10; "Issuer Bank Branch Name"; Text[100])
        {
             Caption = 'Issuer Bank Branch Name';
             DataClassification = ToBeClassified;   
        }
        field(11; "Cheque Status"; Text[50])
        {
             Caption = 'Cheque Status';
             DataClassification = ToBeClassified;   
        }
        field(12; "Due Date"; DateTime)
        {
             Caption = 'Due Date';
             DataClassification = ToBeClassified;   
        }
        field(13; "Hold"; Boolean)
        {
             Caption = 'Hold';
             DataClassification = ToBeClassified;   
        }
        field(14; "Reason for Holding"; Text[100])
        {
             Caption = 'Reason for Holding';
             DataClassification = ToBeClassified;   
        }
        field(15; "Approval Status"; Integer)
        {
             Caption = 'Approval Status';
             DataClassification = ToBeClassified;   
        }
        field(16; "Bank Cheque"; Boolean)
        {
             Caption = 'Bank Cheque';
             DataClassification = ToBeClassified;   
        }
        field(17; "Receiving Bank No"; Code[20])
        {
             Caption = 'Receiving Bank No';
             DataClassification = ToBeClassified;   
        }
        field(18; "Banking Date"; DateTime)
        {
             Caption = 'Banking Date';
             DataClassification = ToBeClassified;   
        }
        field(19; "Banked By"; Code[100])
        {
             Caption = 'Banked By';
             DataClassification = ToBeClassified;   
        }
        field(20; "Date Received"; DateTime)
        {
             Caption = 'Date Received';
             DataClassification = ToBeClassified;   
        }
        field(21; "Loan No"; Code[20])
        {
             Caption = 'Loan No';
             DataClassification = ToBeClassified;   
        }
        field(22; "Maturity Date"; DateTime)
        {
             Caption = 'Maturity Date';
             DataClassification = ToBeClassified;   
        }        
    }
 keys
    {
        key(PK; "Line No")
        {
            Clustered = true;
        }
    }
}

