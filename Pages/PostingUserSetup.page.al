page 71706622 "Posting User Setup"
{
    ApplicationArea = All;
    Caption = 'Posting User Setup';
    PageType = List;
    SourceTable = "Posting User Type";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(UserID; Rec.UserID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the UserID field.';
                }
                 field("Cashier Journal Template"; Rec."Cashier Journal Template")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cashier Journal Template field.';
                }
                field("Cashier Journal Batch"; Rec."Cashier Journal Batch")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Cashier Journal Batch field.';
                }
                field("Type"; Rec."Type")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Type field.';
                }                               
                field("Default Bank"; Rec."Default Bank")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Default Bank field.';
                }
                field("No of Open Transactions"; Rec."No of Open Transactions")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No of Open Transactions field.';
                }
                field("Loans Template"; Rec."Loans Template")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loans Template field.';
                }
                field("Loans Batch"; Rec."Loans Batch")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loans Batch field.';
                }
                field("Check Off Template"; Rec."Check Off Template")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Check Off Template field.';
                }
                field("Check Off Batch"; Rec."Check Off Batch")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Check Off Batch field.';
                }
                field("Member No_"; Rec."Member No_")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Member No_ field.';
                }
                field("Interest Account Template"; Rec."Interest Account Template")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Interest Account Template field.';
                }
                field("Interest Account Batch"; Rec."Interest Account Batch")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Interest Account Batch field.';
                }
                field("Transfer Journal Batch"; Rec."Transfer Journal Batch")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transfer Journal Batch field.';
                }
                field("Transfer Journal Template"; Rec."Transfer Journal Template")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Transfer Journal Template field.';
                }                 
                field("Fixed Deposit Template"; Rec."Fixed Deposit Template")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fixed Deposit Template field.';
                }
                field("Fixed Deposit Batch"; Rec."Fixed Deposit Batch")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Fixed Deposit Batch field.';
                }
                field("Responsibility Centre"; Rec."Responsibility Centre")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Responsibility Centre field.';
                }
                field("Branch Code";Rec."Branch Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Branch Code field.';
                }
                field("Relationships Officer Code"; Rec."Relationships Officer Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Relationships Officer Code field.';
                }  
                field("Withdrawal Batch"; Rec."Withdrawal Batch")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Withdrawal Batch field.';
                }
                field("Withdrawal Template"; Rec."Withdrawal Template")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Withdrawal Template field.';
                }             
                field("ATM Charges Journal Batch"; Rec."ATM Charges Journal Batch")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the ATM Charges Journal Batch field.';
                }
                field("ATM Charges Journal Template"; Rec."ATM Charges Journal Template")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the ATM Charges Journal Template field.';
                }
                field("Accrual_ Fee_ Journal Batch"; Rec."Accrual_ Fee_ Journal Batch")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Accrual_ Fee_ Journal Batch field.';
                }
                field("Accrual_ Fee_Journal Template"; Rec."Accrual_ Fee_Journal Template")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Accrual_ Fee_Journal Template field.';
                }
                field("Bills Batch"; Rec."Bills Batch")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Bills Batch field.';
                }
                field("Bills Template"; Rec."Bills Template")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Bills Template field.';
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Blocked field.';
                }
                field("Charge Application Fees"; Rec."Charge Application Fees")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Charge Application Fees field.';
                }
                field("Cheque Clearance Account"; Rec."Cheque Clearance Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Cheque Clearance Account field.';
                }
                field("Cheque Disbursement A_c"; Rec."Cheque Disbursement A_c")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Cheque Disbursement A_c field.';
                }
                field("Cheque Discounting Template"; Rec."Cheque Discounting Template")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Cheque Discounting Template field.';
                }
                field("Cheque Discounting Batch"; Rec."Cheque Discounting Batch")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Cheque Discounting Batch field.';
                }
                field(Collateral; Rec.Collateral)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Collateral field.';
                }
                field("Delegates Pay_ Journal Batch"; Rec."Delegates Pay_ Journal Batch")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Delegates Pay_ Journal Batch field.';
                }
                field("Delegates Pay_Journal Template"; Rec."Delegates Pay_Journal Template")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Delegates Pay_Journal Template field.';
                }
                field("Deposit Boosting?"; Rec."Deposit Boosting?")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Deposit Boosting? field.';
                }
                field("Display On Portal"; Rec."Display On Portal")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Display On Portal field.';
                }
                field("Does Not Require Guarantor"; Rec."Does Not Require Guarantor")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Does Not Require Guarantor field.';
                }
                field("Excess Account"; Rec."Excess Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Excess Account field.';
                }
                field("Image Link"; Rec."Image Link")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Image Link field.';
                }
                field("Increased Interest Rate"; Rec."Increased Interest Rate")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Increased Interest Rate field.';
                }
                field("Increased Maximum Loan"; Rec."Increased Maximum Loan")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Increased Maximum Loan field.';
                }
                field("Increased Repayment Interval"; Rec."Increased Repayment Interval")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Increased Repayment Interval field.';
                }
                field("Insurance Receivable Account"; Rec."Insurance Receivable Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Insurance Receivable Account field.';
                }
                field("Loan Coding"; Rec."Loan Coding")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan Coding field.';
                }
                field("Loan Prov_ Expense G_L Acc_"; Rec."Loan Prov_ Expense G_L Acc_")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan Prov_ Expense G_L Acc_ field.';
                }
                field("Loan Prov_ G_L Acc_"; Rec."Loan Prov_ G_L Acc_")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan Prov_ G_L Acc_ field.';
                }
                field("MPESA Disbursement A_c"; Rec."MPESA Disbursement A_c")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the MPESA Disbursement A_c field.';
                }
                field("Max_ Cashier Withholding"; Rec."Max_ Cashier Withholding")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Max_ Cashier Withholding field.';
                }
                field("Max_ Deposit Limit"; Rec."Max_ Deposit Limit")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Max_ Deposit Limit field.';
                }
                field("Max_ Withdrawal Limit"; Rec."Max_ Withdrawal Limit")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Max_ Withdrawal Limit field.';
                }
                field("Maximum Portal Amount"; Rec."Maximum Portal Amount")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Maximum Portal Amount field.';
                }
                field("Micro Transfer Batch"; Rec."Micro Transfer Batch")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Micro Transfer Batch field.';
                }
                field("Micro Transfer Template"; Rec."Micro Transfer Template")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Micro Transfer Template field.';
                }
                field("Min_ Balance"; Rec."Min_ Balance")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Min_ Balance field.';
                }
                field("Minimum Installments"; Rec."Minimum Installments")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Minimum Installments field.';
                }
                field("Notify on Loan Completion"; Rec."Notify on Loan Completion")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Notify on Loan Completion field.';
                }
                field("Over Draft Batch"; Rec."Over Draft Batch")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Over Draft Batch field.';
                }
                field("Over Draft Template"; Rec."Over Draft Template")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Over Draft Template field.';
                }
                field("Penalty Grace Period(Days)"; Rec."Penalty Grace Period(Days)")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Penalty Grace Period(Days) field.';
                }
                field("Processing Fees Account"; Rec."Processing Fees Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Processing Fees Account field.';
                }
                field("Bankers Cheque Account"; Rec."Bankers Cheque Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Bankers Cheque Account field.';
                }
                field("Product Category"; Rec."Product Category")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Product Category field.';
                }
                field("Product Name"; Rec."Product Name")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Product Name field.';
                }
                field("QFS Code"; Rec."QFS Code")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the QFS Code field.';
                }
                field("Product Type"; Rec."Product Type")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Product Type field.';
                }
                field("Receipt Template"; Rec."Receipt Template")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Receipt Template field.';
                }
                field("Salary Journal Batch"; Rec."Salary Journal Batch")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Salary Journal Batch field.';
                }
                field("Salary Journal Template"; Rec."Salary Journal Template")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Salary Journal Template field.';
                }
                field("Receipt Batch"; Rec."Receipt Batch")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Receipt Batch field.';
                }
                field("Shortage Account"; Rec."Shortage Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Shortage Account field.';
                }                
                field("Supervisor E-Mail"; Rec."Supervisor E-Mail")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Supervisor E-Mail field.';
                }
                field("Supervisor Mobile No"; Rec."Supervisor Mobile No")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Supervisor Mobile No field.';
                }
                field("Suspended Interest Account"; Rec."Suspended Interest Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Suspended Interest Account field.';
                }
                field("Suspended Penalty Account"; Rec."Suspended Penalty Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Suspended Penalty Account field.';
                }
                field(Target; Rec.Target)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Target field.';
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Transaction Type field.';
                }                
            }
        }
    }
}
