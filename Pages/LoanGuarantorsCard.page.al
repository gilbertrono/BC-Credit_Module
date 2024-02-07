page 71706602 Loan_Guarantors
{
    Caption = 'Loan Guarantors';
    PageType = Card;
    SourceTable = Guarantors;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(No; Rec.No)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Guarantor No field.';
                }
                field(Surname; Rec.Surname)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Surname field.';
                }
                field("First Name"; Rec."First Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the First Name field.';
                }
                field("Last Name"; Rec."Last Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Name field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Guarantor Name field.';
                }
                field("Alteranative Phone"; Rec."Alteranative Phone")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Alternative Phone field.';
                }
                field("Marital Status"; Rec."Marital Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Marital Status field.';
                }
                field("Business Location"; Rec."Business Location")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Business Location field.';
                }
                field("Residential Location"; Rec."Residential Location")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Residential Location field.';
                }
                field("Personal Phone"; Rec."Personal Phone")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Personal Phone field.';
                }
                field("Postal Address"; Rec."Postal Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Postal Address field.';
                }
                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Post Code field.';
                }
                field("Security Pledged"; Rec."Security Pledged")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Pledged field.';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Birth field.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
                field("ID No"; Rec."ID No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID No field.';
                }
                field(Occupation; Rec.Occupation)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Occupation field.';
                }
                field("Work Business Phone"; Rec."Work Business Phone")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Business Phone field.';
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
