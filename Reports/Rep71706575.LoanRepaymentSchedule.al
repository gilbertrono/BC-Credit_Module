report 71706575 "Loan Repayment Schedule"
{
    RDLCLayout = './Reports/LoanRepaymentSchedule.rdl';

    dataset
    {
        dataitem(Loans; Loans)
        {
            dataitem("Loan Repayment Schedule"; "Loan Repayment Schedule")
            {
                column(RepaymentDate_LoanRepaymentSchedule; 'Date')
                {
                }
                column(ROUND__Monthly_Repayment__10_____; 'Decimal')
                {
                }
                column(FORMAT__Repayment_Date__0_4_; 'Text')
                {
                }
                column(ROUND__Principal_Repayment__10_____; 'Decimal')
                {
                }
                column(ROUND__Monthly_Interest__10_____; 'Decimal')
                {
                }
                column(LoanBalance; 'Decimal')
                {
                }
                column(Loan_Repayment_Schedule__Repayment_Code_; 'Code[20]')
                {
                }
                column(ROUND__Monthly_Repayment__10______Control1000000043; 'Decimal')
                {
                }
                column(ROUND__Principal_Repayment__10______Control1000000014; 'Decimal')
                {
                }
                column(ROUND__Monthly_Interest__10______Control1000000015; 'Decimal')
                {
                }
                column(Monthly_RepaymentCaption; 'Label')
                {
                }
                column(InterestCaption; 'Label')
                {
                }
                column(Principal_RepaymentCaption; 'Label')
                {
                }
                column(Due_DateCaption; 'Label')
                {
                }
                column(Loan_BalanceCaption; 'Label')
                {
                }
                column(Loan_RepaymentCaption; 'Label')
                {
                }
                column(TotalCaption; 'Label')
                {
                }
                column(Loan_Repayment_Schedule_Loan_No_; 'Code[20]')
                {
                }
                column(Loan_Repayment_Schedule_Member_No_; 'Code[20]')
                {
                }
                column(Loan_Repayment_Schedule_Repayment_Date; 'Date')
                {
                }
                column(LoanAmount_LoanRepaymentSchedule; 'Decimal')
                {
                }
            }
            column(Name_CompanyInformation; 'Text[100]')
            {
            }
            column(CompanyInformation_Picture; 'Blob')
            {
            }
            column(Loans_Loans__Loan__No__; 'Code[50]')
            {
            }
            column(Loans_Loans__Client_Code_; 'Code[20]')
            {
            }
            column(Loans_Loans__Client_Name_; 'Text[50]')
            {
            }
            column(mName_Loans; 'Text')
            {
            }
            column(Loans_Loans__Loan_Product_Type_Name_; 'Text[50]')
            {
            }
            column(ltName_Loans; 'Text')
            {
            }
            column(Loans_Loans_Interest; 'Decimal')
            {
            }
            column(Installments_Loans; 'Integer')
            {
            }
            column(Loans__Repayment_Method_; 'Option')
            {
            }
            column(Intallments__Months_Caption; 'Label')
            {
            }
            column(Loans_Loans__Approved_Amount_; 'Decimal')
            {
            }
            column(Disbursment_DateCaption; 'Label')
            {
            }
            column(Current_InterestCaption; 'Label')
            {
            }
            column(Loan_AmountCaption; 'Label')
            {
            }
            column(Loan_ProductCaption; 'Label')
            {
            }
            column(Loan_No_Caption; 'Label')
            {
            }
            column(Account_No_Caption; 'Label')
            {
            }
            column(COMPANY_NAME; 'Text')
            {
            }
            column(GlobalDimension1Code_Loans; 'Code[20]')
            {
            }
            column(ROName_Loans; 'Text[100]')
            {
            }
        }
    }
    var
        CompanyInformation: Record "Company Information";
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        //TotalFor: Label;
        Duration: Integer;
        MemberLoan: Record Customer;
        IssuedDate: Date;
        //LoanCategory: Record "Loan Product Charge";
        i: Integer;
        LoanBalance: Decimal;
        CumInterest: Decimal;
        CumMonthlyRepayment: Decimal;
        CumPrincipalRepayment: Decimal;
        j: Integer;
        LoanApp: Record Loans;
        GroupName: Text[70];
        TotalPrincipalRepayment: Decimal;
        Rate: Decimal;
        BankDetails: Text[250];
        Cust: Record Customer;
        Intallments__Months_CaptionLbl: Label '';
        Disbursment_DateCaptionLbl: Label '';
        Current_InterestCaptionLbl: Label '';
        Loan_AmountCaptionLbl: Label '';
        Loan_ProductCaptionLbl: Label '';
        Loan_No_CaptionLbl: Label '';
        Account_No_CaptionLbl: Label '';
        Monthly_RepaymentCaptionLbl: Label '';
        InterestCaptionLbl: Label '';
        Principal_RepaymentCaptionLbl: Label '';
        Due_DateCaptionLbl: Label '';
        Loan_BalanceCaptionLbl: Label '';
        Loan_RepaymentCaptionLbl: Label '';
        TotalCaptionLbl: Label '';
        i2: Integer;
        TotalPrincipalRepayment2: Decimal;
        PreviousDocNo: Code[10];
        ROCode: Code[20];
        ROName: Text[100];
}
