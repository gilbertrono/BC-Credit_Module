page 71706635 "Payment & Receipt List"
{
    ApplicationArea = All;
    Caption = 'Payment & Receipt List';
    PageType = List;
    SourceTable = "Payable & Receipt Trans";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Trans Code"; Rec."Trans Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Trans Code field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Account Type"; Rec."Account Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Account Type field.';
                }
                field("Transaction Category"; Rec."Transaction Category")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction Category field.';
                }
                field("VAT Chargeable"; Rec."VAT Chargeable")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Chargeable field.';
                }
                field("VAT Deductible"; Rec."VAT Deductible")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Deductible field.';
                }
                field("Comm Service Tax Deductible"; Rec."Comm Service Tax Deductible")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Comm_ Service Tax Deductible field.';
                }
                field("VAT Deduction Code"; Rec."VAT Deduction Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the VAT Deduction Code field.';
                }
                field("WTax Deduction Code"; Rec."WTax Deduction Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the WTax Deduction Code field.';
                }
                field("Communication Service Tax"; Rec."Communication Service Tax")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Communication Service Tax field.';
                }
                field("Posting Grouping"; Rec."Posting Grouping")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Grouping field.';
                }
                field("Account No"; Rec."Account No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Account No field.';
                }
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Remarks field.';
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Blocked field.';
                }
                field("Customer Payment On Account"; Rec."Customer Payment On Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Customer Payment On Account field.';
                }
                field("Default Travel Table"; Rec."Default Travel Table")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Default Travel Table field.';
                }
                field("Direct Expense"; Rec."Direct Expense")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Direct Expense field.';
                }
                field("Payment Reference"; Rec."Payment Reference")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Payment Reference field.';
                }
                field("Receipt Reference"; Rec."Receipt Reference")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Receipt Reference field.';
                }
                field("Retention Deductible"; Rec."Retention Deductible")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Retention Deductible field.';
                }
                field("WTax Deductible"; Rec."WTax Deductible")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the WTax Deductible field.';
                }
            }
        }
    }
}
