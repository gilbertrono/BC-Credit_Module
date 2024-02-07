page 71706631 "Member Receipt"
{
    Caption = 'Receipt';
    PageType = Card;
    SourceTable = "Member Receipt";
    PromotedActionCategories = 'New Document,Request Approval,New,Attachments,Approval,Customer';
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
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date field.';
                }
                field("Pay Mode"; Rec."Pay Mode")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Pay Mode field.';
                }
                field("Cheque_Deposit Slip Date"; Rec."Cheque_Deposit Slip Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ChequeDeposit Slip Date field.';
                }
                field("Cheque_Deposit Slip No"; Rec."Cheque_Deposit Slip No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ChequeDeposit Slip No field.';
                }
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
                field("Amount Recieved"; Rec."Amount Recieved")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Amount Recieved field.';
                }
                field("Received From"; Rec."Received From")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Received From field.';
                }
                field("Total Amount"; Rec."Total Amount")
                {
                    ApplicationArea = All;
                     Editable=false;
                    ToolTip = 'Specifies the value of the Total Amount field.';
                }
                field(Cashier; Rec.Cashier)
                {
                    ApplicationArea = All;
                     Editable=false;
                    ToolTip = 'Specifies the value of the Cashier field.';
                }
                field("Date Posted"; Rec."Date Posted")
                {
                    ApplicationArea = All;
                     Editable=false;
                    ToolTip = 'Specifies the value of the Date Posted field.';
                }
                field("Time Posted"; Rec."Time Posted")
                {
                    ApplicationArea = All;
                     Editable=false;
                    ToolTip = 'Specifies the value of the Time Posted field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Posted By"; Rec."Posted By")
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Posted By field.';
                }
                field(Posted; Rec.Posted)
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Posted field.';
                }
                field("Cheque No"; Rec."Cheque No")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Cheque No field.';
                }
                field("Created By"; Rec."Created By")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Created By field.';
                }
                field("Created Date Time"; Rec."Created Date Time")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Created Date Time field.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Currency Code field.';
                }
                field("Currency Factor"; Rec."Currency Factor")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Currency Factor field.';
                }
                field("Document Date"; Rec."Document Date")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Document Date field.';
                }
                field("Early Release"; Rec."Early Release")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Early Release field.';
                }
                field("Fully Accounted"; Rec."Fully Accounted")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Fully Accounted field.';
                }
                field(NoPrinted; Rec.NoPrinted)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the No Printed field.';
                }
                field("On Behalf Of"; Rec."On Behalf Of")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the On Behalf Of field.';
                }
                
                field("Print No"; Rec."Print No")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Print No field.';
                }
                field("Receipt Reference"; Rec."Receipt Reference")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Receipt Reference field.';
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Responsibility Center field.';
                }
                field("Staff Number"; Rec."Staff Number")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Staff Number field.';
                }
            }
             group("Member Receipt Lines")
            {
                part(MemberReceiptLines;"Member Receipt Line")
                {
                    SubPageLink="Line No"=field("No");
                     ApplicationArea = All;
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
          action("Update Member Information")
        {
           ApplicationArea = All;
                    Caption = 'Update Member Information';
                    Image = EditCustomer;
                    Promoted = true;
                    PromotedCategory = Category4;
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
                    PromotedCategory = Category5;
                    PromotedIsBig = true;                     
                    PromotedOnly = true;  Enabled = CanRequestApprovalForFlow and (Rec.Status = Rec.Status::Open);
                    trigger OnAction()
                    var
                    MemberReceipt:Record "Member Receipt";
                    begin
                        rec.TestField(Status,Rec.Status::Open);
                        MemberReceipt.Reset();
                        if ApprovalsMgmt.CheckMemberReceiptApprovalWorflowEnabled(Rec) then
                         ApprovalsMgmt.OnSendMemberReceiptForApproval(Rec);
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
                     // Enabled = CanCancelApprovalForRecord;
                    Visible=(Rec.Status=Rec.Status::"Pending Approval");
                    trigger OnAction()
                      var
                        WorkflowWebhookMgt: Codeunit "Workflow Webhook Management";
                    begin
                        rec.TestField(Status, Rec.Status::"Pending Approval");
                       // ApprovalsMgmt.OnCancelMemberReceiptApprovalRequest(Rec);
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
                    end;
        }
         
        }  
        group(Approve1)
            {
                Caption = 'Approval';
                action(Approve)
                {
                    ApplicationArea = Suite;
                    Caption = 'Approve';
                    Image = Approve;
                    Promoted = true;
                    PromotedCategory = Category5;
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
                    PromotedCategory = Category5;
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
                    PromotedCategory = Category5;
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
                    PromotedCategory = Category5;
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
