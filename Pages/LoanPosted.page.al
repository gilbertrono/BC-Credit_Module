page 71706603 "Loan Posted"
{
    ApplicationArea = All;
    Caption = 'Loan Posted List';
    PageType = List;
    SourceTable = Loans;
    UsageCategory = Lists;
    InsertAllowed = false;
    DeleteAllowed = false;
    Editable = false;
    CardPageId = "Loan Posted Card";
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
                field("Application Date"; Rec."Application Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Date field.';
                }
                field("Disbursement Date"; Rec."Disbursement Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Disbursement Date field.';
                }
                field("Loan Product Type"; Rec."Loan Product Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Product Type field.';
                }
                field("Customer No_"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer No field.';
                }
                field("Approved Amount"; Rec."Approved Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approved Amount field.';
                }
                field(Installments; Rec.Installments)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Installments field.';
                }
                field(Interest; Rec.Interest)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Interest field.';
                }
                field("Batch No"; Rec."Batch No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Batch No field.';
                }
                field("Member Name"; Rec."Member Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Member Name field.';
                }
                field("Outstanding Balance"; Rec."Outstanding Balance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Balance field.';
                }
                field("Outstanding Interest"; Rec."Outstanding Interest")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Interest field.';
                }
              
                field(Repayment; Rec.Repayment)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Repayment field.';
                }
                field("New Interest Rate"; Rec."New Interest Rate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the New Interest Rate field.';
                }
                field("New No of Installment"; Rec."New No of Installment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the New No_ of Installment field.';
                }
                field("Loan Rescheduled"; Rec."Loan Rescheduled")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Rescheduled field.';
                }
                field("Employer Code"; Rec."Employer Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employer Code field.';
                }
                field("Department Code"; Rec."Department Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Department Code field.';
                }
                field("Project Code"; Rec."Project Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Project Code field.';
                }
            }
        }
    }
}
