codeunit 71706575 "DemoSacco Workflow Management"
{
    var
        WorkflowManagement: Codeunit "Workflow Management";
        WorkflowEventHandlingExt: Codeunit "DemoSacco  EventHandling";
        NoWorflowEnabledErr: TextConst ENU = 'No approval workflow for this record is enabled';
         [EventSubscriber(ObjectType::Codeunit, Codeunit::"Approvals Mgmt.", 'OnPopulateApprovalEntryArgument', '', true, true)]
         local procedure OnPopulateApprovalEntryArgument(var RecRef: RecordRef;var ApprovalEntryArgument:record "Approval Entry";WorkflowStepInstance: Record "Workflow Step Instance");
         var
         MemberApplication:record "Member Application";
         MemberEditable:record "Member Editable";
         Loan:record Loans;        
         PDCheques:record "PD Cheque Register";
         Collaterals:record "Collateral Register";
         LoanRescheduling:record "Loan Rescheduling";
         MemberReceipt:record "Member Receipt";
         DisbursementHeader:record "Loan Disbursement Header";
         begin
case  RecRef.Number of 
DATABASE::"Member Application":
begin
    RecRef.SetTable(MemberApplication);
    ApprovalEntryArgument."Document No.":=MemberApplication.No;
    ApprovalEntryArgument."Document Type":=ApprovalEntryArgument."Document Type"::"Member Application";
end;
DATABASE::"Member Editable":
begin
    RecRef.SetTable(MemberEditable);
    ApprovalEntryArgument."Document No.":=MemberEditable.No;
    ApprovalEntryArgument."Document Type":=ApprovalEntryArgument."Document Type"::"Member Editable";
end;
DATABASE::Loans:
begin
    RecRef.SetTable(Loan);
    ApprovalEntryArgument."Document No.":=Loan."Loan No";
    ApprovalEntryArgument."Document Type":=ApprovalEntryArgument."Document Type"::Loans;
end;
DATABASE::"PD Cheque Register":
begin
    RecRef.SetTable(PDCheques);
    ApprovalEntryArgument."Document No.":=PDCheques.No;
    ApprovalEntryArgument."Document Type":=ApprovalEntryArgument."Document Type"::"PD Cheque Register";
end;
DATABASE::"Collateral Register":
begin
    RecRef.SetTable(Collaterals);
    ApprovalEntryArgument."Document No.":=Collaterals.No;
    ApprovalEntryArgument."Document Type":=ApprovalEntryArgument."Document Type"::"Collateral Register";
end;
DATABASE::"Loan Rescheduling":
begin
    RecRef.SetTable(LoanRescheduling);
    ApprovalEntryArgument."Document No.":=LoanRescheduling.No;
    ApprovalEntryArgument."Document Type":=ApprovalEntryArgument."Document Type"::"Loan Rescheduling";
end;
DATABASE::"Member Receipt":
begin
    RecRef.SetTable(MemberReceipt);
    ApprovalEntryArgument."Document No.":=MemberReceipt.No;
    ApprovalEntryArgument."Document Type":=ApprovalEntryArgument."Document Type"::"Member Receipt";
end;
DATABASE::"Loan Disbursement Header":
begin
    RecRef.SetTable(DisbursementHeader);
    ApprovalEntryArgument."Document No.":=DisbursementHeader.No;
    ApprovalEntryArgument."Document Type":=ApprovalEntryArgument."Document Type"::"Loan Disbursement Header";
end;

end;
         end;
        [IntegrationEvent(false, false)]
        procedure OnSendMemberApplicationForApproval(var MemberApplication:Record "Member Application")
        begin   

        end;
        [IntegrationEvent(false,false)]
        procedure OnSendMemberEditableForApproval(var MemberEditable:Record "Member Editable")
        begin   

        end;
         [IntegrationEvent(false,false)]
        procedure OnSendLoanForApproval(var Loan:Record Loans)
        begin   

        end;        
        [IntegrationEvent(false, false)]
        procedure OnSendPDChequesForApproval(var PDCheques:Record "PD Cheque Register")
        begin   

        end;
        [IntegrationEvent(false, false)]
        procedure OnSendCollateralsForApproval(var Collaterals:Record "Collateral Register")
        begin   

        end;
        [IntegrationEvent(false, false)]
        procedure OnSendLoanReschedulingForApproval(var LoanRescheduling:Record "Loan Rescheduling")
        begin   

        end;
        [IntegrationEvent(false, false)]
        procedure OnSendMemberReceiptForApproval(var MemberReceipt:Record "Member Receipt")
        begin   

        end;
        [IntegrationEvent(false, false)]
        procedure OnSendDisbursementHeaderForApproval(var DisbursementHeader:Record "Loan Disbursement Header")
        begin   

        end;
    [IntegrationEvent(false, false)]
    procedure OnCancelMemberApplicationApprovalRequest(var MemberApplication: Record "Member Application")
    begin

    end;
    [IntegrationEvent(false, false)]
    procedure OnCancelMemberEditableApprovalRequest(var MemberEditable: Record "Member Editable")
    begin

    end;
    [IntegrationEvent(false, false)]
    procedure OnCancelLoanApprovalRequest(var Loan: Record Loans)
    begin

    end;    
    [IntegrationEvent(false, false)]
    procedure OnCancelPDChequesApprovalRequest(var PDCheques: Record "PD Cheque Register")
    begin

    end;
    [IntegrationEvent(false, false)]
    procedure OnCancelCollateralsApprovalRequest(var Collaterals: Record "Collateral Register")
    begin

    end;
    [IntegrationEvent(false, false)]
    procedure OnCancelLoanReschedulingApprovalRequest(var LoanRescheduling: Record "Loan Rescheduling")
    begin

    end;
    [IntegrationEvent(false, false)]
    procedure OnCancelMemberReceiptApprovalRequest(var MemberReceipt: Record "Member Receipt")
    begin

    end;
     [IntegrationEvent(false, false)]
    procedure OnCancelDisbursementHeaderApprovalRequest(var DisbursementHeader: Record "Loan Disbursement Header")
    begin

    end;
    procedure CheckMemberApplicationApprovalWorflowEnabled(var MemberApplication: Record  "Member Application"): Boolean
    begin
        if not IsMemberApplicationDocApprovalWorkflowEnabled(MemberApplication) then
            Error(NoWorflowEnabledErr);
        exit(true);
    end;
    procedure CheckMemberEditableApprovalWorflowEnabled(var MemberEditable: Record  "Member Editable"): Boolean
    begin
        if not IsMemberEditableDocApprovalWorkflowEnabled(MemberEditable) then
            Error(NoWorflowEnabledErr);
        exit(true);
    end;
    procedure CheckLoanApprovalWorflowEnabled(var Loan: Record  Loans): Boolean
    begin
        if not IsLoanDocApprovalWorkflowEnabled(Loan) then
            Error(NoWorflowEnabledErr);
        exit(true);
    end;     
    procedure CheckPDChequesApprovalWorflowEnabled(var PDCheques: Record  "PD Cheque Register"): Boolean
    begin
        if not IsPDChequesDocApprovalWorkflowEnabled(PDCheques) then
            Error(NoWorflowEnabledErr);
        exit(true);
    end; 
     procedure CheckCollateralsApprovalWorflowEnabled(var Collaterals: Record  "Collateral Register"): Boolean
    begin
        if not IsCollateralsDocApprovalWorkflowEnabled(Collaterals) then
            Error(NoWorflowEnabledErr);
        exit(true);
    end; 
    procedure CheckLoanReschedulingApprovalWorflowEnabled(var LoanRescheduling: Record  "Loan Rescheduling"): Boolean
    begin
        if not IsLoanReschedulingDocApprovalWorkflowEnabled(LoanRescheduling) then
            Error(NoWorflowEnabledErr);
        exit(true);
    end; 
    procedure CheckMemberReceiptApprovalWorflowEnabled(var MemberReceipt: Record  "Member Receipt"): Boolean
    begin
        if not IsMemberReceiptDocApprovalWorkflowEnabled(MemberReceipt) then
            Error(NoWorflowEnabledErr);
        exit(true);
    end; 
    procedure CheckDisbursementHeaderApprovalWorflowEnabled(var DisbursementHeader: Record  "Loan Disbursement Header"): Boolean
    begin
        if not IsDisbursementHeaderDocApprovalWorkflowEnabled(DisbursementHeader) then
            Error(NoWorflowEnabledErr);
        exit(true);
    end; 
    procedure IsMemberApplicationDocApprovalWorkflowEnabled(var MemberApplication: record "Member Application"): Boolean
    begin
        if MemberApplication.Status <> MemberApplication.Status::Open then
            exit(false);
        exit(WorkflowManagement.CanExecuteWorkflow(MemberApplication, WorkflowEventHandlingExt.RunWorkflowOnSendMemberApplicationForApprovalCode));
    end;
    procedure IsMemberEditableDocApprovalWorkflowEnabled(var MemberEditable: record "Member Editable"): Boolean
    begin
        if MemberEditable.Status <> MemberEditable.Status::Open then
            exit(false);
        exit(WorkflowManagement.CanExecuteWorkflow(MemberEditable, WorkflowEventHandlingExt.RunWorkflowOnSendMemberEditableForApprovalCode));
    end;
    procedure IsLoanDocApprovalWorkflowEnabled(var Loan: record Loans): Boolean
    begin
        if Loan.Status <> Loan.Status::Application then
            exit(false);
        exit(WorkflowManagement.CanExecuteWorkflow(Loan, WorkflowEventHandlingExt.RunWorkflowOnSendLoanForApprovalCode));
    end;   
    
    procedure IsPDChequesDocApprovalWorkflowEnabled(var PDCheques: record "PD Cheque Register"): Boolean
    begin
        if PDCheques.Status <> PDCheques.Status::Open then
            exit(false);
        exit(WorkflowManagement.CanExecuteWorkflow(PDCheques, WorkflowEventHandlingExt.RunWorkflowOnSendPDChequesForApprovalCode));
    end;
     procedure IsCollateralsDocApprovalWorkflowEnabled(var Collaterals: record "Collateral Register"): Boolean
    begin
        if Collaterals.Status <> Collaterals.Status::Open then
            exit(false);
        exit(WorkflowManagement.CanExecuteWorkflow(Collaterals, WorkflowEventHandlingExt.RunWorkflowOnSendCollateralsForApprovalCode));
    end;
    procedure IsLoanReschedulingDocApprovalWorkflowEnabled(var LoanRescheduling: record "Loan Rescheduling"): Boolean
    begin
        if LoanRescheduling.Status <> LoanRescheduling.Status::Open then
            exit(false);
        exit(WorkflowManagement.CanExecuteWorkflow(LoanRescheduling, WorkflowEventHandlingExt.RunWorkflowOnSendLoanReschedulingForApprovalCode));
    end;
    procedure IsMemberReceiptDocApprovalWorkflowEnabled(var MemberReceipt: record "Member Receipt"): Boolean
    begin
        if MemberReceipt.Status <> MemberReceipt.Status::Open then
            exit(false);
        exit(WorkflowManagement.CanExecuteWorkflow(MemberReceipt, WorkflowEventHandlingExt.RunWorkflowOnSendMemberReceiptForApprovalCode));
    end;
    procedure IsDisbursementHeaderDocApprovalWorkflowEnabled(var DisbursementHeader: record "Loan Disbursement Header"): Boolean
    begin
        if DisbursementHeader.Status <> DisbursementHeader.Status::Open then
            exit(false);
        exit(WorkflowManagement.CanExecuteWorkflow(DisbursementHeader, WorkflowEventHandlingExt.RunWorkflowOnSendDisbursementHeaderForApprovalCode));
    end;
}
