page 71706614 PD_Cheques
{
    ApplicationArea = All;
    Caption = 'PD Cheques';
    PageType = List;
    SourceTable = "PD Cheque Register";
    UsageCategory = Lists;
    CardPageId="PD Cheques";
    
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
                field("Approval Date"; Rec."Approval Date")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Approval Date field.';
                }
                field("Approved Amount"; Rec."Approved Amount")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Approved Amount field.';
                }
                field("Bank Account"; Rec."Bank Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Bank Account field.';
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Department field.';
                }
                field("Loan No"; Rec."Loan No")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan No field.';
                }
                field("Loan Product Type"; Rec."Loan Product Type")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan Product Type field.';
                }                
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Transaction Date"; Rec."Transaction Date")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Transaction Date field.';
                }
            }
        }
    }
}
