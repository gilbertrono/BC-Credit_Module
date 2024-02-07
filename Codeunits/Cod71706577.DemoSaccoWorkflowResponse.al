codeunit 71706577 "DemoSacco WorkflowResponse"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnAddWorkflowResponsePredecessorsToLibrary', '', false, false)]
    local procedure OnAddWorkflowResponsePredecessorsToLibrary(ResponseFunctionName: Code[128]);
    var
        WorkflowResponseHandling: Codeunit "Workflow Response Handling";
        WorkflowEventHandlingExt: Codeunit "DemoSacco  EventHandling";
    begin
        case ResponseFunctionName of
            WorkflowResponseHandling.SetStatusToPendingApprovalCode:
                begin
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SetStatusToPendingApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendMemberApplicationForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SetStatusToPendingApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendMemberEditableForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SetStatusToPendingApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendLoanForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SetStatusToPendingApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendPDChequesForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SetStatusToPendingApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendCollateralsForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SetStatusToPendingApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendLoanReschedulingForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SetStatusToPendingApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendMemberReceiptForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SetStatusToPendingApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendDisbursementHeaderForApprovalCode);
                end;
            WorkflowResponseHandling.SendApprovalRequestForApprovalCode:
                begin
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SendApprovalRequestForApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendMemberApplicationForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SendApprovalRequestForApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendMemberEditableForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SendApprovalRequestForApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendLoanForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SendApprovalRequestForApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendPDChequesForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SendApprovalRequestForApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendCollateralsForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SendApprovalRequestForApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendLoanReschedulingForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SendApprovalRequestForApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendMemberReceiptForApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.SendApprovalRequestForApprovalCode, WorkflowEventHandlingExt.RunWorkflowOnSendDisbursementHeaderForApprovalCode);
                end;
            WorkflowResponseHandling.CancelAllApprovalRequestsCode:
                begin
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.CancelAllApprovalRequestsCode, WorkflowEventHandlingExt.RunWorkflowOnCancelMemberApplicationApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.CancelAllApprovalRequestsCode, WorkflowEventHandlingExt.RunWorkflowOnCancelMemberEditableApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.CancelAllApprovalRequestsCode, WorkflowEventHandlingExt.RunWorkflowOnCancelLoanApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.CancelAllApprovalRequestsCode, WorkflowEventHandlingExt.RunWorkflowOnCancelPDChequesApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.CancelAllApprovalRequestsCode, WorkflowEventHandlingExt.RunWorkflowOnCancelCollateralsApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.CancelAllApprovalRequestsCode, WorkflowEventHandlingExt.RunWorkflowOnCancelLoanReschedulingApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.CancelAllApprovalRequestsCode, WorkflowEventHandlingExt.RunWorkflowOnCancelMemberReceiptApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.CancelAllApprovalRequestsCode, WorkflowEventHandlingExt.RunWorkflowOnCancelDisbursementHeaderApprovalCode);
                end;
            WorkflowResponseHandling.OpenDocumentCode:
                begin
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.OpenDocumentCode, WorkflowEventHandlingExt.RunWorkflowOnCancelMemberApplicationApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.OpenDocumentCode, WorkflowEventHandlingExt.RunWorkflowOnCancelMemberEditableApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.OpenDocumentCode, WorkflowEventHandlingExt.RunWorkflowOnCancelLoanApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.OpenDocumentCode, WorkflowEventHandlingExt.RunWorkflowOnCancelPDChequesApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.OpenDocumentCode, WorkflowEventHandlingExt.RunWorkflowOnCancelCollateralsApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.OpenDocumentCode, WorkflowEventHandlingExt.RunWorkflowOnCancelLoanReschedulingApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.OpenDocumentCode, WorkflowEventHandlingExt.RunWorkflowOnCancelMemberReceiptApprovalCode);
                    WorkflowResponseHandling.AddResponsePredecessor(WorkflowResponseHandling.OpenDocumentCode, WorkflowEventHandlingExt.RunWorkflowOnCancelDisbursementHeaderApprovalCode);

                end;
        end
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnOpenDocument', '', true, true)]
    local procedure OnOpenDocument(RecRef: RecordRef; var Handled: Boolean);
    var
        MemberApplication: Record "Member Application";
        MemberEditable: Record "Member Editable";
        Loan: Record Loans;
        PDCheques: Record "PD Cheque Register";
        Collaterals: Record "Collateral Register";
        LoanRescheduling: Record "Loan Rescheduling";
        MemberReceipt: Record "Member Receipt";
        DisbursementHeader: Record "Loan Disbursement Header";
    begin
        case RecRef.Number of
            database::"Member Application":
                begin
                    RecRef.SetTable(MemberApplication);
                    MemberApplication.Status := MemberApplication.Status::Open;
                    MemberApplication.Modify();
                    Handled := true;
                end;
            database::"Member Editable":
                begin
                    RecRef.SetTable(MemberEditable);
                    MemberEditable.Status := MemberEditable.Status::Open;
                    MemberEditable.Modify();
                    Handled := true;
                end;
            database::Loans:
                begin
                    RecRef.SetTable(Loan);
                    Loan.Status := Loan.Status::Application;
                    Loan.Modify();
                    Handled := true;
                end;
            database::"PD Cheque Register":
                begin
                    RecRef.SetTable(PDCheques);
                    PDCheques.Status := PDCheques.Status::Open;
                    PDCheques.Modify();
                    Handled := true;
                end;
            database::"Collateral Register":
                begin
                    RecRef.SetTable(Collaterals);
                    Collaterals.Status := Collaterals.Status::Open;
                    Collaterals.Modify();
                    Handled := true;
                end;
            database::"Loan Rescheduling":
                begin
                    RecRef.SetTable(LoanRescheduling);
                    LoanRescheduling.Status := LoanRescheduling.Status::Open;
                    LoanRescheduling.Modify();
                    Handled := true;
                end;
            database::"Member Receipt":
                begin
                    RecRef.SetTable(MemberReceipt);
                    MemberReceipt.Status := MemberReceipt.Status::Open;
                    MemberReceipt.Modify();
                    Handled := true;
                end;
            database::"Loan Disbursement Header":
                begin
                    RecRef.SetTable(DisbursementHeader);
                    DisbursementHeader.Status := DisbursementHeader.Status::Open;
                    DisbursementHeader.Modify();
                    Handled := true;
                end;
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnSetStatusToPendingApproval', '', false, false)]
    local procedure OnSetStatusToPendingApproval(RecRef: RecordRef; var Variant: Variant; var IsHandled: Boolean);
    var
        MemberApplication: Record "Member Application";
        MemberEditable: Record "Member Editable";
        Loan: Record Loans;
        PDCheques: Record "PD Cheque Register";
        Collaterals: Record "Collateral Register";
        LoanRescheduling: Record "Loan Rescheduling";
        MemberReceipt: Record "Member Receipt";
        DisbursementHeader: Record "Loan Disbursement Header";

    begin
        case RecRef.Number of
            database::"Member Application":
                begin
                    RecRef.SetTable(MemberApplication);
                    MemberApplication.Status := MemberApplication.Status::"Pending Approval";
                    MemberApplication.Modify();
                    IsHandled := true;
                end;
            database::"Member Editable":
                begin
                    RecRef.SetTable(MemberEditable);
                    MemberEditable.Status := MemberEditable.Status::"Pending Approval";
                    MemberEditable.Modify();
                    IsHandled := true;
                end;
            database::Loans:
                begin
                    RecRef.SetTable(Loan);
                    Loan.Status := Loan.Status::"Pending Approval";
                    Loan.Modify();
                    IsHandled := true;
                end;
            database::"PD Cheque Register":
                begin
                    RecRef.SetTable(PDCheques);
                    PDCheques.Status := PDCheques.Status::"Pending Approval";
                    PDCheques.Modify();
                    IsHandled := true;
                end;
            database::"Collateral Register":
                begin
                    RecRef.SetTable(Collaterals);
                    Collaterals.Status := Collaterals.Status::"Pending Approval";
                    Collaterals.Modify();
                    IsHandled := true;
                end;
            database::"Loan Rescheduling":
                begin
                    RecRef.SetTable(LoanRescheduling);
                    LoanRescheduling.Status := LoanRescheduling.Status::"Pending Approval";
                    LoanRescheduling.Modify();
                    IsHandled := true;
                end;
            database::"Member Receipt":
                begin
                    RecRef.SetTable(MemberReceipt);
                    MemberReceipt.Status := MemberReceipt.Status::"Pending Approval";
                    MemberReceipt.Modify();
                    IsHandled := true;
                end;
            database::"Loan Disbursement Header":
                begin
                    RecRef.SetTable(DisbursementHeader);
                    DisbursementHeader.Status := DisbursementHeader.Status::"Pending Approval";
                    DisbursementHeader.Modify();
                    IsHandled := true;
                end;
        end;
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Response Handling", 'OnReleaseDocument', '', false, false)]
    local procedure OnReleaseDocument(RecRef: RecordRef; var Handled: Boolean);
    var
        MemberApplication: Record "Member Application";
        MemberEditable: Record "Member Editable";
        Loan: Record Loans;
        PDCheques: Record "PD Cheque Register";
        Collaterals: Record "Collateral Register";
        LoanRescheduling: Record "Loan Rescheduling";
        MemberReceipt: Record "Member Receipt";
        DisbursementHeader: Record "Loan Disbursement Header";
        CustomerOnbaording: Codeunit "Customer Onboarding";
    begin
        case RecRef.Number of
            database::"Member Application":
                begin
                    RecRef.SetTable(MemberApplication);
                    MemberApplication.Status := MemberApplication.Status::Approved;
                    MemberApplication.Modify();
                    Handled := true;
                    CustomerOnbaording.updateCustomer();
                end;
            database::"Member Editable":
                begin
                    RecRef.SetTable(MemberEditable);
                    MemberEditable.Status := MemberEditable.Status::Approved;
                    MemberEditable.Modify();
                    Handled := true;
                end;
            database::Loans:
                begin
                    RecRef.SetTable(Loan);
                    Loan.Status := Loan.Status::Approved;
                    Loan.Modify();
                    Handled := true;
                end;
            database::"PD Cheque Register":
                begin
                    RecRef.SetTable(PDCheques);
                    PDCheques.Status := PDCheques.Status::Approved;
                    PDCheques.Modify();
                    Handled := true;
                end;
            database::"Collateral Register":
                begin
                    RecRef.SetTable(Collaterals);
                    Collaterals.Status := Collaterals.Status::Approved;
                    Collaterals.Modify();
                    Handled := true;
                end;
            database::"Loan Rescheduling":
                begin
                    RecRef.SetTable(LoanRescheduling);
                    LoanRescheduling.Status := LoanRescheduling.Status::Approved;
                    LoanRescheduling.Modify();
                    Handled := true;
                end;
            database::"Member Receipt":
                begin
                    RecRef.SetTable(MemberReceipt);
                    MemberReceipt.Status := MemberReceipt.Status::Approved;
                    MemberReceipt.Modify();
                    Handled := true;
                end;
            database::"Loan Disbursement Header":
                begin
                    RecRef.SetTable(DisbursementHeader);
                    DisbursementHeader.Status := DisbursementHeader.Status::Approved;
                    DisbursementHeader.Modify();
                    Handled := true;
                end;
        end;
    end;

}
