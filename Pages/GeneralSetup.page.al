page 71706586 "General Setup"
{
    Caption = 'General Setup';
    PageType = Card;
    SourceTable = "General Setup";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General'; 
                 field("Excise Duty"; Rec."Excise Duty")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Excise Duty field.';
                } 
                 field("Excise Duty GL"; Rec."Excise Duty GL")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Excise Duty GL field.';
                }  
                
            }
            group(Customer)
            {
             Caption='Customer'; 
                field("Registration Fee"; Rec."Registration Fee")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Registration Fee field.';
                }
                field("Min_Member Age"; Rec."Min_Member Age")
                {
                    ApplicationArea = All;
                    caption='Min member Age';
                    ToolTip = 'Specifies the value of the Min_Member Age field.';
                } 
                field("Customer Post_Grp"; Rec."Customer Post_Grp")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Customer Post_Grp field.';
                }  
                field("Max_Member Age"; Rec."Max_Member Age")
                {
                    ApplicationArea = All;
                    Caption='Max Member Age';
                    ToolTip = 'Specifies the value of the Max_Member Age field.';
                }             
                field("Rejoining Fee"; Rec."Rejoining Fee")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Rejoining Fee field.';
                }                
                field("Enforce Picture & Signature"; Rec."Enforce Picture & Signature")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Enforce Picture & Signature field.';
                } 
                field("Dormancy Period"; Rec."Dormancy Period")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Dormancy Period field.';
                } 
                field("Recruitment Commission"; Rec."Recruitment Commission")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Recruitment Commission field.';
                } 
                field("Recruitment Expense GL"; Rec."Recruitment Expense GL")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Recruitment Expense GL field.';
                }
                field("Top Up Commission"; Rec."Top Up Commission")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Top Up Commission field.';
                } 
                field("Paybill Bank Account"; Rec."Paybill Bank Account")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Paybill Bank Account field.';
                }
                field("Application Fees"; Rec."Application Fees")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Fees field.';
                }
                field("Application Fees GL Account"; Rec."Application Fees GL Account")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Application Fees GL Account field.';
                } 
                
                field("Statement Path"; Rec."Statement Path")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Statement Path field.';
                }
                field("Demand Letter Path"; Rec."Demand Letter Path")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Demand Letter Path field.';
                }
                field("Offer Letter Path"; Rec."Offer Letter Path")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Offer Letter Path field.';
                }  
                field("Repayment Schedule Path"; Rec."Repayment Schedule Path")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Repayment Schedule Path field.';
                }  
                field("SpringHela Disbursment"; Rec."SpringHela Disbursment")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the SpringHela Disbursment field.';
                } 
                
                
            }
            group(Loans)
                {
                    Caption='Loans';
                 field("Days In Arrears"; Rec."Days In Arrears")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Days In Arrears-Suspend Interest field.';
                }
                field("Max_Days on Arrears"; Rec."Max_Days on Arrears")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Max_Days on Arrears field.';
                }
                field("Interest Holiday (Days)"; Rec."Interest Holiday (Days)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Interest Holiday (Days) field.';
                }
                field("Minimum Loan Period (Months)"; Rec."Minimum Loan Period (Months)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Minimum Loan Period (Months) field.';
                }
                field("Maximum Valuation Period"; Rec."Maximum Valuation Period")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Maximum Valuation Period field.';
                }
                field("Interest Accrual Batch"; Rec."Interest Accrual Batch")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Interest Accrual Batch field.';
                }
                field("Interest Accrual Template"; Rec."Interest Accrual Template")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Interest Accrual Template field.';
                } 
                field("Loan Provisioning_Loss"; Rec."Loan Provisioning_Loss")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Provisioning_Loss field.';
                }
                field("Loan Provisioning_Performin"; Rec."Loan Provisioning_Performin")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Provisioning_Performin field.';
                }
                field("Loan Provisioning_Substd"; Rec."Loan Provisioning_Substd")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Provisioning_Substd field.';
                }
                field("Loan Provisioning_Watch"; Rec."Loan Provisioning_Watch")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan Provisioning_Watch field.';
                }
                field("Loan provisioning"; Rec."Loan provisioning")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Loan provisioning_Doubt  field.';
                } 
                field("Date Filter"; Rec."Date Filter")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Date Filter field.';
                }            
                field("Guarantors Multiplier"; Rec."Guarantors Multiplier")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Guarantors Multiplier field.';
                }                
                field("Max Loans to Guarantee"; Rec."Max Loans to Guarantee")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Max Loans to Guarantee field.';
                }
                field("Anniversary Days"; Rec."Anniversary Days")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Anniversary Days field.';
                }                
                field("Checkoff Option"; Rec."Checkoff Option")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Checkoff Option field.';
                }
                field("Cheque Holding Fee"; Rec."Cheque Holding Fee")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Cheque Holding Fee field.';
                }                           
                field("Days for Checkoff"; Rec."Days for Checkoff")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Days for Checkoff field.';
                }                                
                field("Processing Fee"; Rec."Processing Fee")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Processing Fee field.';
                }
                field("Devidends Computation Method"; Rec."Devidends Computation Method")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Devidends Computation Method field.';
                }
                field("Dividends Rate"; Rec."Dividends Rate")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Dividends Rate field.';
                }                
                field("FDeposit Interest Expense A_C"; Rec."FDeposit Interest Expense A_C")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the FDeposit Interest Expense A_C field.';
                }
                field("Feneral Amount"; Rec."Feneral Amount")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Feneral Amount field.';
                }
                field("Fixed Deposit Interest"; Rec."Fixed Deposit Interest")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Fixed Deposit Interest field.';
                }
                field("Holding Charges A_C"; Rec."Holding Charges A_C")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Holding Charges A_C field.';
                }
                field("Insurance Name"; Rec."Insurance Name")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Insurance Name field.';
                }                            
                field("Interest on Devidends"; Rec."Interest on Devidends")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Interest on Devidends field.';
                }
                       
                field("Minimum Contribution"; Rec."Minimum Contribution")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Minimum Contribution field.';
                }                
                field("Online Appl_Max_Loan"; Rec."Online Appl_Max_Loan")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Online Appl_Max_Loan field.';
                }                      
                field("Registration Fee Amount"; Rec."Registration Fee Amount")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Registration Fee Amount field.';
                }
                field("Self Guarantee"; Rec."Self Guarantee")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Self Guarantee field.';
                }
                field("Share Capital"; Rec."Share Capital")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Share Capital field.';
                }
                field("Show Beneficiaries"; Rec."Show Beneficiaries")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Show Beneficiaries field.';
                }                               
                field("Top Up Commission GL"; Rec."Top Up Commission GL")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Top Up Commission GL field.';
                }
                field("Unlogged Claims Account"; Rec."Unlogged Claims Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Unlogged Claims Account field.';
                }
                field("Withdrawal Company Code"; Rec."Withdrawal Company Code")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Withdrawal Company Code field.';
                }
                field("Withdrawal Fee"; Rec."Withdrawal Fee")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Withdrawal Fee field.';
                }
                field("Withdrawal Fee Amount"; Rec."Withdrawal Fee Amount")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Withdrawal Fee Amount field.';
                }
                field("Withdrawal Notice Period"; Rec."Withdrawal Notice Period")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Withdrawal Notice Period field.';
                }
                field("Witholding Tax GL"; Rec."Witholding Tax GL")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Witholding Tax GL field.';
                }
                field("Witholding Tax: Interest"; Rec."Witholding Tax: Interest")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Witholding Tax: Interest field.';
                }
                field("Freeze SpringHela Penalty"; Rec."Freeze SpringHela Penalty")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Freeze SpringHela Penalty field.';
                }  
                }     
        }
    }
}
