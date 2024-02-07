page 71706644 "PD Cheques_History"
{
    Caption = 'PD Cheques History';
    PageType = Card;
    SourceTable = "PD Cheque Register";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the No field.';
                }
                field("Transaction Date"; Rec."Transaction Date")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Transaction Date field.';
                }
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Customer No field.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Customer Name field.';
                }
                field("Loan No"; Rec."Loan No")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Loan No field.';
                }
                field("Loan Product Type"; Rec."Loan Product Type")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Loan Product Type field.';
                }
                field("Approved Amount"; Rec."Approved Amount")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Approved Amount field.';
                }
                field("Approval Date"; Rec."Approval Date")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Approval Date field.';
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Department field.';
                }  
                field("Branch Code"; Rec."Branch Code")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Department field.';
                }  
                field("Relationship Officer"; Rec."Relationship Officer")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Department field.';
                }            
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Status field.';
                }                
                field("Bank Account"; Rec."Bank Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Bank Account field.';
                }
            }
            group("PD Cheques Subform")
            {
                part(PDChequesSubform;"PD Cheques Listpart")
                {
                    SubPageLink="Line No"=field("No");
                     ApplicationArea = All;
                }
            }
        }
    }
}
