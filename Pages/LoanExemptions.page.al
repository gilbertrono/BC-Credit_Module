page 71706600 Loan_Exemptions
{
    ApplicationArea = All;
    Caption = 'Loan_Exemptions';
    PageType = List;
    SourceTable = "Loan Exemptions";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No"; Rec."Entry No")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Entry No field.';
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the User ID field.';
                }
                field("Name of User"; Rec."Name of User")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Name of User field.';
                }
                field("Category of Exeption"; Rec."Category of Exeption")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Category of Exeption field.';
                }
            }
        }
    }
}
