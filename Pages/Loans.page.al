page 71706605 "Loan Application"
{

    Caption = 'Loan Application List';
    PageType = List;
    SourceTable = Loans;
    ApplicationArea = All;
    Editable = false;
    DeleteAllowed = false;
    PopulateAllFields = true;
    UsageCategory = Lists;
    CardPageId = Loans;

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
                field("Member Name"; Rec."Member Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Member Name field.';
                }
                field("Requested Amount"; Rec."Requested Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Requested Amount field.';
                }
                field("Recommended Amount"; Rec."Recommended Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Recommended Amount field.';
                }
                field("Approved Amount"; Rec."Approved Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approved Amount field.';
                }
                field("Amount To Disburse"; Rec."Amount To Disburse")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount To Disburse field.';
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
                field("Outstanding Bills"; Rec."Outstanding Bills")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Outstanding Bills field.';
                }
            }
        }
    }
    trigger OnOpenPage()
    var
        LoansR: Record Loans;
        CustomerNo: Code[20];
    begin
        
    end;
    
}
