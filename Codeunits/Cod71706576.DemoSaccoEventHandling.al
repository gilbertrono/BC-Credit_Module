codeunit 71706576 "DemoSacco  EventHandling"
{
    var
        WorkflowManagement: Codeunit "Workflow Management";
        WorkflowEventHandling: Codeunit "Workflow Event Handling";
        SendMemberApplicationForApprovalEventDescTxt: TextConst ENU = 'Approval for a MemberApplication is requested';
        CancelApprovalForMemberApplicationEventDescTxt: TextConst ENU = 'Approval for a MemberApplication is cancelled';
        SendMemberEditableForApprovalEventDescTxt: TextConst ENU = 'Approval for a MemberEditable is requested';
        CancelApprovalForMemberEditableEventDescTxt: TextConst ENU = 'Approval for a MemberEditable is cancelled';
        SendLoanForApprovalEventDescTxt: TextConst ENU = 'Approval for a Loan is requested';        
        CancelApprovalForLoanEventDescTxt: TextConst ENU = 'Approval for a Loan is cancelled';        
        SendPDChequesForApprovalEventDescTxt: TextConst ENU = 'Approval for a PD Cheques is requested';        
        CancelApprovalForPDChequesEventDescTxt: TextConst ENU = 'Approval for a PD Cheques is cancelled';
        SendCollateralsForApprovalEventDescTxt: TextConst ENU = 'Approval for Collaterals is requested';        
        CancelApprovalForCollateralsEventDescTxt: TextConst ENU = 'Approval for Collaterals is cancelled';
        SendLoanReschedulingForApprovalEventDescTxt: TextConst ENU = 'Approval for Loan Rescheduling is requested';        
        CancelApprovalForLoanReschedulingEventDescTxt: TextConst ENU = 'Approval for Loan Rescheduling is cancelled';
         SendMemberReceiptForApprovalEventDescTxt: TextConst ENU = 'Approval for Member Receipt is requested';        
        CancelApprovalForMemberReceiptEventDescTxt: TextConst ENU = 'Approval for Member Receipt is cancelled';
         SendDisbursementHeaderForApprovalEventDescTxt: TextConst ENU = 'Approval for Loan Disbursement Header is requested';        
        CancelApprovalForDisbursementHeaderEventDescTxt: TextConst ENU = 'Approval for Loan Disbursement Header is cancelled';
        [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Event Handling", 'OnAddWorkflowEventsToLibrary', '', true, true)]
    local procedure OnAddWorkflowEventsToLibrary();
    begin
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnSendMemberApplicationForApprovalCode(), Database::"Member Application", SendMemberApplicationForApprovalEventDescTxt, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnCancelMemberApplicationApprovalCode(), Database::"Member Application", CancelApprovalForMemberApplicationEventDescTxt, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnSendMemberEditableForApprovalCode(), Database::"Member Editable", SendMemberEditableForApprovalEventDescTxt, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnCancelMemberEditableApprovalCode(), Database::"Member Editable", CancelApprovalForMemberEditableEventDescTxt, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnSendLoanForApprovalCode(), Database::Loans, SendLoanForApprovalEventDescTxt, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnCancelLoanApprovalCode(), Database::Loans, CancelApprovalForLoanEventDescTxt, 0, false);        
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnSendPDChequesForApprovalCode(), Database::"PD Cheque Register", SendPDChequesForApprovalEventDescTxt, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnCancelPDChequesApprovalCode(), Database::"PD Cheque Register", CancelApprovalForPDChequesEventDescTxt, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnSendCollateralsForApprovalCode(), Database::"Collateral Register", SendCollateralsForApprovalEventDescTxt, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnCancelCollateralsApprovalCode(), Database::"Collateral Register", CancelApprovalForCollateralsEventDescTxt, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnSendLoanReschedulingForApprovalCode(), Database::"Loan Rescheduling", SendLoanReschedulingForApprovalEventDescTxt, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnCancelLoanReschedulingApprovalCode(), Database::"Loan Rescheduling", CancelApprovalForLoanReschedulingEventDescTxt, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnSendMemberReceiptForApprovalCode(), Database::"Member Receipt", SendMemberReceiptForApprovalEventDescTxt, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnCancelMemberReceiptApprovalCode(), Database::"Member Receipt", CancelApprovalForMemberReceiptEventDescTxt, 0, false);
         WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnSendDisbursementHeaderForApprovalCode(), Database::"Loan Disbursement Header", SendDisbursementHeaderForApprovalEventDescTxt, 0, false);
        WorkflowEventHandling.AddEventToLibrary(RunWorkflowOnCancelDisbursementHeaderApprovalCode(), Database::"Loan Disbursement Header", CancelApprovalForDisbursementHeaderEventDescTxt, 0, false);
    end;
     [EventSubscriber(ObjectType::Codeunit, Codeunit::"Workflow Event Handling", 'OnAddWorkflowEventPredecessorsToLibrary', '', true, true)]
    local procedure OnAddWorkflowEventPredecessorsToLibrary(EventFunctionName: Code[128]);
    begin
        case EventFunctionName of
            RunWorkflowOnCancelMemberApplicationApprovalCode:
            WorkflowEventHandling.AddEventPredecessor(RunWorkflowOnCancelMemberApplicationApprovalCode, RunWorkflowOnSendMemberApplicationForApprovalCode);
            RunWorkflowOnCancelMemberEditableApprovalCode:
            WorkflowEventHandling.AddEventPredecessor(RunWorkflowOnCancelMemberEditableApprovalCode, RunWorkflowOnSendMemberEditableForApprovalCode);
            RunWorkflowOnCancelLoanApprovalCode:
            WorkflowEventHandling.AddEventPredecessor(RunWorkflowOnCancelLoanApprovalCode, RunWorkflowOnSendLoanForApprovalCode);            
            RunWorkflowOnCancelPDChequesApprovalCode:
            WorkflowEventHandling.AddEventPredecessor(RunWorkflowOnCancelPDChequesApprovalCode, RunWorkflowOnSendPDChequesForApprovalCode);
            RunWorkflowOnCancelCollateralsApprovalCode:
            WorkflowEventHandling.AddEventPredecessor(RunWorkflowOnCancelCollateralsApprovalCode, RunWorkflowOnSendCollateralsForApprovalCode);
            RunWorkflowOnCancelMemberReceiptApprovalCode:
            WorkflowEventHandling.AddEventPredecessor(RunWorkflowOnCancelMemberReceiptApprovalCode, RunWorkflowOnSendMemberReceiptForApprovalCode);
            RunWorkflowOnCancelDisbursementHeaderApprovalCode:
            WorkflowEventHandling.AddEventPredecessor(RunWorkflowOnCancelDisbursementHeaderApprovalCode, RunWorkflowOnSendDisbursementHeaderForApprovalCode);

            WorkflowEventHandling.RunWorkflowOnApproveApprovalRequestCode:
                begin
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnApproveApprovalRequestCode, RunWorkflowOnSendMemberApplicationForApprovalCode);
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnApproveApprovalRequestCode, RunWorkflowOnSendMemberEditableForApprovalCode);
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnApproveApprovalRequestCode, RunWorkflowOnSendLoanForApprovalCode);                    
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnApproveApprovalRequestCode, RunWorkflowOnSendPDChequesForApprovalCode);
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnApproveApprovalRequestCode, RunWorkflowOnSendCollateralsForApprovalCode);
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnApproveApprovalRequestCode, RunWorkflowOnSendMemberReceiptForApprovalCode);
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnApproveApprovalRequestCode, RunWorkflowOnSendDisbursementHeaderForApprovalCode);
                end;
            WorkflowEventHandling.RunWorkflowOnRejectApprovalRequestCode:
                begin
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnRejectApprovalRequestCode, RunWorkflowOnSendMemberApplicationForApprovalCode);
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnRejectApprovalRequestCode, RunWorkflowOnSendMemberEditableForApprovalCode);  
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnRejectApprovalRequestCode, RunWorkflowOnSendLoanForApprovalCode);                      
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnRejectApprovalRequestCode, RunWorkflowOnSendPDChequesForApprovalCode); 
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnRejectApprovalRequestCode, RunWorkflowOnSendCollateralsForApprovalCode);
                     WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnRejectApprovalRequestCode, RunWorkflowOnSendMemberReceiptForApprovalCode); 
                     WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnRejectApprovalRequestCode, RunWorkflowOnSendDisbursementHeaderForApprovalCode);  
                end;
            WorkflowEventHandling.RunWorkflowOnDelegateApprovalRequestCode:
                begin
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnDelegateApprovalRequestCode, RunWorkflowOnSendMemberApplicationForApprovalCode);
                   WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnDelegateApprovalRequestCode, RunWorkflowOnSendMemberEditableForApprovalCode);
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnDelegateApprovalRequestCode, RunWorkflowOnSendLoanForApprovalCode);                    
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnDelegateApprovalRequestCode, RunWorkflowOnSendPDChequesForApprovalCode);
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnDelegateApprovalRequestCode, RunWorkflowOnSendCollateralsForApprovalCode);
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnDelegateApprovalRequestCode, RunWorkflowOnSendMemberReceiptForApprovalCode);
                    WorkflowEventHandling.AddEventPredecessor(WorkflowEventHandling.RunWorkflowOnDelegateApprovalRequestCode, RunWorkflowOnSendDisbursementHeaderForApprovalCode);
                end;
                end;
        end;
    
     procedure RunWorkflowOnSendMemberApplicationForApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnSendMemberApplicationForApproval'));
    end;
     procedure RunWorkflowOnSendMemberEditableForApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnSendMemberEditableForApproval'));
    end;
    procedure RunWorkflowOnSendLoanForApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnSendLoanForApproval'));
    end;    
    procedure RunWorkflowOnSendPDChequesForApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnSendPDChequesForApproval'));
    end;
    procedure RunWorkflowOnSendCollateralsForApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnSendCollateralsForApproval'));
    end;
    procedure RunWorkflowOnSendLoanReschedulingForApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnSendLoanReschedulingForApproval'));
    end;
     procedure RunWorkflowOnSendMemberReceiptForApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnSendMemberReceiptForApproval'));
    end;
    procedure RunWorkflowOnSendDisbursementHeaderForApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnSendDisbursementHeaderForApproval'));
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnSendMemberApplicationForApproval', '', true, true)]    
    local procedure RunWorkflowOnSendMemberApplicationForApproval(var MemberApplication: Record "Member Application");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnSendMemberApplicationForApprovalCode(), MemberApplication);
    end;
    //Member Editable
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnSendMemberEditableForApproval', '', true, true)]    
    local procedure RunWorkflowOnSendMemberEditableForApproval(var MemberEditable: Record "Member Editable");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnSendMemberEditableForApprovalCode(), MemberEditable);
    end;
    //Loans
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnSendLoanForApproval', '', true, true)]    
    local procedure RunWorkflowOnSendLoanForApproval(var Loan: Record Loans);
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnSendLoanForApprovalCode(), Loan);
    end;   
    //PD Cheques
     [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnSendPDChequesForApproval', '', true, true)]
    local procedure RunWorkflowOnSendPDChequesForApproval(var PDCheques: Record "PD Cheque Register");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnSendPDChequesForApprovalCode(), PDCheques);
    end;
    //Collaterals
     [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnSendCollateralsForApproval', '', true, true)]
    local procedure RunWorkflowOnSendCollateralsForApproval(var Collaterals: Record "Collateral Register");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnSendCollateralsForApprovalCode(), Collaterals);
    end;
    //Loan Rescheduling
     [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnSendLoanReschedulingForApproval', '', true, true)]
    local procedure RunWorkflowOnSendLoanReschedulingForApproval(var LoanRescheduling: Record "Loan Rescheduling");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnSendLoanReschedulingForApprovalCode(), LoanRescheduling);
    end;
    //Member Receipt
     [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnSendMemberReceiptForApproval', '', true, true)]
    local procedure RunWorkflowOnSendMemberReceiptForApproval(var MemberReceipt: Record "Member Receipt");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnSendMemberReceiptForApprovalCode(), MemberReceipt);
    end;
    //Loan Disbursement Header
     [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnSendDisbursementHeaderForApproval', '', true, true)]
    local procedure RunWorkflowOnSendDisbursementHeaderForApproval(var DisbursementHeader: Record "Loan Disbursement Header");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnSendDisbursementHeaderForApprovalCode(), DisbursementHeader);
    end;
    
     procedure RunWorkflowOnCancelMemberApplicationApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnCancelMemberApplicationApprovalRequest'));
    end;
    procedure RunWorkflowOnCancelMemberEditableApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnCancelMemberEditableApprovalRequest'));
    end;
     procedure RunWorkflowOnCancelLoanApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnCancelLoanApprovalRequest'));
    end;   
    procedure RunWorkflowOnCancelPDChequesApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnCancelPDChequesApprovalRequest'));
    end;
     procedure RunWorkflowOnCancelCollateralsApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnCancelCollateralsApprovalRequest'));
    end;
    procedure RunWorkflowOnCancelLoanReschedulingApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnCancelLoanReschedulingApprovalRequest'));
    end;
    procedure RunWorkflowOnCancelMemberReceiptApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnCancelMemberReceiptApprovalRequest'));
    end;
    procedure RunWorkflowOnCancelDisbursementHeaderApprovalCode(): Code[128]
    begin
        exit(UpperCase('RunWorkflowOnCancelDisbursementHeaderApprovalRequest'));
    end;
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnCancelMemberApplicationApprovalRequest', '', true, true)]
    local procedure RunWorkflowOnCancelMemberApplicationApprovalRequest(var MemberApplication: Record "Member Application");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnCancelMemberApplicationApprovalCode(), MemberApplication);
    end;
    //Member Editable
     [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnCancelMemberEditableApprovalRequest', '', true, true)]
    local procedure RunWorkflowOnCancelMemberEditableApprovalRequest(var MemberEditable: Record "Member Editable");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnCancelMemberEditableApprovalCode(), MemberEditable);
    end;
    //Loans
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnCancelLoanApprovalRequest', '', true, true)]
    local procedure RunWorkflowOnCancelLoanApprovalRequest(var Loan: Record Loans);
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnCancelLoanApprovalCode(), Loan);
    end;    
    //PD Cheques
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnCancelPDChequesApprovalRequest', '', true, true)]
    local procedure RunWorkflowOnCancelPDChequesApprovalRequest(var PDCheques: Record "PD Cheque Register");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnCancelPDChequesApprovalCode(), PDCheques);
    end;
    //Collaterals
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnCancelCollateralsApprovalRequest', '', true, true)]
    local procedure RunWorkflowOnCancelCollateralsApprovalRequest(var Collaterals: Record "Collateral Register");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnCancelCollateralsApprovalCode(), Collaterals);
    end;
    //Loan Rescheduling
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnCancelLoanReschedulingApprovalRequest', '', true, true)]
    local procedure RunWorkflowOnCancelLoanReschedulingApprovalRequest(var LoanRescheduling: Record "Loan Rescheduling");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnCancelLoanReschedulingApprovalCode(), LoanRescheduling);
    end;
    //Member Receipt
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnCancelMemberReceiptApprovalRequest', '', true, true)]
    local procedure RunWorkflowOnCancelMemberReceiptApprovalRequest(var MemberReceipt: Record "Member Receipt");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnCancelMemberReceiptApprovalCode(), MemberReceipt);
    end;
    //Loan Disbursement Header
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"DemoSacco Workflow Management", 'OnCancelDisbursementHeaderApprovalRequest', '', true, true)]
    local procedure RunWorkflowOnCancelDisbursementHeaderApprovalRequest(var DisbursementHeader: Record "Loan Disbursement Header");
    begin
        WorkflowManagement.HandleEvent(RunWorkflowOnCancelDisbursementHeaderApprovalCode(), DisbursementHeader);
    end;
}
