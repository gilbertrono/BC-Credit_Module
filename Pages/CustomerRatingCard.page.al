page 71706582 Customer_Rating
{
    Caption = 'Customer Rating';
    PageType = Card;
    SourceTable = "Customer Rating";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
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
