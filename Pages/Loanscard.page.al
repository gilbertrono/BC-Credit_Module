page 71706606 Loans
{
    Caption = 'Loans';
    PageType = Card;
    PromotedActionCategories = 'New Document,Request Approval,New,Process,Report,Attachments,Approval Entries,Approval,Customer';
    RefreshOnActivate = true;
    SourceTable = Loans;
    DeleteAllowed = false;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Loan No"; Rec."Loan No")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Loan No field.';
                }
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer No field.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Customer Name field.';
                }
                field("Application Date"; Rec."Application Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Date field.';
                }
                field("Employer Code"; Rec."Employer Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Employer Code field.';
                }
                field("Mobile Phone No"; Rec."Mobile Phone No")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Mobile Phone No field.';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the E-Mail field.';
                }
                field("Existing Loan Balance"; Rec."Existing Loan Balance")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Existing Loan Balance field.';
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
                field(Remarks; Rec.Remarks)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Staff No field.';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Status field.';
                }
                field("Source Of Business"; Rec."Source Of Business")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Source Of Business field.';
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
                field("Loan Application Code"; Rec."Loan Application Code")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Loan Application Code field.';
                }
                field("Acceptance Letter Received"; Rec."Acceptance Letter Received")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Acceptance Letter Received field.';
                }
                field("Additional Fees"; Rec."Additional Fees")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Additional Fees field.';
                }
                field(Advice; Rec.Advice)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Advice field.';
                }
                field("Advice Type"; Rec."Advice Type")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Advice Type field.';
                }
                field("Affidavit Signed"; Rec."Affidavit Signed")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Affidavit Signed field.';
                }
                field("All Posting through Savings Ac"; Rec."All Posting through Savings Ac")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the All Posting through Savings Ac field.';
                }
                field("Amount Approved before Appeal"; Rec."Amount Approved before Appeal")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Amount Approved before Appeal field.';
                }
                field("Amount Disbursed"; Rec."Amount Disbursed")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Amount Disbursed field.';
                }
                field("Amount To Disburse"; Rec."Amount To Disburse")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Amount To Disburse field.';
                }
                field("Anniversary Day"; Rec."Anniversary Day")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Anniversary Day field.';
                }
                field("Application Fee Paid"; Rec."Application Fee Paid")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Application Fee Paid field.';
                }
                field("Application Time"; Rec."Application Time")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Application Time field.';
                }
                field("Appln between Currencies"; Rec."Appln between Currencies")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Appln between Currencies field.';
                }
                field("Arrears in Days BF"; Rec."Arrears in Days BF")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Arrears in Days BF field.';
                }
                field("Bank Branch"; Rec."Bank Branch")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Bank Branch field.';
                }
                field("Bank Name"; Rec."Bank Name")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Bank Name field.';
                }
                field("Cheque No"; Rec."Cheque No")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Cheque No field.';
                }
                field("Compute Interest Due on Postin"; Rec."Compute Interest Due on Postin")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Compute Interest Due on Postin field.';
                }
                field("Currency Code"; Rec."Currency Code")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Currency Code field.';
                }
                field("Currency Filter"; Rec."Currency Filter")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Currency Filter field.';
                }
                field("Date Rescheduled"; Rec."Date Rescheduled")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Date Rescheduled field.';
                }
                field("Date of Affidavit"; Rec."Date of Affidavit")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Date of Affidavit field.';
                }
                field("Days in Arrears"; Rec."Days in Arrears")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Days in Arrears field.';
                }
                field(Defaulted; Rec.Defaulted)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Defaulted field.';
                }
                field("Deposit Boosting?"; Rec."Deposit Boosting?")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Deposit Boosting? field.';
                }
                field("Disbursement Account No"; Rec."Disbursement Account No")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Disbursement Account No field.';
                }
                field("Discounted Loan No"; Rec."Discounted Loan No")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Discounted Loan No field.';
                }
                field("External Guarantor Name"; Rec."External Guarantor Name")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the External Guarantor Name field.';
                }
                field("External Guarantor Phone No"; Rec."External Guarantor Phone No")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the External Guarantor Phone No field.';
                }
                field(Financier; Rec.Financier)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Financier field.';
                }
                field("Fully Disbursed"; Rec."Fully Disbursed")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Fully Disbursed field.';
                }
                field("Grace Period"; Rec."Grace Period")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Grace Period field.';
                }
                field("Group Code"; Rec."Group Code")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Group Code field.';
                }
                field("Installment Period"; Rec."Installment Period")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Installment Period field.';
                }
                field("Insurance Charged"; Rec."Insurance Charged")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Insurance Charged field.';
                }
                field("Interest In Arrears"; Rec."Interest In Arrears")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Interest In Arrears field.';
                }
                field("Last Advice Date"; Rec."Last Advice Date")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Last Advice Date field.';
                }
                field("Loan Account"; Rec."Loan Account")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Loan Account field.';
                }
                field("Loan Appealed"; Rec."Loan Appealed")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Loan Appealed field.';
                }
                field("Loan Balance at Rescheduling"; Rec."Loan Balance at Rescheduling")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Loan Balance at Rescheduling field.';
                }
                field("Loan Interest Repayment"; Rec."Loan Interest Repayment")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Loan Interest Repayment field.';
                }
                field("Loan Principle Repayment"; Rec."Loan Principle Repayment")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Loan Principle Repayment field.';
                }
                field("Loan Rescheduled"; Rec."Loan Rescheduled")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Loan Rescheduled field.';
                }
                field("Loan Span"; Rec."Loan Span")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Loan Span field.';
                }
                field("Loans Deposit Purchase"; Rec."Loans Deposit Purchase")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Loans Deposit Purchase field.';
                }
                field("Max Installments"; Rec."Max Installments")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Max Installments field.';
                }
                field("Max Loan Amount"; Rec."Max Loan Amount")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Max Loan Amount field.';
                }
                field("Member Name"; Rec."Member Name")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Member Name field.';
                }
                field("Mode of Disbursement"; Rec."Mode of Disbursement")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Mode of Disbursement field.';
                }
                field(Multiplier; Rec.Multiplier)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Multiplier field.';
                }
                field("Name Magistrate"; Rec."Name Magistrate")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Name Magistrate field.';
                }
                field("Name of Chief_Assistant"; Rec."Name of Chief_Assistant")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Name of Chief Assistant field.';
                }
                field("Net Loan Disbursed"; Rec."Net Loan Disbursed")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Net Loan Disbursed field.';
                }
                field("New Grace Period"; Rec."New Grace Period")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the New Grace Period field.';
                }
                field("New Installment Period"; Rec."New Installment Period")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the New Installment Period field.';
                }
                field("New Interest Rate"; Rec."New Interest Rate")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the New Interest Rate field.';
                }
                field("New No of Installment"; Rec."New No of Installment")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the New No_ of Installment field.';
                }
                field("No_ of Loans"; Rec."No of Loans")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the No of Loans field.';
                }
                field("Old Last Pay Date"; Rec."Old Last Pay Date")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Old Last Pay Date field.';
                }
                field("Outstanding Balance"; Rec."Outstanding Balance")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Outstanding Balance field.';
                }
                field("Outstanding Bills"; Rec."Outstanding Bills")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Outstanding Bills field.';
                }
                field("Outstanding Interest"; Rec."Outstanding Interest")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Outstanding Interest field.';
                    DrillDownPageId = "Customer Ledger Entries";
                }
                field("Paid Off Loan"; Rec."Paid Off Loan")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Paid Off Loan field.';
                }
                field("Partial Disbursement"; Rec."Partial Disbursement")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Partial Disbursement field.';
                }
                field(PenaltyAttached; Rec.PenaltyAttached)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Penalty Attached field.';
                }
                field(Posted; Rec.Posted)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Posted field.';
                }
                field("Principle In Arrears"; Rec."Principle In Arrears")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Principle In Arrears field.';
                }
                field("Reason for Appeal"; Rec."Reason for Appeal")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Reason for Appeal field.';
                }
                field("Recommended Amount"; Rec."Recommended Amount")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Recommended Amount field.';
                }
                field(Recovered; Rec.Recovered)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Recovered field.';
                }
                field("Recovered Loan"; Rec."Recovered Loan")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Recovered Loan field.';
                }
                field("Recovery Mode"; Rec."Recovery Mode")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Recovery Mode field.';
                }
                field("Recovery Priority"; Rec."Recovery Priority")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Recovery Priority field.';
                }
                field(Reminder1; Rec.Reminder1)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Reminder1 field.';
                }
                field(Reminder1Time; Rec.Reminder1Time)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Reminder1Time field.';
                }
                field(Reminder2; Rec.Reminder2)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Reminder2 field.';
                }
                field(Reminder2Time; Rec.Reminder2Time)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Reminder2Time field.';
                }
                field("Requested Amount"; Rec."Requested Amount")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Requested Amount field.';
                }
                field("Reschedule by"; Rec."Reschedule by")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Reschedule by field.';
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Responsibility Center field.';
                }
                field("SMS Sent"; Rec."SMS Sent")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the SMS Sent field.';
                }
                field("Sales Agent"; Rec."Sales Agent")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Sales Agent field.';
                }
                field("Share Capital"; Rec."Share Capital")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Share Capital field.';
                }
                field(Source; Rec.Source)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Source field.';
                }
                field("Staff No"; Rec."Staff No")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Staff No field.';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.';
                }
                field(SystemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the SystemId field.';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.';
                }
                field("Total Arrears BF"; Rec."Total Arrears BF")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Total Arrears BF field.';
                }
                field("Total In Arrears"; Rec."Total In Arrears")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Total In Arrears field.';
                }
                field("Transfer Mode"; Rec."Transfer Mode")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Transfer Mode field.';
                }
                field("Witness Member No"; Rec."Witness Member No")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Witness Member No field.';
                }
                field("Witness Name"; Rec."Witness Name")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Witness Name field.';
                }
                field("Witness Phone No"; Rec."Witness Phone No")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Witness Phone No field.';
                }
            }
            group("Loan Information")
            {
                Caption = 'Loan Information';
                field("Loan Product Type"; Rec."Loan Product Type")
                {
                    ApplicationArea = All;
                    ShowMandatory = true;
                    ToolTip = 'Specifies the value of the Loan Product Type field.';
                }
                field("Loan Product Type Name"; Rec."Loan Product Type Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Loan Product Type Name field.';
                }
                field("Interest Calculation Method"; Rec."Interest Calculation Method")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Interest Calculation Method field.';
                }
                field(Installments; Rec.Installments)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Installments field.';
                }
                field(Interest; Rec.Interest)
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Interest field.';
                }
                field("Applied Amount"; Rec."Applied Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Applied Amount field.';
                }
                field("System Recommended Amount"; Rec."System Recommended Amount")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the System Recommended Amount field.';
                }
                field("Approved Amount"; Rec."Approved Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Approved Amount field.';
                }
                field("Net Surplus_Deficit"; Rec."Net Surplus_Deficit")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Net Surplus Deficit field.';
                }
                field("Purpose of Loan"; Rec."Purpose of Loan")
                {
                    ApplicationArea = All;
                    MultiLine = true;
                    ToolTip = 'Specifies the value of the Purposed ID field.';
                }
                field("Installment Amount"; Rec."Installment Amount")
                {
                    ApplicationArea = All;
                    Visible = false;
                    ToolTip = 'Specifies the value of the Installment Amount field.';
                }
                field("Repayment"; Rec."Repayment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Repayment field.';
                }
                field("Repayment Frequency"; Rec."Repayment Frequency")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Repayment Frequency field.';
                }
                field("Loan Rejection Reason"; Rec."Loan Rejection Reason")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Rejection Reason field.';
                }
                field("Station/Department"; Rec."Station/Department")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Station/Department field.';
                }
                field("Captured By"; Rec."Captured By")
                {
                    ApplicationArea = All;

                    ToolTip = 'Specifies the value of the Captured By field.';
                }
            }
            group("Disbursement & Payments")
            {
                Caption = 'Disbursement & Payments';
                field("Disbursement Date"; Rec."Disbursement Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Disbursement Date field.';
                }
                field("Repayment Start Date"; Rec."Repayment Start Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Repayment Start Date field.';
                }
                field("Next Repayment Date"; Rec."Next Repayment Date")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Next Repayment Date field.';
                }
                field("Expected Date of Completion"; Rec."Expected Date of Completion")
                {
                    ApplicationArea = All;
                    Editable = false;
                    ToolTip = 'Specifies the value of the Expected Date of Completion field.';
                }
                field("Tracking Fees"; Rec."Tracking Fees")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Tracking Fees field.';
                }
                field(Incharge; Rec.Incharge)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Incharge field.';
                }
                field("Batch No"; Rec."Batch No")
                {
                    ApplicationArea = All;
                    Editable = true;
                    ToolTip = 'Specifies the value of the Batch No field.';
                }
                field("Bank Account No"; Rec."Bank Account No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bank Account No field.';
                }
                field("MPESA Mobile No"; Rec."MPESA Mobile No")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the MPESA Mobile No field.';
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
                field("Cost of Project"; Rec."Cost of Project")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cost of Project field.';
                }
                field("Own Contribution"; Rec."Own Contribution")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Own Contribution field.';
                }
            }
            group("Loan Requirements")
            {
                part(LoanRequirements; "Loan Requirements")
                {
                    SubPageLink = "Document Type ID" = field("Loan No");
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
                action("Guarantors & Security")
                {
                    ApplicationArea = All;
                    Caption = 'Guarantors & Security';
                    Image = SocialSecurity;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    RunObject = page "Guarantors and Security";
                    trigger OnAction()
                    begin

                    end;
                }
                action("Loan Offset")
                {
                    ApplicationArea = All;
                    Caption = 'Loan Offset';
                    Image = Add;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    RunObject = page "Loan Top Up";
                    trigger OnAction()
                    begin

                    end;
                }
                action("External Loan Clearance")
                {
                    ApplicationArea = All;
                    Caption = 'External Loan Clearance';
                    Image = Copy;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    RunObject = page "Other Commitments Clearance";
                    trigger OnAction()
                    begin

                    end;
                }
                action("Open Loan Appeal")
                {
                    ApplicationArea = All;
                    Caption = 'Open Loan Appeal';
                    Image = Approval;
                    Promoted = true;
                    PromotedCategory = Category4;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    // RunObject = page "Guarantors and Security";
                    trigger OnAction()
                    begin

                    end;
                }
            }
            group(Reports)
            {
                Caption = 'Report';
                action("Loan History")
                {
                    ApplicationArea = All;
                    Caption = 'Loan History';
                    Image = History;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    RunObject = page "Loan Posted";
                    trigger OnAction()
                    begin

                    end;
                }
                action("Loan Appraisal")
                {
                    ApplicationArea = All;
                    Caption = 'Loan Appraisal';
                    Image = Loaners;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    // RunObject = page "";
                    trigger OnAction()
                    begin

                    end;
                }
                action("Generate Repayment Schedule")
                {
                    ApplicationArea = All;
                    Caption = 'Generate Repayment Schedule';
                    Image = Sales;
                    Promoted = true;
                    PromotedCategory = Category5;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    // RunObject = page "Guarantors and Security";
                    trigger OnAction()
                    var
                        CreditManagement: Codeunit "Credit Management";
                        LoanNo: Code[20];
                    begin
                        LoanNo := Rec."Loan No";
                        CreditManagement.generateSchedule(LoanNo);
                        // REPORT.RunModal(71706575, false);
                    end;
                }
            }
            group(Attachments)
            {
                Caption = 'Attachments';
                action("Report1")
                {
                    ApplicationArea = All;
                    Caption = 'Attachments';
                    Image = Attach;
                    Promoted = true;
                    PromotedCategory = Category6;
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
            group(Approval)
            {
                Caption = 'Approval';
                action("Send Approval Request")
                {

                    ApplicationArea = All;
                    Caption = 'Send Approval Request';
                    Image = SendApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category7;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    Enabled = CanRequestApprovalForFlow and (Rec.Status = Rec.Status::Application);
                    trigger OnAction()
                    var
                        Loan: Record Loans;
                    begin
                        rec.TestField(Status, Rec.Status::Application);
                        Loan.Reset();
                        if ApprovalsMgmt.CheckLoanApprovalWorflowEnabled(Rec) then
                            ApprovalsMgmt.OnSendLoanForApproval(Rec);
                    end;
                }
                action("Cancel Approval Request")
                {

                    ApplicationArea = All;
                    Caption = 'Cancel Approval Request';
                    Image = CancelApprovalRequest;
                    Promoted = true;
                    PromotedCategory = Category7;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    // Enabled = CanCancelApprovalForRecord;
                    Visible = (Rec.Status = Rec.Status::"Pending Approval");
                    trigger OnAction()
                    var
                        WorkflowWebhookMgt: Codeunit "Workflow Webhook Management";
                    begin
                        rec.TestField(Status, Rec.Status::"Pending Approval");
                        // ApprovalsMgmt.OnCancelLoanApprovalRequest(Rec);
                        //  WorkflowWebhookMgt.FindAndCancel(Rec.RecordId);
                        if (rec.Status = rec.Status::"Pending Approval") then begin
                            Rec.Status := Rec.Status::Application;
                            Rec.Modify();
                        end;
                    end;
                }
                action("Acceptance Letter")
                {

                    ApplicationArea = All;
                    Caption = 'Acceptance Letter Received';
                    Image = Receipt;
                    Promoted = true;
                    PromotedCategory = Category7;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin

                    end;
                }
                action("Move Loan File")
                {

                    ApplicationArea = All;
                    Caption = 'Move Loan File';
                    Image = MoveToNextPeriod;
                    Promoted = true;
                    PromotedCategory = Category7;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                    trigger OnAction()
                    begin

                    end;
                }
                action("Approvals Entries")
                {

                    ApplicationArea = All;
                    Caption = 'Approvals Entries';
                    Image = Approvals;
                    Promoted = true;
                    PromotedCategory = Category7;
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
            group(Approvalz)
            {
                Caption = 'Approval';
                action(Approve)
                {
                    ApplicationArea = Suite;
                    Caption = 'Approve';
                    Image = Approve;
                    Promoted = true;
                    PromotedCategory = Category8;
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
                    PromotedCategory = Category8;
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
                    PromotedCategory = Category8;
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
                    PromotedCategory = Category8;
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
        ApprovalEntry.SetRange("Document No.", Rec."Loan No");
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
        if Rec.Status = Rec.Status::Application then
            EditPage := true;
    end;

}
