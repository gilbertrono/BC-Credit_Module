page 71706598 "Loan Disbursent Listpart"
{
    Caption = 'Loan Disbursent Listpart';
    PageType = ListPart;
    SourceTable = "Loan Disbursement Lines";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("LD No"; Rec."LD No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No field.';
                    Visible = false;
                }
                field(Date; Rec.Date)
                {
                    ApplicationArea = all;
                }
                field("Account No"; Rec."Account No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Account No field.';
                }
                field("Account Name"; Rec."Account Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Account Name field.';
                }
                field("Disbursement Amount"; Rec."Disbursement Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Disbursement Amount field.';
                }
                field("Approved Amount"; Rec."Approved Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approved Amount field.';
                }
                field("Branch Code"; Rec."Branch Code")
                {
                    ApplicationArea = all;
                }
                field("Loan No"; Rec."Loan No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan No field.';
                }
                field("Relationship Officer Code"; Rec."Relationship Officer")
                {
                    ApplicationArea = all;
                }
                field("Line No"; Rec."Line No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Line No field.';
                    Visible = false;
                }
                field(Status;Rec.Status)
                {
                    ApplicationArea=All;
                }
            }
        }
    }
}
