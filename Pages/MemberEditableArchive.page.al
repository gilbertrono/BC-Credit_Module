page 71706612 "Member Editable Archive"
{
    ApplicationArea = All;
    Caption = 'Member Editable Archive';
    PageType = List;
    SourceTable = "Member Editable";
    DeleteAllowed=false;
    InsertAllowed=false;
    Editable=false;
    UsageCategory = Lists;
    
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
                field("Identification Doc_ Type"; Rec."Identification Doc_ Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Identification Doc Type field.';
                }
                field("Identification Doc No"; Rec."Identification Doc No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Identification Doc_ No_ field.';
                }
                field("Employer Code"; Rec."Employer Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employer Code field.';
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
