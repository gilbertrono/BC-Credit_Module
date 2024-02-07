table 71706615 "Loan Top Up"
{
    Caption = 'Loan Top Up';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Loan TopUp_No"; Code[20])
        {
            Caption = 'Loan TopUp_No';
            TableRelation=Loans;
            DataClassification = ToBeClassified;
        }        
        field(2; "Client Code" ; Code[20])
        {
            Caption = 'Client Code';
            DataClassification = ToBeClassified;
        }
        field(3; "Loan Type" ; Code[20])
        {
            Caption = 'Loan Type';
            DataClassification = ToBeClassified;
        }
        field(4; "Principle Top Up" ; Decimal)
        {
            Caption = 'Principle Top Up';
            DataClassification = ToBeClassified;
        }
        field(5; "Interest Top Up" ; Decimal)
        {
            Caption = 'Interest Top Up';
            DataClassification = ToBeClassified;
        }
        field(6; "Total Top Up" ; Decimal)
        {
            Caption = 'Total Top Up';
            DataClassification = ToBeClassified;
        }
        field(7; "Monthly Repayment" ; Decimal)
        {
            Caption='Monthly Repayment';
            DataClassification = ToBeClassified;
        }
        field(8; "Interest Paid" ; Decimal)
        {
           Caption = 'Interest Paid';
            DataClassification = ToBeClassified;
        }
        field(9; "Outstanding Balance" ; Decimal)
        {
            Caption = 'Outstanding Balance';
            DataClassification = ToBeClassified;
        }
        field(10; "Interest Rate" ; Decimal)
        {
            Caption = 'Interest Rate';
            DataClassification = ToBeClassified;
        }
        field(11; "ID No." ; Code[20])
        {
            Caption = 'ID No.';
            DataClassification = ToBeClassified;
        }
        field(12; "Commission" ; Decimal)
        {
            Caption = 'Commission';
            DataClassification = ToBeClassified;
        }
        field(13; "One Month Interest" ; Decimal)
        {
            Caption = 'One Month Interest';
            DataClassification = ToBeClassified;
        }
        field(14; "Insurance Rebate" ; Decimal)
        {
            Caption = 'Insurance Rebate';
            DataClassification = ToBeClassified;
        }
        field(15; "Loan Account" ; Code[20])
        {
            Caption = 'Loan Account';
            DataClassification = ToBeClassified;
        }
        field(16; "Outstanding Bill" ; Decimal)
        {
            Caption = 'Outstanding Bill';
            DataClassification = ToBeClassified;
        }
        field(17; "Additional Top Up Commission" ; Decimal)
        {
            Caption = 'Additional Top Up Commission';
            DataClassification = ToBeClassified;
        }
        field(18; "Loan Span" ; Integer)
        {
            Caption = 'Loan Span';
            DataClassification = ToBeClassified;
        }
        field(19; "Untransferred Interest" ; Decimal)
        {
            Caption = 'Untransferred Interest';
            DataClassification = ToBeClassified;
        }
        field(20; "Penalty" ; Decimal)
        {
            Caption = 'Penalty';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Loan TopUp_No")
        {
            Clustered = true;
        }
    }
     /*var
        myInt: Integer;
    
    trigger OnInsert()var
    Setup:Record "Credit No.Series";
    NoMgt: Codeunit NoSeriesManagement;
   
    begin
        if "Loan TopUp_No"='' then 
        begin
           Setup.Get();
           "Loan TopUp_No":=NoMgt.GetNextNo(Setup."Loan Top Up Nos",WorkDate,true);
        end;        
    end;*/
}
