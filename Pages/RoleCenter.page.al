page 71706625 "Loans Management"
{
    Caption = 'Credit Management';
    PageType = RoleCenter;        
    actions
    {
        area(Sections)
        {
            group("Credit Management")
            {             
                
                    Caption = 'Credit Management';
                    group("New Customer Process")
                    {
                       Caption='New Customer Process';
                       action("Member Application")
                    {
                        ApplicationArea = All;
                        Caption = 'Customer Application';
                        RunObject = page "Customer_List";
                    }  
                       action("Member_Application History")
                    {
                        ApplicationArea = All;
                        Caption = 'Customer Application Archive';
                        RunObject = page "Member_Application History";
                    }           
                    } 
                    group(Customers)
                    { 
                        Caption='Customers';                       
                        action("Customers List")
                    {
                        ApplicationArea = All;
                        Caption = 'Customers List';
                        RunObject = page "Member List";
                    }   
                        action("Customers Editable")
                    {
                        ApplicationArea = All;
                        Caption = 'Customers Editable';
                        RunObject = page "Member Editable";
                    }   
                     action("Customers Editable Archive")
                    {
                        ApplicationArea = All;
                        Caption = 'Customers Editable Archive';
                        RunObject = page "Member Editable Archive";
                    } 
                     action("Penalty Accrued")
                    {
                        ApplicationArea = All;
                        Caption = 'Penalty Accrued';
                        RunObject = page "Penalty Accrued";
                    }  
                     action("Customer Rating")
                    {
                        ApplicationArea = All;
                        Caption = 'Customer Rating';
                        RunObject = page "Customer Rating";
                    } 
                     action("Customer Requests")
                    {
                        ApplicationArea = All;
                        Caption = 'Customer Requests';
                        RunObject = page "Customer_Requests";
                    }
                    action("Employers List")
                    {
                        ApplicationArea = All;
                        Caption = 'Employers List';
                        RunObject = page Employers;
                    } 
                   /* action("Loanee Employers")
                    {
                        ApplicationArea = All;
                        Caption = 'Loanee Employers';
                        RunObject = report Employers_Report;
                    } */                  
                    } 
                    group("Loan Processing")
                    {
                        Caption='Loan Processing';
                        action("Loans")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Application List';
                        RunObject = page "Loan Application";
                    }
                        action("Loan_Disbursement List")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan_Disbursement List';
                        RunObject = page "Loan_Disbursement List";
                    }
                    action("RO_Reasignment")
                    {
                        ApplicationArea = All;
                        Caption = 'RO Transfer List';
                        RunObject = page "RO_Reasignment";
                    }
                    group("Posted Loans")
                    {                        
                        Caption = 'Posted Loans';
                        action("Posted Loans List")
                    {
                        ApplicationArea = All;
                        Caption = 'Posted Loans List';
                        RunObject = page "Loan Posted";
                    }
                        
                    }
                    
                    } 
                    group("Loan Securities & Payments")
                    {
                        Caption='Loan Securities & Payments';
                        action("External Guarantors")
                    {
                        ApplicationArea = All;
                        Caption = 'External Guarantors';
                        RunObject = page "Loan Guarantors";
                    }
                        action("Loan Collaterals")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Collaterals';
                        RunObject = page Loan_Collaterals;
                    }
                        action(Insurance_Policy)
                    {
                        ApplicationArea = All;
                        Caption = 'Insurance Policy';
                        RunObject = page Insurance_Policy;
                    }
                    action("Security Discounting")
                    {
                        ApplicationArea = All;
                        Caption = 'Security Discounting';
                        RunObject = page "Security Discounting";
                    }
                    action("Paybill Buffer")
                    {
                        ApplicationArea = All;
                        Caption = 'Paybill Buffer';
                        RunObject = page "Paybill Buffer";
                    }
                    action("Bank Codes")
                    {
                        ApplicationArea = All;
                        Caption = 'Bank Codes';
                        RunObject = page "Bank Codes";
                    }
                    } 
                    group("PD Cheques Management")
                    {
                       Caption='PD Cheques Management';
                       action("PD Cheque Management")
                    {
                        ApplicationArea = All;
                        Caption = 'PD Cheques';
                        RunObject = page PD_Cheques;
                    }
                       action("PD Cheques Holding")
                    {
                        ApplicationArea = All;
                        Caption = 'PD Cheques - Holding';
                        RunObject = page "PD Cheques Holding";
                    }
                      action("PD Cheques Banking")
                    {
                        ApplicationArea = All;
                        Caption = 'PD Cheques - Banking';
                        RunObject = page "PD Cheques Banking";
                    }
                     action("PD Cheques Pending")
                    {
                        ApplicationArea = All;
                        Caption = 'PD Cheques - Pending';
                        RunObject = page "PD Cheques Pending";
                    }
                     action("PD Cheques History")
                    {
                        ApplicationArea = All;
                        Caption = 'PD Cheques Register - History';
                        RunObject = page "PD Cheques History";
                    }
                    }
                    group(Receipts)
                    {
                        Caption='Receipts';
                        action(Member_Receipt)
                    {
                        ApplicationArea = All;
                        Caption = 'Customer Receipts List';
                        RunObject = page Member_Receipt;
                    }
                        action("Posted Customer Receipts List")
                    {
                        ApplicationArea = All;
                        Caption = 'Posted Customer Receipts List';
                        RunObject = page "Posted Receipt List";
                    }                    
                    group(Setup)
                    {                        
                        Caption = 'Setup';
                        action("Cash Management Setup")
                    {
                        ApplicationArea = All;
                        Caption = 'Cash Management Setup';
                        RunObject = page "Cash Management Setup";
                    } 
                    action("Payment & Receipt List")
                    {
                        ApplicationArea = All;
                        Caption = 'Receipt Types';
                        RunObject = page "Payment & Receipt List";
                    }
                  }                    
                    }
                    group("Periodic Activities")
                    {
                        Caption='Periodic Activities';
                         action(Loan_Rescheduling)
                    {
                        ApplicationArea = All;
                        Caption = 'LoanRescheduling';
                        RunObject = page "Loan_Rescheduling";
                    } 
                     group("Monthly Interest Activities")
                    {                        
                        Caption = 'Monthly Interest Activities';
                        action("Recover Loan - Due Date")
                    {
                        ApplicationArea = All;
                        Caption = 'Recover Loan - Due Date';
                        //RunObject = page "";
                    } 
                    action("Arrears Computation")
                    {
                        ApplicationArea = All;
                        Caption = 'Arrears Computation';
                        //RunObject = page "";
                    } 
                    action("Post Monthly Interest")
                    {
                        ApplicationArea = All;
                        Caption = 'Post Monthly Interest';
                        
                    }   
                    action("Post Monthly Interest - SBL")
                    {
                        ApplicationArea = All;
                        Caption = 'Post Monthly Interest - SBL';
                        //RunObject = page "";
                    } 
                    action("Recover Arrears")
                    {
                        ApplicationArea = All;
                        Caption = 'Recover Arrears';
                        //RunObject = page "";
                    } 
                    action("Change Penalty")
                    {
                        ApplicationArea = All;
                        Caption = 'Change Penalty';
                        //RunObject = page "";
                    } 
                  } 
                   group("CheckOff Processes")
                    {                        
                        Caption = 'CheckOff Processes';
                        action("Generate Checkoff Advice")
                    {
                        ApplicationArea = All;
                        Caption = 'Generate Checkoff Advice';
                        //RunObject = page "";
                    } 
                    action("Employer Checkoff Advice")
                    {
                        ApplicationArea = All;
                        Caption = 'Employer Checkoff Advice';
                        //RunObject = page "";
                    } 
                    action("Expected Deduction Report")
                    {
                        ApplicationArea = All;
                        Caption = 'Expected Deduction Report';
                        //RunObject = page "";
                    }   
                    action("Employer CheckOff Receipt")
                    {
                        ApplicationArea = All;
                        Caption = 'Employer CheckOff Receipt';
                        //RunObject = page "";
                    } 
                    action("Remedial Recovery")
                    {
                        ApplicationArea = All;
                        Caption = 'Remedial Recovery';
                        //RunObject = page "";
                    } 
                    action("Import Dates")
                    {
                        ApplicationArea = All;
                        Caption = 'Import Dates';
                        //RunObject = page "";
                    } 
                    action("Compute Arrears")
                    {
                        ApplicationArea = All;
                        Caption = 'Compute Arrears';
                        //RunObject = page "";
                    } 
                  }                      

                    }                
                        
                }
                  
              group("Group1")
                {
                    Caption = 'Credit Setup';
                    action("Credit No.Series")
                    {
                        ApplicationArea = All;
                        Caption = 'Credit No.Series';
                       RunObject = page "Credit No.Series";
                    }
                   action("Product Types")
                    {
                        ApplicationArea = All;
                        Caption = 'Product Types';
                        RunObject = page "Product_Type";
                    }
                    action("General Setup")
                    {                        
                        Caption = 'General Setup';
                        ApplicationArea = All;                       
                        RunObject = page "General Setup";
                    }
                    action("Posting User Setup")
                    {
                        ApplicationArea = All;
                        Caption = 'Posting User Setup';
                        RunObject = page "Posting User Setup";
                    }
                    action("Loan Exemption Approvals")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Exemption Approvals';
                        RunObject = page "Loan_Exemptions";
                    }
                    action("Collateral Charges")
                    {
                        ApplicationArea = All;
                        Caption = 'Collateral Charges';
                        RunObject = page "Collateral Charges";
                    }
                    action("Collateral Setup")
                    {
                        ApplicationArea = All;
                        Caption = 'Collateral Setup';
                       RunObject = page "Loan Collateral Setup";
                    }
                    action("County Codes")
                    {
                        ApplicationArea = All;
                        Caption = 'County Codes';
                        RunObject = page "County Codes";
                    }
                    action("Loan Documents")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Documents';
                        RunObject = page "Loan Documents";
                    }
                    action("Transaction Charges")
                    {
                        ApplicationArea = All;
                        Caption = 'Transaction Charges';
                        RunObject = page "Transaction Charges";
                    }
                }  
                group("Group2")
                {
                    Caption = 'Reports';
                    action("Customer Statement")
                    {
                        ApplicationArea = All;
                        Caption = 'Customer Statement';
                       /* RunObject = page "Customer Statement";*/
                    }
                    action("Application Register")
                    {
                        ApplicationArea = All;
                        Caption = 'Application Register';
                       /* RunObject = page " ";*/
                    }
                      action("Loan Register")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Register';
                       /* RunObject = page " ";*/
                    }
                    action("Collateral Register")
                    {
                        ApplicationArea = All;
                        Caption = 'Collateral Register';
                       /* RunObject = page " ";*/
                    }
                    action("Collateral Insurance")
                    {
                        ApplicationArea = All;
                        Caption = 'Collateral Insurance';
                       /* RunObject = page " ";*/
                    }
                      action("Loan Disbursed Summary")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Disbursed Summary';
                       /* RunObject = page " ";*/
                    }
                    action("Loan Disbursed Details")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Disbursed Details';
                       /* RunObject = page " ";*/
                    }
                     action("Loan Categorization")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Categorization';
                       /* RunObject = page " ";*/
                    }
                      action("Loan Difaulter Aging")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Difaulter Aging';
                       /* RunObject = page " ";*/
                    }
                     action("Loan Provision Summary")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Provision Summary';
                       /* RunObject = page " ";*/
                    }
                      action("Loan Outstanding")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Outstanding';
                       /* RunObject = page " ";*/
                    }
                      action("Loan Product Summary")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Product Summary';
                       /* RunObject = page " ";*/
                    }
                      action("Loan Insider Lending")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Insider Lending';
                       /* RunObject = page " ";*/
                    }
                      action("Customer List")
                    {
                        ApplicationArea = All;
                        Caption = 'Customer List';
                       /* RunObject = page " ";*/
                    }
                    action("Loan Balance VS Non Performing")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Balance VS Non Performing';
                       /* RunObject = page " ";*/
                    }
                    action("Customer Loans Register")
                    {
                        ApplicationArea = All;
                        Caption = 'Customer Loans Register';
                       /* RunObject = page " ";*/
                    }
                    action("Credit Comm-...rement Report")
                    {
                        ApplicationArea = All;
                        Caption = 'Credit Comm-...rement Report';
                       /* RunObject = page " ";*/
                    }
                    action("Loan Defaulter Notice 1")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Defaulter Notice 1';
                       /* RunObject = page " ";*/
                    }
                    action("Loan Defaulter...e1 Collateral")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Defaulter...e1 Collateral';
                       /* RunObject = page " ";*/
                    }
                    action("Loan Defaulter Notice 2")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Defaulter Notice 2';
                       /* RunObject = page " ";*/
                    }   
                    action("Loan Defaulter Notice 3")
                    {
                        ApplicationArea = All;
                        Caption = 'Loan Defaulter Notice 3';
                       /* RunObject = page " ";*/
                    }                 
                     action("Generate Repayment Schedule")
                    {
                        ApplicationArea = All;
                        Caption = 'Generate Repayment Schedule';
                       /* RunObject = page " ";*/
                    }
                      action("Repayment Schedule")
                    {
                        ApplicationArea = All;
                        Caption = 'Repayment Schedule';
                       /* RunObject = page " ";*/
                    }                     
                     action("Statement 2")
                    {
                        ApplicationArea = All;
                        Caption = 'Statement 2';
                       /* RunObject = page " ";*/
                    }
                }
            
        }
    }
}
profile "Loans Management"
{
Caption='Loans Manager';
RoleCenter= "Loans Management";
}

