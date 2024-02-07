page 71706639 "Member"
{
    Caption = 'Member List';
    PageType = Card;
    DeleteAllowed = false;
    SourceTable = Customer;


    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the customer. The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registration Date field.';
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
                field("Marital Status"; Rec."Marital Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Marital Status field.';
                }
                field("Identification Doc_ Type"; Rec."Identification Doc Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Identification Doc_ Type field.';
                }
                field("Identification Doc No"; Rec."Identification Doc No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Identification Doc_ No_ field.';
                }
                field("Passport No"; Rec."Passport No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Passport No field.';
                }
                field("P.I.N Code"; Rec."P.I.N Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the P.I.N Code field.';
                }
                field("Loanee Type"; Rec."Loanee Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loanee Type field.';
                }
                field("Credit Limit"; Rec."Credit Limit (LCY)")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Credit Limit field.';
                }
                field("Society Position"; Rec."Society Position")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Society Position field.';
                }
                field("Customer Posting Group"; Rec."Customer Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Posting Group field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Member Status"; Rec."Member Status")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Member Status field.';
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Blocked field.';
                }
                field("Customer Category"; Rec."Customer Category")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Customer Category field.';
                }
                field("Freeze Penalty"; Rec."Freeze Penalty")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Freeze Penalty field.';
                }
                field("Freeze Interest"; Rec."Freeze Interest")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Freeze Interest field.';
                }

            }
            group(Communication)
            {
                Caption = 'Communication';
                field("Address"; Rec."Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Address field.';
                }
                field("Home Address"; Rec."Home Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Home Address field.';
                }
                field("Postal Code"; Rec."Postal Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Postal Code field.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                }
                field(Nationality; Rec.Nationality)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Nationality field.';
                }
                field("Mobile Phone No."; Rec."Mobile Phone No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mobile Phone No field.';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the E-Mail field.';
                }
                field("Department Code"; Rec."Department Code")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Department Code field.';
                }
                field(County_; Rec.County_)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the County field.';
                }
                field("Company Registration No_"; Rec."Company Registration No_")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Company Registration No_ field.';
                }
                field("Business Location"; Rec."Business Location")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Business Location field.';
                }
                field("Business Registration Date"; Rec."Business Registration Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Business Registration Date field.';
                }
                field(Estate; Rec.Estate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Estate field.';
                }
                field("Branch Code"; Rec."Branch Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Branch Code field.';
                }
                field("Relationship Officer"; Rec."Relationship Officer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Relationship Officer field.';
                }
                field("Home County"; Rec."Home County")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Home County field.';
                }
                field("House No_"; Rec."House No_")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the House No field.';
                }
                field("Landlord Phone No_"; Rec."Landlord Phone No_")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Landlord Phone No field.';
                }
                field("Name of Landlord"; Rec."Name of Landlord")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name of Landlord field.';
                }
                field("Name of Spouse"; Rec."Name of Spouse")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name of Spouse field.';
                }
                field("Nearest Land Mark"; Rec."Nearest Land Mark")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Nearest Land Mark field.';
                }
                field("No_ of Dependants"; Rec."No_ of Dependants")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No of Dependants field.';
                }
                field("Spouse Mobile Phone No"; Rec."Spouse Mobile Phone No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Spouse Mobile Phone No field.';
                }
                field("Signing Instructions"; Rec."Signing Instructions")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Signing Instructions field.';
                }
                field("Spouse ID No"; Rec."Spouse ID No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Spouse ID No field.';
                }
                field(Town; Rec.Town)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Town field.';
                }
            }
            group(Employment)
            {
                Caption = 'Employment';
                field("Employer Code"; Rec."Employer Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employer Code field.';
                }
                field("Employer Name"; Rec."Employer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employer Name field.';
                }
                field("Employer 2"; Rec."Employer 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Employer 2 field.';
                }
                field("Terms of Services"; Rec."Terms of Services")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Terms of Services field.';
                }
                field("Payroll/Staff No"; Rec."Payroll/Staff No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Payroll/Staff No field.';
                }
                field(Occupation; Rec.Occupation)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Occupation field.';
                }
                field("Official Designation"; Rec."Official Designation")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Official Designation field.';
                }
                field(Station_Department; Rec.Station_Department)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Station/Department field.';
                }

            }
            group(Payments)
            {
                Caption = 'Payments';
                field("Bank Code"; Rec."Bank Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Code field.';
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Name field.';
                }
                field("Bank Account No"; Rec."Bank Account No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Account No field.';
                }
                field("Bank Branch Code"; Rec."Bank Branch Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Branch Code field.';
                }
                field("Branch Name"; Rec."Branch Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Branch Name field.';
                }
            }
        }
        area(factboxes)
        {
            part(Control149; "Customer Picture")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = "No." = FIELD("No.");
                //Visible = NOT IsOfficeAddin;
            }
            part("Attached Documents"; "Document Attachment Factbox")
            {
                ApplicationArea = All;
                Caption = 'Attachments';
                SubPageLink = "Table ID" = CONST(18),
                              "No." = FIELD("No.");
            }
            /*part(Details; "Office Customer Details")
            {
                ApplicationArea = All;
                Caption = 'Details';
                SubPageLink = "No." = FIELD("No.");                
                Visible =true;
            }*/

            /*part(CustomerStatisticsFactBox; "Customer Statistics FactBox")
            {
                ApplicationArea = Basic, Suite;
                SubPageLink = "No." = FIELD("No."),
                              "Currency Filter" = FIELD("Currency Filter"),
                              "Date Filter" = FIELD("Date Filter"),
                              "Global Dimension 1 Filter" = FIELD("Global Dimension 1 Filter"),
                              "Global Dimension 2 Filter" = FIELD("Global Dimension 2 Filter");
            }*/
            part("Customer Info"; "Member Statistices Factbox")
            {
                SubPageLink = "No." = field("No.");
            }

        }

    }

}
