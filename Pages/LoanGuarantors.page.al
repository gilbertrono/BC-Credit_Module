page 71706601 "Loan Guarantors"
{
    ApplicationArea = All;
    Caption = 'Loan Guarantors';
    PageType = List;
    SourceTable = Guarantors;
    UsageCategory = Lists;
    CardPageId=Loan_Guarantors;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Guarantor No field.';
                }
                field(Surname; Rec.Surname)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Surname field.';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Name field.';
                }
            }
        }
    }
}
