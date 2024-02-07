page 71706630 "Transaction Charges"
{
    ApplicationArea = All;
    Caption = 'Transaction Charges';
    PageType = List;
    SourceTable = "Transaction Charges";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                 field("Trans Type"; Rec."Trans Type")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Transaction Type field.';
                }
                field("Charge Code"; Rec."Charge Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Charge Code field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Charge Type"; Rec."Charge Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Charge Type field.';
                }
                field("Charge Amount"; Rec."Charge Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Charge Amount field.';
                }
                field("Percentage of Amount"; Rec."Percentage of Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Percentage of Amount field.';
                }
                field("G_L Account"; Rec."G_L Account")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the G_L Account field.';
                }
                field("Minimum Amount"; Rec."Minimum Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Minimum Amount field.';
                }
                field("Maximum Amount"; Rec."Maximum Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Maximum Amount field.';
                }
                field("Staggered Charge Code"; Rec."Staggered Charge Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Staggered Charge Code field.';
                }
                field("Transaction Charge Category"; Rec."Transaction Charge Category")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction Charge Category field.';
                }
                field("Disbursement Mode"; Rec."Disbursement Mode")
                {
                    ApplicationArea = All;
                    Caption='Payment Mode';
                    ToolTip = 'Specifies the value of the Disbursement Mode field.';
                }
                field("Recover Excise Duty"; Rec."Recover Excise Duty")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Recover Excise Duty field.';
                }               
            }
        }
    }
}
