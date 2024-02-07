page 71706599 "Loan Documents"
{
    ApplicationArea = All;
    Caption = 'Loan Documents';
    PageType = List;
    SourceTable = "Loan Documents";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Document Type ID"; Rec."Document Type ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Type ID field.';
                }
                field("Document Category"; Rec."Document Category")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Category field.';
                }
                field("Document Type"; Rec."Document Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Type field.';
                }
                field("Document Description"; Rec."Document Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Description field.';
                }
            }
        }
    }
}
