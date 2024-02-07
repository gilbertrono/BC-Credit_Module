table 71706616 "Other Commitments Clearence"
{
    Caption = 'Other Commitments Clearence';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; OCC_No; Integer)
        {
            Caption = 'OCC_No';
            AutoIncrement=true;
        }
        field(13; "Loan No." ; Code[20])
        {
            Caption='Loan No.';
            TableRelation=Loans;
            DataClassification = ToBeClassified;
        }
        field(2; "Vendor No." ; Code[20])
        {
            TableRelation=Vendor;
             trigger OnValidate()
            var
                recVend: Record Vendor;                
            begin
                if  xRec."Vendor No."<>Rec."Vendor No." then 
                begin
                    
                    if recVend.Get("Vendor No.") then begin
                        "Vendor Name":=recVend.Name;                
                    end;                    
                end;                
            end; 
        }
        field(3; "Description" ; Text[100])
        {
            Caption='Description';
            DataClassification = ToBeClassified;
        }
        field(4; "Payee" ; Text[50])
        {
            Caption='Payee';
            DataClassification = ToBeClassified;
        }
        field(5; "Amount" ; Decimal)
        {
            Caption='Amount';
            DataClassification = ToBeClassified;
        }
        field(6; "Bankers Cheque No." ; Code[20])
        {
            Caption='Bankers Cheque No.';
            DataClassification = ToBeClassified;
        }
        field(7; "Bankers Cheque No. 2" ; Code[20])
        {
            Caption='Bankers Cheque No. 2';
            DataClassification = ToBeClassified;
        }
        field(8; "Bankers Cheque No. 3" ; Code[20])
        {
            Caption='Bankers Cheque No. 3';
            DataClassification = ToBeClassified;
        }
        field(9; "Batch No." ; Code[20])
        {
            Caption='Batch No.';
            DataClassification = ToBeClassified;
        }
        field(10; "Affects 2/3 Rule" ; Boolean)
        {
            Caption='Affects 2/3 Rule';
            DataClassification = ToBeClassified;
        }
        field(11; "Monthly Deduction" ; Decimal)
        {
            Caption='Monthly Deduction';
            DataClassification = ToBeClassified;
        }
        field(12; "Vendor Name" ; Text[50])
        {
            Caption='Vendor Name';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; OCC_No)
        {
            Clustered = true;
        }
    }
}
