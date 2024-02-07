page 71706634 "Cash Management Setup"
{
    Caption = 'Cash Management Setup';
    PageType = Card;
    SourceTable = "Cash Management Setup";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Receipt No"; Rec."Receipt No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Receipt No field.';
                }
                field("Check Rejection Period"; Rec."Check Rejection Period")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Check Rejection Period field.';
                }
                field("Cheque Maturity Days"; Rec."Cheque Maturity Days")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cheque Maturity Days field.';
                }
                field("Maximum Holding Days"; Rec."Maximum Holding Days")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Maximum Holding Days field.';
                }
            }
        }
    }
}
