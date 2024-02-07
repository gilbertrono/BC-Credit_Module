tableextension 71706619 GenJournalExtension extends "Gen. Journal Line"
{
    fields
    {
        field(71706575; "Customer No"; Text[100])
        {
            Caption = 'Customer No';
            DataClassification = ToBeClassified;
        }
        field(71706576; "Loan No"; Text[100])
        {
            Caption = 'Loan No';
            DataClassification = ToBeClassified;
        }
        field(71706577; "Transaction Type"; Option)
        {
            Caption = 'Transaction Tyoe';
            DataClassification = ToBeClassified;
            OptionMembers="","Loan","Loan Repayment","Interest Due","Interest Paid","Repayment Account","Penalty","Suspended Interest","Suspended Penalty";
        }
    }
}
