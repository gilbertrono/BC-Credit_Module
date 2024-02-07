page 71706642 "Employer Card"
{
    Caption = 'Employer Card';
    PageType = Card;
    SourceTable = Employers;
    PromotedActionCategories = 'New Document,Request Approval,New,Process,Actions,Approve,Attachments,Customer';
    RefreshOnActivate = true; 
    DeleteAllowed=false;
    
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
                field("Employer Name"; Rec."Employer Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name field.';
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
                field("Member No"; Rec."Member No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Member No field.';
                }
                field("Employer Code"; Rec."Employer Code")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Employer Code field.';
                }
                field("No of Employees"; Rec."No of Employees")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the No of Employees field.';
                }
                field("Defaulter Employer"; Rec."Defaulter Employer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No of Employees field.';
                }
                field("Customer Posting Group"; Rec."Customer Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Posting Group field.';
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
                field("No of Male Employees"; Rec."No of Male Employees")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the No of Male Employees field.';
                }
                field("No of Female Employees"; Rec."No of Female Employees")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the No of Female Employees field.';
                }
                field("Balance"; Rec."Balance")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the payment amount that the customer owes for completed sales. This value is also known as the customer''s balance.';
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies when the customer card was last modified.';
                }
                field("Enforce Employer 2"; Rec."Enforce Employer 2")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Enforce Employer 2 field.';
                }
                
            }
            group(Communication)
            {
               Caption='Communication';
               field("Office Telephone Number"; Rec."Office Telephone Number")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Office Telephone Number field.';
                }
                field("Mobile Phone No."; Rec."Mobile Phone No.")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Mobile Phone No field.';
                }
                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the postal code.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Address field.';
                }
                field("Home Address"; Rec."Home Address")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Home Address field.';
                }
                field("EMail"; Rec."EMail")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the E-Mail field.';
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
            Caption='Process';
          action("Dimensions")
        {
           ApplicationArea = All;
                    Caption = 'Dimensions';
                    Image = Dimensions;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    RunObject = page "Default Dimensions";
                    trigger OnAction()
                    begin

                    end;
        }                       
        } 
        group(Approve)
        {
            Caption='Approve';
          action("Reject")
        {
           ApplicationArea = All;
                    Caption = 'Reject';
                    Image = Reject;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    // RunObject=page "";
                    trigger OnAction()
                    begin

                    end;
        } 
           action(Deligate)
        { 
                              
           ApplicationArea = All;
                    Caption = 'Deligate';
                    Image = CreateMovement;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    trigger OnAction()
                    begin

                    end;
        }              
        } 
        group(Group_Actions)
        {
            Caption='Actions';
            action(SendText)
        { 
                              
           ApplicationArea = All;
                    Caption = 'Send Text';
                    Image = SendConfirmation;
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
