page 71706580 "Customer Rating"
{
    ApplicationArea = All;
    Caption = 'Customer Rating';
    PageType = List;
    SourceTable = "Customer Rating";
    UsageCategory = Lists;
    CardPageId=Customer_Rating;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Log ID"; Rec."Log ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Log ID field.';
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
                field(Rating; Rec.Rating)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rating field.';
                }
                field("Date & Time"; Rec."Date & Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date & Time field.';
                }
            }
        }
    }
}
