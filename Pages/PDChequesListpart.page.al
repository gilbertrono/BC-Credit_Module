page 71706619 "PD Cheques Listpart"
{
    Caption = 'PD Cheques Listpart ';
    PageType = ListPart;
    SourceTable = "PD Cheques";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Cheque No"; Rec."Cheque No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cheque No field.';
                }
                field("Drawer Name"; Rec."Drawer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Drawer Name field.';
                }
                field("Issuer Bank"; Rec."Issuer Bank")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Issuer Bank field.';
                }
                field("Issuer Bank Branch Code"; Rec."Issuer Bank Branch Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Issuer Bank Branch Code field.';
                }
                field("Issuer Bank Branch Name"; Rec."Issuer Bank Branch Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Issuer Bank Branch Name field.';
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Due Date field.';
                }
                field("Date Received"; Rec."Date Received")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date Received field.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field("Cheque Status"; Rec."Cheque Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cheque Status field.';
                }
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer No field.';
                }
            }
        }
    }
}
