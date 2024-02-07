page 71706588 "Insurance Policy"
{
    Caption = 'Insurance Policy';
    PageType = Card;
    DeleteAllowed=false;
    SourceTable = "Insurance Policy";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No field.';
                }
                field("Collateral ID"; Rec."Collateral ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Collateral ID field.';
                }
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer No field.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Name field.';
                }
                field("Collateral Desc"; Rec."Collateral Desc")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Collateral Description field.';
                }
                field("Insurance Vendor"; Rec."Insurance Vendor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Insurance Vendor field.';
                }
                field("Insurance Vendor Name"; Rec."Insurance Vendor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Insurance Vendor Name field.';
                }
                field("Loan Amount"; Rec."Loan Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Amount field.';
                }
                field(Product; Rec.Product)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Product field.';
                }
                field(Make; Rec.Make)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Make field.';
                }
                field("Engine No"; Rec."Engine No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Engine No field.';
                }
                field("Is Insured"; Rec."Is Insured")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Is Insured field.';
                }
                field("Insurance Policy"; Rec."Insurance Policy")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Insurance Policy field.';
                }
                field("Insurance Policy No:"; Rec."Insurance Policy No:")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Insurance Policy Number field.';
                }
                field("Insurance Company"; Rec."Insurance Company")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Insurance Company field.';
                }
                field("Start Date"; Rec."Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Start Date field.';
                }
                field("Expiry date"; Rec."Expiry date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Expiry Date field.';
                }
            }
        }
    }
}
