table 71706598 "PD Cheque Register"
{
    DataClassification=TobeClassified;

    fields
    {     

        field(1; "No"; Code[20])
        {
             Caption = 'No';
             DataClassification=TobeClassified;             
        }
        field(3; Status; Option)
        {
             Caption = 'Status';
             OptionMembers=Open,"Pending Approval",Approved;
             DataClassification=TobeClassified;
        }
        field(4; "Approval Date"; DateTime)
        {
             Caption = 'Approval Date';
             DataClassification=TobeClassified;
        }
        field(5; "Customer No"; Code[10])
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
        field(6; "Customer Name"; Text[100])
        {
             Caption = 'Customer Name';               
             DataClassification=TobeClassified;
        }
        field(7; "Bank Account"; Code[20])
        {
             Caption = 'Bank Account';
             DataClassification=TobeClassified;
        }
        field(8; "Department"; Code[20])
        {
             Caption = 'Department';
             DataClassification=TobeClassified;
        }
        field(10; "Transaction Date"; DateTime)
        {
             Caption = 'Transaction Date';
             DataClassification=TobeClassified;
        }
        field(12; "Loan No"; Code[20])
        {
             Caption = 'Loan No';
             TableRelation=Loans;
             DataClassification=TobeClassified;
        }
        field(13; "Approved Amount"; Decimal)
        {
             Caption = 'Approved Amount';
             DataClassification=TobeClassified;
        }
        field(16; "Branch Code"; Code[50])
        {
             Caption = 'Branch Code';
             TableRelation="Dimension Value".Code;
             DataClassification=TobeClassified;
        }
         field(17; "Relationship Officer"; Code[50])
        {
             Caption = 'Relationship Officer';
             TableRelation="Dimension Value".Code;
             DataClassification=TobeClassified;
        }
        field(14; "Loan Product Type"; Code[50])
        {
             Caption = 'Loan Product Type';
             TableRelation="Product Types";
             DataClassification=TobeClassified;
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
           "No":=NoMgt.GetNextNo(Setup."PD Cheques Nos",WorkDate,true);
        end;        
    end;
}