page 71706649 "Other Commitments Clearance"
{
    ApplicationArea = All;
    Caption = 'Other Commitments Clearance';
    PageType = List;
    SourceTable = "Other Commitments Clearence";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Vendor No. field.';
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vendor Name field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field("Affects 2/3 Rule"; Rec."Affects 2/3 Rule")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Affects 2/3 Rule field.';
                }
                field("Bankers Cheque No."; Rec."Bankers Cheque No.")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Bankers Cheque No. field.';
                }
                field("Bankers Cheque No. 2"; Rec."Bankers Cheque No. 2")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Bankers Cheque No. 2 field.';
                }
                field("Bankers Cheque No. 3"; Rec."Bankers Cheque No. 3")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Bankers Cheque No. 3 field.';
                }
                field("Batch No."; Rec."Batch No.")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Batch No. field.';
                }
                field("Loan No."; Rec."Loan No.")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan No. field.';
                }
                field("Monthly Deduction"; Rec."Monthly Deduction")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Monthly Deduction field.';
                }
                field(OCC_No; Rec.OCC_No)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the OCC_No field.';
                }
                field(Payee; Rec.Payee)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Payee field.';
                }
            }
        }
    }
}
