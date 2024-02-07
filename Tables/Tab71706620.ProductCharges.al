table 71706620 "Product Charges"
{
    Caption = 'Product Charges';
    DataClassification = ToBeClassified;
    LookupPageId = "Product Charges";

    fields
    {
        field(1; "Code"; Code[50])
        {
            Caption = 'Code';
            DataClassification = ToBeClassified;
            //AutoIncrement = true;
        }
        field(2; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Amount Percentage"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Use Percentage"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Minimum Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Maximum Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Charges G/L Account"; Code[50])
        {
            TableRelation = "G/L Account";
            DataClassification = ToBeClassified;
        }
        field(8; Prorate; Option)
        {
            OptionMembers = "";
            DataClassification = ToBeClassified;
        }
        field(9; "Effect Excise Duty"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Charging Option"; Option)
        {
            OptionMembers = "On Approved Amount","On Net Amount";
            DataClassification = ToBeClassified;
        }
        field(11; "Charge Type"; Option)
        {
            OptionMembers = "General","Top up","External Loan","Collateral";
            DataClassification = ToBeClassified;
        }
        field(12; Factor; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Nature of Computation"; Option)
        {
            OptionMembers = "None","Devide","Mutiply";
            DataClassification = ToBeClassified;
        }
        field(14; "Collateral Type"; Option)
        {
            OptionMembers = "";
            DataClassification = ToBeClassified;
        }
        field(15; "Disbursement Mode"; Option)
        {
            OptionMembers = "","MPESA","RTGS","EFT";
            DataClassification = ToBeClassified;
        }
        field(16; "Additional Annual %"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Division Factor"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }
    var
        myInt: Integer;

    trigger OnInsert()
    var
        Setup: Record "Credit No.Series";
        NoMgt: Codeunit NoSeriesManagement;
        LoansR: record Loans;
        creditmanagement: Codeunit "Credit Management";

    begin
        if Code = '' then begin
            Setup.Get();
            "Code" := NoMgt.GetNextNo(Setup."Loan Nos", WorkDate, true);
        end;
    end;
}
