page 71706623 Product_Type
{
    ApplicationArea = All;
    Caption = 'Product Types';
    PageType = List;
    SourceTable = "Product Types";
    UsageCategory = Lists;
    CardPageId="Product Type";
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Product ID"; Rec."Product ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Product ID field.';
                }
                field("Product Name"; Rec."Product Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Product Name field.';
                }
                field("Product Description"; Rec."Product Description")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Product Description field.';
                }
                field("Minimum Loan Amount"; Rec."Minimum Loan Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Minimum Loan Amount field.';
                }
                field("Maximum Loan Amount"; Rec."Maximum Loan Amount")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Maximum Loan Amount field.';
                }
                field("Minimum Installments"; Rec."Minimum Installments")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Minimum Installments field.';
                }
                field("Ordinary Default Intallments"; Rec."Ordinary Default Intallments")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Ordinary Default Intallments field.';
                }
                field("Installment Repayment Interval"; Rec."Installment Repayment Interval")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Installment Repayment Interval field.';
                }
                field("Interest Calculation Method"; Rec."Interest Calculation Method")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Interest Calculation Method field.';
                }
                field("Interest Rate"; Rec."Interest Rate")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Interest Rate field.';
                }
                field("Image Link"; Rec."Image Link")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Image Link field.';
                }
                field("Mobile Loan"; Rec."Mobile Loan")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Mobile Loan field.';
                }
                field("Display On Portal"; Rec."Display On Portal")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Display On Portal field.';
                }
                 field("Repayment Frequency"; Rec."Repayment Frequency")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Repayment Frequency field.';
                }
                field("Recovery Priority"; Rec."Recovery Priority")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Recovery Priority field.';
                }
                field("Product Category"; Rec."Product Category")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Product Category field.';
                }                
                field(Collateral; Rec.Collateral)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Collateral field.';
                }
                field(Target; Rec.Target)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Target field.';
                }
                field("Notify on Loan Completion"; Rec."Notify on Loan Completion")
                {
                   ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Notify on Loan Completion field.';
                }
                field("Allow Multiple Loans"; Rec."Allow Multiple Loans")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Allow Multiple Loans field.';
                }                
                field("Loan Coding"; Rec."Loan Coding")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan Coding field.';
                }
                field("Charge Application Fees"; Rec."Charge Application Fees")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Charge Application Fees field.';
                }
                field("Loan Account _G_L_"; Rec."Loan Account _G_L_")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan Account _G_L_ field.';
                }
                field("Loan Interest Account _G_L_"; Rec."Loan Interest Account _G_L_")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan Interest Account _G_L_ field.';
                }
                field("Interest Rec_ Account_G_L_"; Rec."Interest Rec_ Account_G_L_")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Interest Rec_ Account_G_L_ field.';
                }
                field("Penalty Receivable"; Rec."Penalty Receivable")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Penalty Receivable field.';
                }
                field("Penalty Income Account"; Rec."Penalty Income Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Penalty Income Account field.';
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
                field("Loan Prov_ Expense G_L Acc"; Rec."Loan Prov_ Expense G_L Acc")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan Prov_ Expense G_L Acc field.';
                }
                field("Loan Prov_ G_L Acc_"; Rec."Loan Prov_ G_L Acc_")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan Prov_ G_L Acc field.';
                }                
                field("Grace Period - Interest"; Rec."Grace Period - Interest")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Grace Period - Interest field.';
                }
                field("Penalty Grace Period(Days)"; Rec."Penalty Grace Period(Days)")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Penalty Grace Period(Days) field.';
                }
                field("Penalty Percentage"; Rec."Penalty Percentage")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Penalty Percentage field.';
                }
                field("Maximum Guarantors"; Rec."Maximum Guarantors")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Maximum Guarantors field.';
                }                
                field("Maximum Portal Amount"; Rec."Maximum Portal Amount")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Maximum Portal Amount field.';
                }
                field("Min Customer Age"; Rec."Min Customer Age")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Minimum Customer Age field.';
                }
                field("Minimum Contribution"; Rec."Minimum Contribution")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Minimum Contribution field.';
                }
                field("Min_ Re-application Period"; Rec."Min_ Re-application Period")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Min_ Re-application Period field.';
                }
                field("Minimum Guarantors"; Rec."Minimum Guarantors")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Minimum Guarantors field.';
                }
                field("Minimum Guarantors on Max Amt"; Rec."Minimum Guarantors on Max Amt")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Minimum Guarantors on Max Amt field.';
                }         
                field("Nature of Loan"; Rec."Nature of Loan")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Nature of Loan field.';
                }
                field("No_ of Salary Times"; Rec."No_ of Salary Times")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the No_ of Salary Times field.';
                }                
                field("Processing Fees Account"; Rec."Processing Fees Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Processing Fees Account field.';
                }
                field("Product Type"; Rec."Product Type")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Product Type field.';
                }
                field("QFS Code"; Rec."QFS Code")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the QFS Code field.';
                }
                field("Max_Customer Age"; Rec."Max_Customer Age")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Max_Customer Age field.';
                }
                field("Recovery Mode"; Rec."Recovery Mode")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Recovery Mode field.';
                }
                field("Max Amt on Guarantors"; Rec."Max Amt on Guarantors")
                {
                   ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Max Amt on Guarantors field.';
                }               
                field("Increased Repayment Interval"; Rec."Increased Repayment Interval")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Increased Repayment Interval field.';
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
                field("Does Not Require Guarantor"; Rec."Does Not Require Guarantor")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Does Not Require Guarantor field.';
                }
                field("Grace Period - Principle"; Rec."Grace Period - Principle")
                {
                   ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Grace Period - Principle field.';
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Transaction Type field.';
                }
                field("Report ID"; Rec."Report ID")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Report ID field.';
                }
                field("Loan Disbursement Account"; Rec."Loan Disbursement Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan Disbursement Account field.';
                }
                field("Insurance Receivable Account"; Rec."Insurance Receivable Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Insurance Receivable Account field.';
                }                
                field("Deposits Multiplier"; Rec."Deposits Multiplier")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Deposits Multiplier field.';
                }
                field("Deposit Boosting?"; Rec."Deposit Boosting?")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Deposit Boosting? field.';
                }
                field("Compute Interest Due on Postin"; Rec."Compute Interest Due on Postin")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Compute Interest Due on Postin field.';
                }
                field(Blocked; Rec.Blocked)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Blocked field.';
                }
                field("Loan Span"; Rec."Loan Span")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan Span field.';
                }                
                field(Source; Rec.Source)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Source field.';
                }
            }
        }
    }
}
