page 71706645 "Next Of Kin"
{
    ApplicationArea = All;
    Caption = 'Next Of Kin';
    PageType = List;
    SourceTable = NextOfKin;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Relationship; Rec.Relationship)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Relationship field.';
                }
                field("ID/Passport/Birth Cert. No."; Rec."ID/Passport/Birth Cert. No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID/Passport/Birth Cert. No. field.';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Birth field.';
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Address field.';
                }
                field(Telephone; Rec.Telephone)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Telephone field.';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Email field.';
                }
                field(Beneficiary; Rec.Beneficiary)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Beneficiary field.';
                }
                field(Allocation; Rec.Allocation)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Allocation field.';
                }
                field("Account No."; Rec."Account No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Account No. field.';
                }
                field("Birth Certificate Number"; Rec."Birth Certificate Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Birth Certificate Number field.';
                }
                field(Deceased; Rec.Deceased)
                {
                    ApplicationArea = All;
                    Visible=true;
                    ToolTip = 'Specifies the value of the Deceased field.';
                }
                field("Entry No"; Rec."Entry No")
                {
                    ApplicationArea = All;
                    Visible=true;
                    ToolTip = 'Specifies the value of the Entry No field.';
                }
                field(Fax; Rec.Fax)
                {
                    ApplicationArea = All;
                    Visible=true;
                    ToolTip = 'Specifies the value of the Fax field.';
                }
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    Visible=true;
                    ToolTip = 'Specifies the value of the Type field.';
                }
            }
        }
    }
}
