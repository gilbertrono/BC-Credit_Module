page 71706593 Loan_Collaterals
{
    ApplicationArea = All;
    Caption = 'Loan_Collaterals';
    PageType = List;
    SourceTable = "Collateral Register";
    UsageCategory = Lists;
    DeleteAllowed=false;
    Editable=false;
    CardPageId="Loan Collaterals";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Number field.';
                }
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Number field.';
                }
                field("Member Name"; Rec."Member Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Member Name field.';
                }
                field(Inward_Outward; Rec.Inward_Outward)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Inward/Outward field.';
                }
                field(Collateral; Rec.Collateral)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Collateral field.';
                }
                field("Collateral Name"; Rec."Collateral Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Collateral Name field.';
                }
                field(Discharged; Rec.Discharged)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discharged field.';
                }
                field("Release ID"; Rec."Release ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Release ID field.';
                }
                field("Number Plate"; Rec."Number Plate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Number Plate field.';
                }
            }
        }
    }
}
