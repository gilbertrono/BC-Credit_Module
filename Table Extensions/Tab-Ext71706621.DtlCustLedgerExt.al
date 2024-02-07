tableextension 71706621 DtlCustLedgerExt extends "Detailed Cust. Ledg. Entry"
{
    fields
    {
        field(71706575; "Customer No"; Text[100])
        {
            Caption = 'Customer No';
            DataClassification = ToBeClassified;
        }
        field(71706576; "Loan  No"; Text[100])
        {
            Caption = 'Loan  No';
            DataClassification = ToBeClassified;
        }
        field(71706577; "Transaction Type"; Option)
        {
            Caption = 'Transaction Type';
            DataClassification = ToBeClassified;
            OptionMembers = "","Interest Due","Penalty","Repayment Account","Oustanding Principal";
        }
        field(71706578; "Loan Type"; Code[100])
        {
            DataClassification = ToBeClassified;
        }
        field(71706579; "Branch Code"; Code[100])
        {
            DataClassification = ToBeClassified;
        }
        field(71706580; "Relationship Officer Code"; Code[100])
        {
            DataClassification = ToBeClassified;
        }
    }
}
