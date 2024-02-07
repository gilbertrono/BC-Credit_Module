page 71706594 "Loan Collaterals"
{
    Caption = 'Loan Collaterals';
    PageType = Card;
    DeleteAllowed=false; PromotedActionCategories = 'New Document,Request Approval,Report,Process,Approval,Actions,Navigate,Customer';
    RefreshOnActivate = true;    
    SourceTable = "Collateral Register";
    
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
                    ToolTip = 'Specifies the value of the Number field.';
                }
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Number field.';
                }
                field("Member Name"; Rec."Member Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Member Name field.';
                }
                field("ID No"; Rec."ID No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID No field.';
                }
                field("KRA Pin"; Rec."KRA Pin")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the KRA Pin field.';
                }
                field("Is Owner?"; Rec."Is Owner?")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Is Owner? field.';
                }
                field("External Guarantor"; Rec."External Guarantor")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the External Guarantor field.';
                }
                field("External Guarantor Name"; Rec."External Guarantor Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the External Guarantor Name field.';
                }
                field("Registered Owner"; Rec."Registered Owner")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registered Owner field.';
                }                
                field(Discharged; Rec.Discharged)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discharged field.';
                }
                field("Discharge Date"; Rec."Discharge Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discharge Date field.';
                }
                field("Discharge Time"; Rec."Discharge Time")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discharge Time field.';
                }
                field("Discharge By"; Rec."Discharge By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discharge By field.';
                }
                field("Collateral Type"; Rec."Collateral Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Collateral Type field.';
                }
                field("Relationship Officer"; Rec."Relationship Officer")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Relationship Officer field.';
                }
                field("Branch Code"; Rec."Branch Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Branch Code field.';
                }
                field("File No"; Rec."File No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the File No field.';
                }
                field("Collateral Name"; Rec."Collateral Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Collateral Name field.';
                }
                field("Valuation Date"; Rec."Valuation Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Valuation Date field.';
                }
                field("Market Value"; Rec."Market Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Market Value field.';
                }
                field("Forced Sale Value"; Rec."Forced Sale Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Forced Sale Value field.';
                }
                field("Security Discounting Code"; Rec."Security Discounting Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Security Discounting Code field.';
                }
                field("Discounted Value"; Rec."Discounted Value")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discounted Value field.';
                }
                field(Discounting; Rec.Discounting)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Discounting  field.';
                }
                field("Collateral Perfected"; Rec."Collateral Perfected")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Collateral Perfected field.';
                }
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Remarks field.';
                }
                field("Next Valuation Date"; Rec."Next Valuation Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Next Valuation Date field.';
                }
                field("Valuation By"; Rec."Valuation By")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Valuation By field.';
                }
                field("Valuation Expiry Date"; Rec."Valuation Expiry Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Valuation Expiry Date field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Editable=false;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                
            }
            group("Motor Vehicle")
            {
                Caption='Motor Vehicle';
                field(Make; Rec.Make)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Make field.';
                }
                field(Model; Rec.Model)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Model field.';
                }
                field("Number Plate"; Rec."Number Plate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Number Plate field.';
                }
                field(Year; Rec.Year)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Year field.';
                }
                field("Chasis Number"; Rec."Chasis Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chasis Number field.';
                }
                field("Engine Number"; Rec."Engine Number")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Engine Number field.';
                }
                field(Colour; Rec.Colour)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Colour field.';
                }
                field("Vehicle Type"; Rec."Vehicle Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Vehicle Type field.';
                }
                field("Fuel Type"; Rec."Fuel Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fuel Type field.';
                }
                field("Manufacture Year"; Rec."Manufacture Year")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Manufacture Year field.';
                }
                field("Date of Registration"; Rec."Date of Registration")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date of Registration field.';
                }
                field("Tracking Expiry Date"; Rec."Tracking Expiry Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Tracking Expiry Date field.';
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
          action("Return Collateral")
        {
           ApplicationArea = All;
                    Caption = 'Return Collateral';
                    Image = Return;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true; 
                    trigger OnAction()
                    begin

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
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    ApplicationArea = All;
                    Enabled = CanRequestApprovalForFlow and (Rec.Status = Rec.Status::Open);
                    trigger OnAction()
                    var
                    Collaterals:Record "Collateral Register";
                    begin
                        rec.TestField(Status,Rec.Status::Open);
                        Collaterals.Reset();
                        if ApprovalsMgmt.CheckCollateralsApprovalWorflowEnabled(Rec) then
                            ApprovalsMgmt.OnSendCollateralsForApproval(Rec);
                    end;
        }
          action("Cancel Approval Request.")
                {
                    Image = CancelApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    ApplicationArea = All;
                   // Enabled = CanCancelApprovalForRecord;
                    Visible=(Rec.Status=Rec.Status::"Pending Approval");
                    trigger OnAction()
                      var
                        WorkflowWebhookMgt: Codeunit "Workflow Webhook Management";
                    begin
                        rec.TestField(Status, Rec.Status::"Pending Approval");
                       // ApprovalsMgmt.OnCancelCollateralsApprovalRequest(Rec);
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
        group(Action)
        {
            Caption='Actions';
            group(Group2)
            {
                Caption='New Document';
                group(Collateral)
                {
                    Caption='Collateral';
                    action("Return Colateral")
        {
           ApplicationArea = All;
                    Caption = 'Return Collateral';
                    Image = ReturnOrder;
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
