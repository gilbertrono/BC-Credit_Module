page 71706592 "Loan Collateral Setup"
{
    ApplicationArea = All;
    Caption = 'Collateral Setup';
    PageType = List;
    SourceTable = "Loan Collateral Setup";
    UsageCategory = Lists;
    Editable=false;
    DeleteAllowed=false;
    CardPageId="Collateral Setup";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type field.';
                }
                field("Security Description"; Rec."Security Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Description field.';
                }
                field(Category; Rec.Category)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Category field.';
                }
                field("Collateral Multiplier"; Rec."Collateral Multiplier")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Collateral Multiplier field.';
                }
                field(Examples; Rec.Examples)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Examples field.';
                }
                field("Revaluation Frequency"; Rec."Revaluation Frequency")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Revaluation Frequency field.';
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Blocked field.';
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Date Modified field.';
                }
            }
        }
    }
}