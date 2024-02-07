page 71706584 "County Codes"
{
    ApplicationArea = Basic, Suite;
    Caption = 'County Codes';
    PageType = List;
    SourceTable = "County Codes";
    PopulateAllFields=true;
    UsageCategory = Lists;        
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("County Code"; Rec."County Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the County Code field.';
                }
                field("County Name"; Rec."County Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the County Name field.';
                }
            }
        }
    }
}
