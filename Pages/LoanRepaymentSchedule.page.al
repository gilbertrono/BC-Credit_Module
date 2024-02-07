page 71706651 "Loan Repayment Schedule"
{
    ApplicationArea = All;
    Caption = 'Loan Repayment Scedule';
    PageType = List;
    SourceTable = "Loan Repayment Schedule";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Loan No"; Rec."Loan No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan No field.';
                }
                field("Loan Category"; Rec."Loan Category")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Category field.';
                }
                field("Loan Amount"; Rec."Loan Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Amount field.';
                }
                field("Interest Rate"; Rec."Interest Rate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Interest Rate field.';
                }
                field("Instalment No"; Rec."Instalment No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Instalment No field.';
                }
                field("Loan Application No"; Rec."Loan Application No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Application No field.';
                }
                field("Actual Installment Paid"; Rec."Actual Installment Paid")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Actual Installment Paid field.';
                }
                field("Actual Interest Paid"; Rec."Actual Interest Paid")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Actual Interest Paid field.';
                }
                field("Actual Loan Repayment Date"; Rec."Actual Loan Repayment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Actual Loan Repayment Date field.';
                }
                field("Actual Principal Paid"; Rec."Actual Principal Paid")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Actual Principal Paid field.';
                }
                field("Amount Repayed"; Rec."Amount Repayed")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount Repayed field.';
                }
                field("Member No."; Rec."Member No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Member No. field.';
                }
                field("Member Name"; Rec."Member Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Member Name field.';
                }
                field("Monthly Interest"; Rec."Monthly Interest")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Monthly Interest field.';
                }
                field("Monthly Repayment"; Rec."Monthly Repayment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Monthly Repayment field.';
                }
                field(Paid; Rec.Paid)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Paid field.';
                }
                field("Group Code"; Rec."Group Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Group Code field.';
                }
                field("Closed Date"; Rec."Closed Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Closed Date field.';
                }
                field("Principal Repayment"; Rec."Principal Repayment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Principal Repayment field.';
                }
                field("Repayment Code"; Rec."Repayment Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Repayment Code field.';
                }
                field("Repayment Adjustment"; Rec."Repayment Adjustment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Repayment Adjustment field.';
                }
                field("Remaining Debt"; Rec."Remaining Debt")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Remaining Debt field.';
                }
                field("Repayment Date"; Rec."Repayment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Repayment Date field.';
                }
                field("Reset Doc No."; Rec."Reset Doc No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reset Doc No. field.';
                }
                field("Reset Schedule"; Rec."Reset Schedule")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Reset Schedule field.';
                }
            }
        }
    }
}
