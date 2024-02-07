page 71706576 "Member Receipt Line"
{
    Caption = 'Member Receipt Line';
    PageType = ListPart;
    SourceTable = "Member Receipt Line";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type field.';
                }
                field(Grouping; Rec.Grouping)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Grouping field.';
                }
                field("Account No"; Rec."Account No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Account Number field.';
                }
                 field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transaction Type field.';
                }
                field("Loan No"; Rec."Loan No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan No field.';
                }
                field("Total Amount"; Rec."Total Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Amount field.';
                }
                field("Branch Code"; Rec."Branch Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Branch Code field.';
                }
                field("Relationship Officer"; Rec."Relationship Officer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Relationship Officer field.';
                }
                field("Applies-to DocType"; Rec."Applies-to DocType")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Applies to Document Type field.';
                }
                field("Applies to DocNo"; Rec."Applies to DocNo")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Applies to Document No field.';
                }
                field("Applies to ID"; Rec."Applies to ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Applies to ID field.';
                }
            }
        }
    }
}
