page 71706587 Insurance_Policy
{
    ApplicationArea = All;
    Caption = 'Insurance_Policy';
    PageType = List;
    SourceTable = "Insurance Policy";
    UsageCategory = Lists;
    CardPageId="Insurance Policy";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
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
                field("Engine No"; Rec."Engine No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Engine No field.';
                }
                field("Insurance Policy No:"; Rec."Insurance Policy No:")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Insurance Policy Number field.';
                }
            }
        }
    }
}
