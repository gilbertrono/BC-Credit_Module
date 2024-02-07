page 71706578 "Customer Editable Card"
{
    Caption = 'Customer Editable Card';
    PageType = Card;
    SourceTable = "Member Editable";
    PromotedActionCategories = 'New Document,Request Approval,Report,Process,Approval,Prices & Discounts,Navigate,Customer';
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
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer No field.';
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
                field("Identification Doc_ Type"; Rec."Identification Doc_ Type")
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
                field("Credit Limit"; Rec."Credit Limit")
                {
                    ApplicationArea = All;
                    Visible=false;
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
                    Editable=false;
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
                    Visible=false;
                    ToolTip = 'Specifies the value of the Customer Category field.';
                }
                field("Freeze Penalty"; Rec."Freeze Penalty")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Freeze Penalty field.';
                }
                field("Freeze Interest"; Rec."Freeze Interest")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Freeze Interest field.';
                }                  
                
            }
            group(Communication)
            {
                Caption='Communication';
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
                field("Department Code"; Rec."Department Code")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Department Code field.';
                }
                field(County; Rec.County)
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
                field("Spouse ID No_"; Rec."Spouse ID No_")
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
                    Editable=false;
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
         
    }
   actions
   {
    area(Processing)
    {
        group(Proces)
        {
            Caption='Process';
          action("Post")
        {
           ApplicationArea = All;
                    Caption = 'Post';
                    Image = Post;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    trigger OnAction()
                    begin

                    end;
        }     
         action("Post & Print")
        {
           ApplicationArea = All;
                    Caption = 'Post & Print';
                    Image = PostPrint;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    trigger OnAction()
                    begin

                    end;
        }    
        action("Print Receipt")
        {
           ApplicationArea = All;
                    Caption = 'Print Receipt';
                    Image = PrintReport;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    trigger OnAction()
                    begin

                    end;
        }    
        } 
        group(Aproval)
        {
            Caption='Approve';
           action("Send Approval Request")
        { 
                              
           ApplicationArea = All;
                    Caption = 'Send Approval Request';
                    Image = SendApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    Enabled = CanRequestApprovalForFlow and (Rec.Status = Rec.Status::Open);
                    trigger OnAction()
                    var
                    MemberEditable:Record "Member Editable";
                    begin
                        rec.TestField(Status,Rec.Status::Open);
                        MemberEditable.Reset();
                        if ApprovalsMgmt.CheckMemberEditableApprovalWorflowEnabled(Rec) then
                            ApprovalsMgmt.OnSendMemberEditableForApproval(Rec);
                    end;
        }
          action("Cancel Approval Request")
        { 
                              
           ApplicationArea = All;
                    Caption = 'Cancel Approval Request';
                    Image = CancelApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    // Enabled = CanCancelApprovalForRecord;
                    Visible=(Rec.Status=Rec.Status::"Pending Approval");
                    trigger OnAction()
                      var
                        WorkflowWebhookMgt: Codeunit "Workflow Webhook Management";
                    begin
                        rec.TestField(Status, Rec.Status::"Pending Approval");
                       // ApprovalsMgmt.OnCancelMemberEditableApprovalRequest(Rec);
                      //  WorkflowWebhookMgt.FindAndCancel(Rec.RecordId);
                      if(rec.Status=rec.Status::"Pending Approval") then begin
                        Rec.Status:=Rec.Status::Open;
                        Rec.Modify();
                      end;
                    end;
        }
          action(Approvals)
        { 
                              
           ApplicationArea = All;
                    Caption = 'Approvals';
                    Image = Approvals;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.OpenApprovalEntriesPage(Rec.RecordId);
                        ;
                    end;
        }       
         
        } 
         group(Approval)
            {
                Caption = 'Approval';
                action(Approve)
                {
                    ApplicationArea = Suite;
                    Caption = 'Approve';
                    Image = Approve;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;
                    ToolTip = 'Approve the requested changes.';
                    Visible = OpenApprovalEntriesExistForCurrUser;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";

                    begin
                        ApprovalsMgmt.ApproveRecordApprovalRequest(Rec.RECORDID);
                        CurrPage.Close();
                    end;
                }
                action(Reject)
                {
                    ApplicationArea = Suite;
                    Caption = 'Reject';
                    Image = Reject;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;
                    Visible = OpenApprovalEntriesExistForCurrUser;

                    trigger OnAction()
                    var
                    ApprovalsMgmt: Codeunit "Approvals Mgmt.";

                    begin
                        /*if (Rec.Status = Rec.Status::Applied) then begin
                            Rec.Status := Rec.Status::Declined;
                            Rec.Modify();
                        end;*/
                        ApprovalsMgmt.RejectRecordApprovalRequest(Rec.RECORDID);
                        CurrPage.Close();
                    end;
                }
                action(Delegate)
                {
                    ApplicationArea = Suite;
                    Caption = 'Delegate';
                    Image = Delegate;
                    Promoted = true;
                    PromotedCategory = Category6;
                    Visible = OpenApprovalEntriesExistForCurrUser;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";

                    begin
                        ApprovalsMgmt.DelegateRecordApprovalRequest(Rec.RECORDID);
                        CurrPage.Close();

                    end;
                }
                action(Comment)
                {
                    ApplicationArea = Suite;
                    Caption = 'Comments';
                    Image = ViewComments;
                    Promoted = true;
                    PromotedCategory = Category6;
                    Visible = OpenApprovalEntriesExistForCurrUser;

                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";

                    begin
                        ApprovalsMgmt.GetApprovalComment(Rec);
                    end;
                }
            }
        
    }
   }
   Local Procedure DrilldownApprovalEntries()
    Var
        ApprovalEntry: Record "Approval Entry";
    begin
        ApprovalEntry.Reset();
        ApprovalEntry.SetRange("Document No.", Rec.No);
        if ApprovalEntry.FindSet() then begin
            PAGE.RunModal(PAGE::"Approval Entries", ApprovalEntry);
            CurrPage.Update(false);
        end;
    end;

    trigger OnAfterGetCurrRecord()
    var
        myInt: Integer;
    begin
        SetControlAppearance;
    end;

    trigger OnDeleteRecord(): Boolean
    begin
        
    end;

    trigger OnModifyRecord(): Boolean
    begin

    end;
    trigger OnOpenPage()
    begin
        SetControlAppearance();
    end;

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
    end;

    trigger OnAfterGetRecord()
    begin
    end;

    var
        GenJnlLine: Record "Gen. Journal Line";
        DefaultBatch: Record "Gen. Journal Batch";
        ApprovalsMgmt: Codeunit "DemoSacco Workflow Management";
        DocumentIsPosted: Boolean;
        DocumentIsReleased: Boolean;
        SkipConfirmationDialogOnClosing: Boolean;
        OpenPostedTrainingCost: Label 'The Training cost transaction is posted as number %1 and moved to the Posted Training cost window.\\Do you want to open the posted Training Cost?', Comment = '%1 = posted document number';
        [InDataSet]
        StatusStyleTxt: Text;
        OpenApprovalEntriesExistForCurrUser: Boolean;
        OpenApprovalEntriesExist: Boolean;
        ShowWorkflowStatus: Boolean;
        CanCancelApprovalForRecord: Boolean;
        CanRequestApprovalForFlow: Boolean;
        CanCancelApprovalForFlow: Boolean;
        EditPage: Boolean;
        CanRejectApprovalForFlow: Boolean;
        CanRejectApprovalForRecord: Boolean;

    

    local procedure SetControlAppearance()
    var
        ApprovalsMgmtExt: Codeunit "DemoSacco Workflow Management";
        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
        WorkflowWebhookMgt: Codeunit "Workflow Webhook Management";
    begin
        EditPage := false;
        OpenApprovalEntriesExistForCurrUser := ApprovalsMgmt.HasOpenApprovalEntriesForCurrentUser(Rec.RecordId);
        OpenApprovalEntriesExist := ApprovalsMgmt.HasOpenApprovalEntries(Rec.RecordId);
        CanCancelApprovalForRecord := ApprovalsMgmt.CanCancelApprovalForRecord(Rec.RecordId);
        WorkflowWebhookMgt.GetCanRequestAndCanCancel(Rec.RecordId, CanRequestApprovalForFlow, CanCancelApprovalForFlow);
        if Rec.Status = Rec.Status::Open then
            EditPage := true;
    end;
}
