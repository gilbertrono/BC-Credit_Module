table 71706581 "Customer Request"
{
    DataClassification = ToBeClassified;
    
    fields
    {        
        field(1; "Request No"; Code[20])
        {
            Caption='Request No';
            DataClassification = ToBeClassified;            
        }
        field(2; "Customer No"; Code[20])
        {
            Caption='Customer No';
            TableRelation=Customer;
            DataClassification = ToBeClassified;
        }
        field(3; "Request Type"; Option)
        {
            Caption='Request Type';
            OptionMembers="Hold Cheque","Disbursement","Customer Profile","Clear Loan","Credit Limit";
            DataClassification = ToBeClassified;
        }
        field(5; "Request Date"; DateTime)
        {
            Caption='Request Date';
            DataClassification = ToBeClassified;
        }
        field(6; "Loan No"; Code[20])
        {
            Caption='Loan No';
            DataClassification = ToBeClassified;
            TableRelation=Loans;
        }
        field(7; "Cheque No"; Code[20])
        {
            Caption='Cheque No';
            DataClassification = ToBeClassified;
        }
        field(8; "Payment Mode"; Option)
        {
            Caption='Payment Mode';
            DataClassification = ToBeClassified;
            OptionMembers="Mpesa","EFT","RTGS";
        }  
        field(9; "Effective Date"; Date)
        {
            Caption='Effective Date';
            DataClassification = ToBeClassified;            
        }
        field(10; Status; Option)
        {
            Caption='Status';
            OptionMembers="Applied","Approved","Declined";
            DataClassification = ToBeClassified;
        }
        field(11; Comments; Text[100])
        {
            Caption='Comments';
            DataClassification = ToBeClassified;
        }
       
    }

    keys
    {
        key(PK; "Request No")
        {
            Clustered=True;
        }        
    }
    var
        myInt: Integer;
    
    trigger OnInsert()var
    Setup:Record "Credit No.Series";
    NoMgt: Codeunit NoSeriesManagement;
   
    begin
        if "Request No"='' then 
        begin
           Setup.Get();
           "Request No":=NoMgt.GetNextNo(Setup."Customer Request Nos",WorkDate,true);
        end;        
    end;
}
