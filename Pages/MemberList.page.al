page 71706640 "Member List"
{
    ApplicationArea = All;
    Caption = 'Member List';
    PageType = List;
    SourceTable = Customer;
    UsageCategory = Lists;    
    DeleteAllowed=false;
    Editable=false;
    InsertAllowed=false;
    CardPageId=Member;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the customer. The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Gender; Rec.Gender)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Gender field.';
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Birth field.';
                }
                field("Payroll/Staff No"; Rec."Payroll/Staff No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payroll/Staff No field.';
                }
                field("P.I.N Code"; Rec."P.I.N Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the P.I.N Code field.';
                }
                field("Identification Doc Type"; Rec."Identification Doc Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Identification Doc_ Type field.';
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
                field("Member Status"; Rec."Member Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Member Status field.';
                }
                field("Mobile Phone No."; Rec."Mobile Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mobile Phone No field.';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s telephone number.';
                }
                field("Repayment Account Balance"; Rec."Repayment Account Balance")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s Repayment Account Balance.';
                }
                field("Image Picture"; Rec."Image Picture")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Image Picture field.';
                }
            }
        }
    }
}
