page 71706597 "Loan Disbursent Header"
{
    Caption = 'Loan Disbursent Header';
    PageType = Card;
    DeleteAllowed = false;
    PromotedActionCategories = 'New Document,Request Approval,New,Process,Report,Approval,Actions,Attachments,Customer';
    RefreshOnActivate = true;
    SourceTable = "Loan Disbursement Header";
    SourceTableView = where(Posted = const(false));
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
                field("Date Created"; Rec."Date Created")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date Created field.';
                }
                field("Time Created"; Rec."Time Created")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Time Created field.';
                }
                field("Posting Date"; Rec."Posting Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posting Date field.';
                }
                field("Mode of Disbursement"; Rec."Mode of Disbursement")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mode of Disbursement field.';
                }
                field("Bank Account No"; Rec."Bank Account No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mode of Disbursement field.';
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Name field.';
                }
                field("No of Loans"; Rec."No of Loans")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No of Loans field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Total Amount"; Rec."Total Amount")
                {
                    ApplicationArea = All;
                }
                field(Posted; Rec.Posted)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posted field.';
                }
            }
            group("Loan Disbursement Lines")
            {
                part(LoanDisbursementLines; "Loan Disbursent Listpart")
                {
                    SubPageLink = "LD No" = field("No");
                    ApplicationArea = All;
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
                Caption = 'Process';
                action("Suggest Dibursements")
                {
                    ApplicationArea = All;
                    Caption = 'Suggest Dibursements';
                    Image = SocialSecurity;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    // RunObject = page "";
                    trigger OnAction()
                    var
                        LoansBatch: Codeunit "Loan Batching";
                        DisbNo: Code[20];
                        LoanDisbHeader: Record "Loan Disbursement Header";
                    begin
                        LoanDisbHeader := Rec;
                        LoansBatch.Batch(LoanDisbHeader);
                    end;

                }
                action(Post)
                {
                    ApplicationArea = All;
                    Caption = 'Post';
                    Image = Post;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    // RunObject = page "";
                    trigger OnAction()
                    var
                        Post: Codeunit "Post Loan";
                        LoanDisbHeaderLines: record "Loan Disbursement Lines";
                        LoanDisbHeader: Record "Loan Disbursement Header";
                    begin
                        // rec.TestField(Status, Rec.Status::Approved);
                        LoanDisbHeader := Rec;
                        Post.LoanPosting(LoanDisbHeader);
                        Rec.Posted := true;
                        Rec."Posted By" := UserId;
                        Rec."Posting Date" := Today;
                        SetControlAppearance();
                    end;
                }
            }
            group(Reports)
            {
                Caption = 'Report';
                action("Loan Disbursement Schedule")
                {
                    ApplicationArea = All;
                    Caption = 'Loan Disbursement Schedule';
                    Image = History;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    // RunObject=page "";
                    trigger OnAction()

                    begin

                    end;
                }
            }
            group(Approval)
            {
                Caption = 'Approval';
                action("Send Approval Request")
                {

                    ApplicationArea = All;
                    Caption = 'Send Approval Request';
                    Image = SendApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category6;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    Enabled = CanRequestApprovalForFlow and (Rec.Status = Rec.Status::Open);
                    trigger OnAction()
                    var
                        DisbursementHeader: Record "Loan Disbursement Header";
                    begin
                        rec.TestField(Status, Rec.Status::Open);
                        DisbursementHeader.Reset();
                        if ApprovalsMgmt.CheckDisbursementHeaderApprovalWorflowEnabled(Rec) then
                            ApprovalsMgmt.OnSendDisbursementHeaderForApproval(Rec);
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
                    // Enabled = CanCancelApprovalForRecord;
                    Visible = (Rec.Status = Rec.Status::"Pending Approval");
                    trigger OnAction()
                    var
                        WorkflowWebhookMgt: Codeunit "Workflow Webhook Management";
                    begin
                        rec.TestField(Status, Rec.Status::"Pending Approval");
                        // ApprovalsMgmt.OnCancelDisbursementHeaderApprovalRequest(Rec);
                        //  WorkflowWebhookMgt.FindAndCancel(Rec.RecordId);
                        if (rec.Status = rec.Status::"Pending Approval") then begin
                            Rec.Status := Rec.Status::Open;
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
                    PromotedCategory = Category6;
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
            group(Groupe3)
            {
                Caption = 'Actions';
                action("SendText")
                {

                    ApplicationArea = All;
                    Caption = 'Send Text';
                    Image = SendConfirmation;
                    Promoted = true;
                    PromotedCategory = Category7;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin

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
        EditPage := not rec.Posted;
        OpenApprovalEntriesExistForCurrUser := ApprovalsMgmt.HasOpenApprovalEntriesForCurrentUser(Rec.RecordId);
        OpenApprovalEntriesExist := ApprovalsMgmt.HasOpenApprovalEntries(Rec.RecordId);
        CanCancelApprovalForRecord := ApprovalsMgmt.CanCancelApprovalForRecord(Rec.RecordId);
        WorkflowWebhookMgt.GetCanRequestAndCanCancel(Rec.RecordId, CanRequestApprovalForFlow, CanCancelApprovalForFlow);
        if Rec.Status = Rec.Status::Open then
            EditPage := true;
    end;
}
