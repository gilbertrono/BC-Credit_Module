page 71706596 "Loan_Disbursement List"
{
    ApplicationArea = All;
    Caption = 'Loan Disbursement List';
    PageType = List;
    SourceTable = "Loan Disbursement Header";
    DeleteAllowed = false;
    Editable = false;
    UsageCategory = Lists;
    CardPageId = "Loan Disbursent Header";
    SourceTableView = where(Posted = const(false));
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
                field("Date Created"; Rec."Date Created")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date Created field.';
                }
                field("Time Created"; Rec."Time Created")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Time Created field.';
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Responsibility Center field.';
                }
                field("Payment Type"; Rec."Payment Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payment Type field.';
                }
                field("No of Loans"; Rec."No of Loans")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No of Loans field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                }
            }
        }
    }
}
