page 71706626 "RO Loans listpart"
{
    Caption = 'RO Loans listpart';
    PageType = ListPart;
    SourceTable = "RO Loans";
    
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
                field("Loan No"; Rec."Loan No")
                {
                    ApplicationArea = All;
                    TableRelation=Loans;
                    ToolTip = 'Specifies the value of the Loan No field.';
                }
                field("Loan Product Type"; Rec."Loan Product Type")
                {
                    ApplicationArea = All;
                    TableRelation="Product Types";
                    ToolTip = 'Specifies the value of the Loan Product Type field.';
                }
                field("Disbursement Date"; Rec."Disbursement Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Disbursement Date field.';
                }
                field("Next Repayment Date"; Rec."Next Repayment Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Next Repayment Date field.';
                }
                field("Approved Amount"; Rec."Approved Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approved Amount field.';
                }
                field("Outstanding Principle Balance"; Rec."Outstanding Principle Balance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Principle Balance field.';
                }
                field("Outstanding Interest"; Rec."Outstanding Interest")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Interest field.';
                }
                field("Oustanding Penalty"; Rec."Oustanding Penalty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Oustanding Penalty field.';
                }
                field("Total Arrears"; Rec."Total Arrears")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Arrears field.';
                }
            }
        }
    }
}
