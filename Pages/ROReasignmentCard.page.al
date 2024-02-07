page 71706628 "RO Reasignment"
{
    Caption = 'RO Reasignment';
    PageType = Card;
    SourceTable = "RO Re-assignment";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field("RO No"; Rec."RO No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RO No field.';
                }
                field("Transaction Date"; Rec."Transaction Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction Date field.';
                }
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer No field.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Name field.';
                }
                field("Current Relationship Officer"; Rec."Current Relationship Officer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Current Relationship Officer field.';
                }
                field("Current RO Name"; Rec."Current RO Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Current RO Name field.';
                }                
                field("New RO Name"; Rec."New RO Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the New RO Name field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the SystemId field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
            }
             group("RO Loans List")
            {
                part(ROLoansList;"RO Loans listpart")
                {
                    SubPageLink="No"=field("RO No");
                     ApplicationArea = All;
                }
            }
        }
    }
}
