table 71706619 "Loan Product Charges"
{
    Caption = 'Loan Product Charges';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Product ID"; code[50])
        {
            Caption = 'Product ID';
            DataClassification = ToBeClassified;

        }
        field(2; Code; Code[20])
        {
            TableRelation = "Product Charges".Code;
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                prodcharges: Record "Product Charges";
            begin
                if prodcharges.Get(Code) then begin
                    Description := prodcharges.Description;
                    "Amount Percentage" := prodcharges."Amount Percentage";
                    "Charges G/L Account" := prodcharges."Charges G/L Account";
                end;

            end;
        }
        field(3; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Amount Percentage"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Use Percentage"; Boolean)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            var
                AmountPercentage: Decimal;
            begin
                AmountPercentage := "Amount Percentage";
                if "Use Percentage" = true then begin
                    if ("Amount Percentage" >= 0) and ("Amount Percentage" <= 100) then begin
                        AmountPercentage := "Amount Percentage" / 100;
                        "Amount Percentage" := AmountPercentage;
                    end
                    else begin
                        Error('I cannot divide by zero');
                    end;
                end;
            end;
        }
        field(6; "Charges G/L Account"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "G/L Account";
        }
        field(7; "Minimum Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Maximum Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(9; Prorate; Option)
        {
            OptionMembers = "";
            DataClassification = ToBeClassified;
        }
        field(10; "Effect Excise Duty"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Division Factor"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Accrue Charges"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Charging Option"; Option)
        {
            OptionMembers = "On Approved Amount","On Net Amount";
            DataClassification = ToBeClassified;
        }
        field(14; "Charge Type"; Option)
        {
            OptionMembers = "General","Top up","External Loan","Collateral";
            DataClassification = ToBeClassified;
        }
        field(15; Factor; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Nature of Computation"; Option)
        {
            OptionMembers = "None","Devide","Mutiply";
            DataClassification = ToBeClassified;
        }
        field(17; "Collateral Type"; Option)
        {
            OptionMembers = "";
            DataClassification = ToBeClassified;
        }
        field(18; "Disbursement Mode"; Option)
        {
            OptionMembers = "","MPESA","RTGS","EFT";
            DataClassification = ToBeClassified;
        }
        field(19; "Additional Annual"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(20; No; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
    }
    keys
    {
        key(PK; No, "Product ID")
        {
            Clustered = true;
        }
        key(key1; "Product ID")
        {

        }
        key(key2; Code) { }
    }
}
