page 71706611 Customer_List
{
    ApplicationArea = All;
    Caption = 'Customer List';
    PageType = List;
    SourceTable = "Member Application";
    UsageCategory = Lists;
    Editable=false;
    DeleteAllowed=false;
    CardPageId=Member_Card;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(No; Rec."No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No field.';
                }
                field("Application Date"; Rec."Application Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Date field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Identification Doc_ Type"; Rec."Identification Doc Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Identification Doc_ Type field.';
                }
                field("Identification Doc_ No_"; Rec."Identification Doc No")
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
