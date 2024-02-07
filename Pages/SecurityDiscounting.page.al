page 71706629 "Security Discounting"
{
    ApplicationArea = All;
    Caption = 'Security Discounting';
    PageType = List;
    SourceTable = "Security Discounting";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Security Disc. Code"; Rec."Security Disc. Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Disc. Code field.';
                }
                field(Category; Rec.Category)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Category field.';
                }
                field(Narrative; Rec.Narrative)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Narrative field.';
                }
                field("Security Type"; Rec."Security Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Type field.';
                }
                field("Margin on FSV"; Rec."Margin on FSV")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Margin on FSV field.';
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
        }
    }
}
