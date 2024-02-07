table 71706605 "Transaction Charges"
{
    DataClassification = TobeClassified;   

    fields
    { 
        field(1; "Trans Type"; Code[20])
        {
            Caption='Transaction Type';
            DataClassification = TobeClassified;   
        }

        field(2; "Description"; Code[50])
        {
            Caption='Description';
            DataClassification = TobeClassified;   
        }

        field(3; "Charge Code"; Code[20])
        {
            Caption='Charge Code';
            DataClassification = TobeClassified;   
        }

        field(4; "Charge Type"; Option)
        {
            Caption='Charge Type';
            DataClassification = TobeClassified;  
            OptionMembers="","Flat Amount","% of Amount","Staggered"; 
        }

        field(6; "Charge Amount"; Decimal)
        {
            Caption='Charge Amount';
            DataClassification = TobeClassified;   
        }

        field(7; "Percentage of Amount"; Decimal)
        {
            Caption='Percentage of Amount';
            DataClassification = TobeClassified;   
        }

        field(8; "G_L Account"; Code[20])
        {
            Caption='G_L Account';
            DataClassification = TobeClassified;   
            TableRelation="G/L Account";
        }

        field(9; "Minimum Amount"; Decimal)
        {
            Caption='Minimum Amount';
            DataClassification = TobeClassified;   
        }

        field(10; "Maximum Amount"; Decimal)
        {
            Caption='Maximum Amount';
            DataClassification = TobeClassified;   
        }

        field(11; "Staggered Charge Code"; Code[20])
        {
            Caption='Staggered Charge Code';
            DataClassification = TobeClassified;   
        }

        field(12; "Transaction Charge Category"; Option)
        {
            Caption='Transaction Charge Category';
            OptionMembers="","Hold Cheque","Disbursement","Profile";
            DataClassification = TobeClassified;   
        }

        field(13; "Recover Excise Duty"; Boolean)
        {
            Caption='Recover Excise Duty';
            DataClassification = TobeClassified;   
        }

        field(14; "Disbursement Mode"; Option)
        {
            Caption='Disbursement Mode';
            OptionMembers="","MPESA","EFT","RTGS";
            DataClassification = TobeClassified;   
        }       
    }

    keys
    {
        key(PK; "Trans Type", "Description")
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
        if "Trans Type"='' then 
        begin
           Setup.Get();
           "Trans Type":=NoMgt.GetNextNo(Setup."Transaction Charges",WorkDate,true);
        end;        
    end;
}