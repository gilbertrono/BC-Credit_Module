pageextension 71706654 GenJournalLineExt extends "General Journal"
{
    layout
    {
addafter("Bal. Account Type")
{
    field("Transaction Type";Rec."Transaction Type")
    {
        ApplicationArea=all;
    }
    field("Loan No";Rec."Loan No")
    {
        ApplicationArea=All;
    }
}
    }
}
