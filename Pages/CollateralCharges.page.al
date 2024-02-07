page 71706585 "Collateral Charges"
{
    ApplicationArea = All;
    Caption = 'Collateral Charges';
    PageType = List;
    SourceTable = "Collateral Charges";
    UsageCategory = Lists;
    
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
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Collateral Type"; Rec."Collateral Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Collateral Type field.';
                }
                field("Charges G_L Account"; Rec."Charges G_L Account")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Charges G_L Account field.';
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount field.';
                }
                field("Additional Annual Charge"; Rec."Additional Annual Charge")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Additional Annual Charge field.';
                }
                field("Is Chattel?"; Rec."Is Chattel?")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Is Chattel? field.';
                }
                field("Is Tracking ?"; Rec."Is Tracking ?")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Is Tracking ? field.';
                }
                field("Is Incharge?"; Rec."Is Incharge?")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Is Incharge? field.';
                }
            }
        }
    }
}
