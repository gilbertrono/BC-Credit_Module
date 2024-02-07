page 71706638 "Customer Sectors"
{
    ApplicationArea = All;
    Caption = 'Customer Sectors';
    PageType = List;
    SourceTable = "Customer Sectors";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the No field.';
                }
                field("Sector Code"; Rec."Sector Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sector Code field.';
                }
                field("Sector Name"; Rec."Sector Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sector Name field.';
                }
                
            }
        }
    }
}
