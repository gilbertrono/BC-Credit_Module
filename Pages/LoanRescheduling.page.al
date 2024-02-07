page 71706637 Loan_Rescheduling
{
    ApplicationArea = All;
    Caption = 'Loan Rescheduling';
    PageType = List;
    SourceTable = "Loan Rescheduling";
    UsageCategory = Lists;
    CardPageId="Loan Rescheduling";
    
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
                field("Member No"; Rec."Member No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Member No field.';
                }
                field("Member Name"; Rec."Member Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Member Name field.';
                }
                field("Loan No"; Rec."Loan No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Number field.';
                }
            }
        }
    }
}
