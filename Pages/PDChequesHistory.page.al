page 71706617 "PD Cheques History"
{
    ApplicationArea = All;
    Caption = 'PD Cheques History';
    PageType = List;
    SourceTable = "PD Cheque Register";
    CardPageId="PD Cheques_History";
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
                    ToolTip = 'Specifies the value of the No field.';
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
            }
        }
    }
}
