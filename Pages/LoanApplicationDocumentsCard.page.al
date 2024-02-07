page 71706591 "Loan Application Documents"
{
    Caption = 'Loan Application Documents';
    PageType = Card;
    SourceTable = "Loan Application Docs";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("Document Type ID"; Rec."Document Type ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Type ID field.';
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
                field("Document Category"; Rec."Document Category")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Document Category field.';
                }
                field("Allow Exemption"; Rec."Allow Exemption")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Allow Exemption field.';
                }
                field("Exemption Given"; Rec."Exemption Given")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Exemption Given field.';
                }
                field("Exemption By"; Rec."Exemption By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Exemption By field.';
                }
                field("Exemption Date_Time"; Rec."Exemption Date_Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Exemption Date_Time field.';
                }
                field("Exemption Reasons"; Rec."Exemption Reasons")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Exemption Reasons field.';
                }
                field(Mandatory; Rec.Mandatory)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mandatory field.';
                }
                field("Provided By Customer"; Rec."Provided By Customer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Provided By Customer field.';
                }
                field("Loan Product Type"; Rec."Loan Product Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Product Type field.';
                }
            }
        }
    }
}
