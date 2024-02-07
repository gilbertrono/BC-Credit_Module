page 71706652 "Loan Posted Card"
{
    Caption = 'Loan Posted Card';
    PageType = Card;
    SourceTable = Loans;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Loan No"; Rec."Loan No")
                {
                    ApplicationArea = All;
                }
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                }
                field("Application Date"; Rec."Application Date")
                {
                    ApplicationArea = All;
                }
                field("Employer Code"; Rec."Employer Code")
                {
                    ApplicationArea = All;
                }
                field("Existing Loan Balance"; Rec."Existing Loan Balance")
                {
                    ApplicationArea = All;
                }
                field("Branch Code"; Rec."Branch Code")
                {
                    ApplicationArea = All;
                }
                field("Relationship Officer"; Rec."Relationship Officer")
                {
                    ApplicationArea = All;
                }
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Loan Application Code"; Rec."Loan Application Code")
                {
                    ApplicationArea = All;
                }

            }
            group("Loan Information")
            {
                field("Loan Product Type"; Rec."Loan Product Type")
                {
                    ApplicationArea = All;
                }
                field("Loan Product Type Name"; Rec."Loan Product Type Name")
                {
                    ApplicationArea = All;
                }
                field("Interest Calculation Method"; Rec."Interest Calculation Method")
                {
                    ApplicationArea = All;
                }
                field(Installments; Rec.Installments)
                {
                    ApplicationArea = All;
                }
                field(Interest; Rec.Interest)
                {
                    ApplicationArea = All;
                }
                field("Applied Amount"; Rec."Applied Amount")
                {
                    ApplicationArea = All;
                }
                field("System Recommended Amount"; Rec."System Recommended Amount")
                {
                    ApplicationArea = All;
                }
                field("Approved Amount"; Rec."Approved Amount")
                {
                    ApplicationArea = All;
                }
                field("Amount To Disburse"; Rec."Amount To Disburse")
                {
                    ApplicationArea = All;
                }
                field("Net Surplus_Deficit"; Rec."Net Surplus_Deficit")
                {
                    ApplicationArea = All;
                }
                field("Purpose of Loan"; Rec."Purpose of Loan")
                {
                    ApplicationArea = All;
                }
                field("Installment Amount"; Rec."Installment Amount")
                {
                    ApplicationArea = All;
                }
                field("Loan Principle Repayment"; Rec."Loan Principle Repayment")
                {
                    ApplicationArea = All;
                }
                field("Loan Interest Repayment"; Rec."Loan Interest Repayment")
                {
                    ApplicationArea = All;
                }
                field("Repayment Frequency"; Rec."Repayment Frequency")
                {
                    ApplicationArea = All;
                }
                field("Loan Rejection Reason"; Rec."Loan Rejection Reason")
                {
                    ApplicationArea = All;
                }
                field("Outstanding Balance"; Rec."Outstanding Balance")
                {
                    ApplicationArea = All;
                }
                field("Oustanding Interest"; Rec."Oustanding Interest")
                {
                    ApplicationArea = All;
                }
                field("Oustanding Penalty"; Rec."Oustanding Penalty")
                {
                    ApplicationArea = All;
                }
                field("Suspended Interest"; Rec."Suspended Interest")
                {
                    ApplicationArea = All;
                }
                field("Additional Fees"; Rec."Additional Fees")
                {
                    ApplicationArea = All;
                }
                field("Days in Arrears"; Rec."Days in Arrears")
                {
                    ApplicationArea = All;
                }
                field("Interest In Arrears"; Rec."Interest In Arrears")
                {
                    ApplicationArea = All;
                }
                field("Principal in arrears"; Rec."Principal in arrears")
                {
                    ApplicationArea = All;
                }
                field("Total In Arrears"; Rec."Total In Arrears")
                {
                    ApplicationArea = All;
                }
                field("Station/Department"; Rec."Station/Department")
                {
                    ApplicationArea = All;
                }
                field("Captured By"; Rec."Captured By")
                {
                    ApplicationArea = All;
                }
            }
            group("Disbursement & Payments")
            {
                field("Disbursement Date"; Rec."Disbursement Date")
                {
                    ApplicationArea = All;
                }
                field("Repayment Start Date"; Rec."Repayment Start Date")
                {
                    ApplicationArea = All;
                }
                field("Next Repayment Date"; Rec."Next Repayment Date")
                {
                    ApplicationArea = All;
                }
                field("Expected Date of Completion"; Rec."Expected Date of Completion")
                {
                    ApplicationArea = All;
                }
                field("Batch No"; Rec."Batch No")
                {
                    ApplicationArea = All;
                }
                field("Bank Account No"; Rec."Bank Account No")
                {
                    ApplicationArea = All;
                }
                field("Branch Name"; Rec."Branch Name")
                {
                    ApplicationArea = All;
                }
                /*  field("Branch Code";Rec."Branch Code")
                 {
                     ApplicationArea = All;
                 }*/
                field("Cost of Project"; Rec."Cost of Project")
                {
                    ApplicationArea = All;
                }
                field("Own Contribution"; Rec."Own Contribution")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
