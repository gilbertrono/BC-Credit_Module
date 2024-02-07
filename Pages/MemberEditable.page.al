page 71706577 "Member Editable"
{
    ApplicationArea = All;
    Caption = 'Member Editable';
    PageType = List;
    SourceTable = "Member Editable";
    UsageCategory = Lists;
    Editable=false;
    DeleteAllowed=false;    
    CardPageId="Customer Editable Card";
    
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
