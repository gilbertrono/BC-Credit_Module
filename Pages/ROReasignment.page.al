page 71706627 RO_Reasignment
{
    ApplicationArea = All;
    Caption = 'RO_Reasignment';
    PageType = List;
    SourceTable = "RO Re-assignment";
    UsageCategory = Lists;
    CardPageId="RO Reasignment";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("RO No"; Rec."RO No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RO No field.';
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
                field("Current RO Name"; Rec."Current RO Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Current RO Name field.';
                }
            }
        }
    }
}
