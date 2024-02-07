page 71706608 Member_Card
{
     Caption = 'Customer Application Card';
     PageType = Card;
     DeleteAllowed=false;
    PromotedActionCategories = 'Request Approval,Prices & Discounts,Navigate,New,Attachments,Approval,Customer';
    RefreshOnActivate = true;
     SourceTable = "Member Application";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(No; Rec."No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No field.';
                }
                field("Application Date"; Rec."Application Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Date field.';
                }
                field("Application Time"; Rec."Application Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Time field.';
                }
                field("Type of Customer"; Rec."Type of Customer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type of Customer field.';
                }
                field("Registration Date"; Rec."Registration Date")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Registration Date field.';
                }               
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption='Full Name';
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
                    Visible=false;
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
                    Caption='Identification Doc No';
                    ToolTip = 'Specifies the value of the Identification Doc_ No_ field.';
                }
                field("Passport No"; Rec."Passport No")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Passport No field.';
                }
                field("P_I_N Code"; Rec."P.I.N Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the P.I.N Code field.';
                }
                field("Source Of Customer"; Rec."Source Of Customer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Recruiter Name field.';
                }
                field("Recruited By"; Rec."Recruited By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Recruited By field.';
                }
                field("Recruiter Name"; Rec."Recruiter Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Recruiter Name field.';
                }                 
                field(Nationality; Rec.Nationality)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Nationality field.';
                }           
                field("Customer Posting Group";Rec."Customer Posting Group")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Posting Group field.';
                }        
                 field("Branch Code"; Rec."Branch Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Branch Code field.';
                }                               
                field("Customer Sector"; Rec."Customer Sector")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Sector field.';
                }
                field("Specific Business Narration"; Rec."Specific Business Narration")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Specific Business Narration field.';
                }                
                field("Specific Sector"; Rec."Specific Sector")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Specific Sector field.';
                }   
                field("Name of Spouse"; Rec."Name of Spouse")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of theName of Spouse field.';
                }             
                field("Product Code"; Rec."Product Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Product Code field.';
                }
                field(Security; Rec.Security)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security field.';
                }
                field("Loan Amount"; Rec."Loan Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Amount field.';
                } 
                 field("Application Fees"; Rec."Application Fees")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Fees field.';
                }    
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Status field.';
                } 
                field("Relationship Officer"; Rec."Relationship Officer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Relationship Officer field.';
                }    
                field("Relationship Officer Name"; Rec."Relationship Officer Name")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Relationship Officer Name field.';
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
                    ToolTip = 'Specifies the value of the Post Code field.';
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the City field.';
                }                
                field("Mobile Phone No"; Rec."Mobile Phone No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mobile Phone No field.';
                }
                field("Alternative  Phone No"; Rec."Alternative  Phone No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Alternative  Phone No field.';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the E-Mail field.';
                }                
            }
            group(Addres)
            {
                Caption='Address';                
                field(County; Rec.County)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the County field.';
                }
                field("Business Location"; Rec."Business Location")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Business Location field.';
                }
                field("Company Registration No_"; Rec."Company Registration No_")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Company Registration No_ field.';
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
                field("Home County"; Rec."Home County")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Home County field.';
                }
                field("House No_"; Rec."House No_")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the House No_ field.';
                }
                field("Landlord Phone No_"; Rec."Landlord Phone No_")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Landlord Phone No_ field.';
                }
                field("Name of Landlord"; Rec."Name of Landlord")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Name of Landlord field.';
                }
                field("Nearest Land Mark"; Rec."Nearest Land Mark")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Nearest Land Mark field.';
                }
                field("No_ of Dependants"; Rec."No_ of Dependants")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No_ of Dependants field.';
                }
                field("Rented/Owned"; Rec."Rented/Owned")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rented/Owned field.';
                }
                field(Residence; Rec.Residence)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Residence field.';
                }
                field(Town; Rec.Town)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Town field.';
                }
            }
            group(Employment)
            {
                Caption='Employment';
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
                field("Contract Expiry Date"; Rec."Contract Expiry Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Contract Expiry Date field.';
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
                 field("Bank Branch Code"; Rec."Bank Branch Code")
                {
                    ApplicationArea = All;                   
                    ToolTip = 'Specifies the value of the Branch Code field.';
                }                
                field("Branch Name"; Rec."Branch Name")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Branch Name field.';
                }             
                field("Bank Account No"; Rec."Bank Account No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Account No field.';
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
                    RunObject=page "Next Of Kin";
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
                    RunObject=page Proprietors;
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
                    // RunObject=page "Customer Picture";
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
                    var
                        DocumentAttachmentDetails: Page "Document Attachment Details";
                        RecRef: RecordRef;
                    begin
                        RecRef.GetTable(Rec);
                        DocumentAttachmentDetails.OpenForRecRef(RecRef);
                        DocumentAttachmentDetails.RunModal();
                    end;
        }      
        } 
        group("Request Approval")
        {
            Caption='Request Approval';
          action("Send Approval Request.")
                {
                    Image = SendApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;
                    ApplicationArea = All;
                    Enabled = CanRequestApprovalForFlow and (Rec.Status = Rec.Status::Open);
                    trigger OnAction()
                    var
                    MemberApplication:Record "Member Application";
                    begin
                        rec.TestField(Status,Rec.Status::Open);
                        MemberApplication.Reset();
                        if ApprovalsMgmt.CheckMemberApplicationApprovalWorflowEnabled(Rec) then
                            ApprovalsMgmt.OnSendMemberApplicationForApproval(Rec);
                    end;
        }
          action("Cancel Approval Request.")
                {
                    Image = CancelApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;
                    ApplicationArea = All;
                   // Enabled = CanCancelApprovalForRecord;
                    Visible=(Rec.Status=Rec.Status::"Pending Approval");
                    trigger OnAction()
                      var
                        WorkflowWebhookMgt: Codeunit "Workflow Webhook Management";
                    begin
                        rec.TestField(Status, Rec.Status::"Pending Approval");
                       // ApprovalsMgmt.OnCancelMemberApplicationApprovalRequest(Rec);
                      //  WorkflowWebhookMgt.FindAndCancel(Rec.RecordId);
                      if(rec.Status=rec.Status::"Pending Approval") then begin
                        Rec.Status:=Rec.Status::Open;
                        Rec.Modify();
                      end;
                    end;
        }
          action("Approval Entries")
                {
                    Image = Approvals;
                    RunPageMode = View;
                    ApplicationArea = All;
                    Promoted = true;
                    PromotedCategory = Category5;
                    trigger OnAction()
                    var
                        ApprovalsMgmt: Codeunit "Approvals Mgmt.";
                    begin
                        ApprovalsMgmt.OpenApprovalEntriesPage(Rec.RecordId);                        
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
