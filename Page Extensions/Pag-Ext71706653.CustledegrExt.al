pageextension 71706653 CustledegrExt extends "Customer Ledger Entries"
{
    layout
    {
        addafter("Document No.")
        {
            field("Customer No"; Rec."Customer No")
            {
                ApplicationArea = All;
            }

            field("Transaction Type"; Rec."Transaction Type")
            {
                ApplicationArea = all;

            }
            field("Loan  No"; Rec."Loan  No")
            {
                ApplicationArea = All;
            }
            field("Loan Type"; Rec."Loan Type")
            {
                ApplicationArea = All;
            }

        }
        addafter(Description)
        {
            field("Branch Code"; Rec."Branch Code")
            {
                ApplicationArea = All;
            }
            field("Relationship Officer Code"; Rec."Relationship Officer Code")
            {
                ApplicationArea = All;
            }

        }
    }
}
