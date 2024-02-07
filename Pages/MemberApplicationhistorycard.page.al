page 71706610 "Member Application history"
{
    Caption = 'Member Application history';
    PageType = Card;
    SourceTable = "Member Application";
    PromotedActionCategories = 'Request Approval,Prices & Discounts,Navigate,New,Attachments,Approval,Customer';
    RefreshOnActivate = true;
    DeleteAllowed=false;
    
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
                    ToolTip = 'Specifies the value of the No field.';
                }
                field("Application Date"; Rec."Application Date")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Application Date field.';
                }
                field("Application Time"; Rec."Application Time")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Application Time field.';
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
                field("Identification Doc_ No_"; Rec."Identification Doc No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Identification Doc_ No_ field.';
                }
                field("Passport No_"; Rec."Passport No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Passport No_ field.';
                }
                field("P_I_N Code"; Rec."P.I.N Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the P_I_N Code field.';
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
                field("Recruiter Name"; Rec."Recruiter Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Recruiter Name field.';
                }
                field("Recruited By"; Rec."Recruited By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Recruited By field.';
                }
                field("Source Of Customer"; Rec."Source Of Customer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Source Of Customer By field.';
                }
                field("Customer Posting Group"; Rec."Customer Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Posting Group field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Status field.';
                }               
                
            }
            group(Communication)
            {
                Caption='Communication';
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the sniAddress field.';
                }
                field("Home Address"; Rec."Home Address")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Home Address field.';
                }
                field("Postal Code"; Rec."Postal Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Post Code field.';
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
                field("Mobile Phone No"; Rec."Mobile Phone No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mobile Phone No field.';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the E-Mail field.';
                }
                field(County; Rec.County)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the County field.';
                }
            }
            group(Employement)
            {
              Caption='Employement'; 
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
                field("Monthly Contr_ Share Capital"; Rec."Monthly Contr_ Share Capital")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Monthly Contr_ Share Capital field.';
                }
                field("Monthly Contr_ Property Saving"; Rec."Monthly Contr_ Property Saving")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Monthly Contr_ Property Saving field.';
                }
                field("Monthly Contr_ Member Deposit"; Rec."Monthly Contr_ Member Deposit")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Monthly Contr_ Member Deposit field.';
                }
                field("Monthly Contr_ Holiday Savings"; Rec."Monthly Contr_ Holiday Savings")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Monthly Contr_ Holiday Savings field.';
                }
                field("Monthly Contr_ Junior Savings"; Rec."Monthly Contr_ Junior Savings")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Monthly Contr_ Junior Savings field.';
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
                Caption='Payments';
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
                field("Bank Branch Code"; Rec."Bank Branch Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Branch Code field.';
                }
                field("Bank Account No"; Rec."Bank Account No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Account No field.';
                }
                field("Branch Name"; Rec."Branch Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Branch Name field.';
                }
            }
        }
    }
    actions
   {
    area(Processing)
    {  
        
        group(GroupName)
        {
            Caption='New';
          action("Next of KIN")
        {
           ApplicationArea = All;
                    Caption = 'Next of KIN';
                    Image =AddContacts;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    trigger OnAction()
                    begin

                    end;
        }     
          action("Proprietors")
        {
           ApplicationArea = All;
                    Caption = 'Proprietors';
                    Image =AddContacts;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    trigger OnAction()
                    begin

                    end;
        }  
         action("Picture & Signature")
        {
           ApplicationArea = All;
                    Caption = 'Picture & Signature';
                    Image =Picture;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    trigger OnAction()
                    begin

                    end;
        }    
        } 
        group(Attachment)
        {
            Caption='Attachments';
          action("Attachments")
        {
           ApplicationArea = All;
                    Caption = 'Attachments';
                    Image = Attachments;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    trigger OnAction()
                    begin

                    end;
        }      
        } 
        group(Approval)
        {
            Caption='Approval';
           action("Send Approval Request")
        { 
                              
           ApplicationArea = All;
                    Caption = 'Send Approval Request';
                    Image = SendApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    trigger OnAction()
                    begin

                    end;
        }
          action("Cancel Approval Request")
        { 
                              
           ApplicationArea = All;
                    Caption = 'Cancel Approval Request';
                    Image = CancelApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    trigger OnAction()
                    begin

                    end;
        }
          action(Approvals)
        { 
                              
           ApplicationArea = All;
                    Caption = 'Approvals';
                    Image = Approvals;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    trigger OnAction()
                    begin

                    end;
        }
         
        }  
       
        
    }
   }
}
