page 71706650 "Loan Purpose"
{
    ApplicationArea = All;
    Caption = 'Loan Purpose';
    PageType = List;
    SourceTable = "Loan Purpose";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Purpose ID"; Rec."Purpose ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Purpose ID field.';
                }
                field("Purpose Description"; Rec."Purpose Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Purpose Description field.';
                }
            }
        }
    }
}
