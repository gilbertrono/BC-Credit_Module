   table 71706600 "Posting User Type"
{
    DataClassification = ToBeClassified;    

    fields
    {        

        field(1; "UserID"; Code[50])
        {
            Caption='UserID';                               
        }
        field(3; "Cashier Journal Template"; Code[20])
        {
            Caption='Cashier Journal Template';
            TableRelation="Gen. Journal Template";
        }

        field(4; "Cashier Journal Batch"; Code[20])
        {
             Caption='Cashier Journal Batch';
             TableRelation="Gen. Journal Batch";
        }

        field(5; "Salary Journal Template"; Code[20])
        {
             Caption='Salary Journal Template';
             TableRelation="Gen. Journal Template";
        }

        field(6; "Salary Journal Batch"; Code[20])
        {
             Caption='Salary Journal Batch';
             TableRelation="Gen. Journal Batch";
        }

        field(7; "Default Bank"; Code[20])
        {
             Caption='Default Bank';
        }

        field(8; "Loans Template"; Code[20])
        {
             Caption='Loans Template';
             TableRelation="Gen. Journal Template";
        }

        field(9; "Loans Batch"; Code[20])
        {
             Caption='Loans Batch';
             TableRelation="Gen. Journal Batch";
        }

        field(10; "Check Off Template"; Code[20])
        {
             Caption='Check Off Template';
             TableRelation="Gen. Journal Template";
        }

        field(11; "Check Off Batch"; Code[20])
        {
             Caption='Check Off Batch';
             TableRelation="Gen. Journal Batch";
        }

        field(12; "Max_ Deposit Limit"; Decimal)
        {
             Caption='Max Deposit Limit';
        }

        field(13; "Max_ Withdrawal Limit"; Decimal)
        {
             Caption='Max Withdrawal Limit';
        }

        field(14; "Max_ Cashier Withholding"; Decimal)
        {
             Caption='Max Cashier Withholding';
        }

        field(15; "Min_ Balance"; Decimal)
        {
             Caption='Min Balance';
        }

        field(16; "Member No_"; Code[20])
        {
             Caption='Member No';
             TableRelation=Customer;
        }

        field(17; "Bankers Cheque Account"; Code[20])
        {
             Caption='Bankers Cheque Account';
        }

        field(18; "Type"; Option)
        {
             Caption='Type';
             OptionMembers="Cashier","Treasury";
        }

        field(19; "MPESA Disbursement A_c"; Code[20])
        {
             Caption='MPESA Disbursement A/C';
        }

        field(20; "Cheque Disbursement A_c"; Code[20])
        {
             Caption='Cheque Disbursement A/C';
        }
        field(21; "Bills Template"; Code[20])
        {
            Caption='Bills Template';
        }

        field(22; "Bills Batch"; Code[20])
        {
            Caption='Bills Batch';
        }

        field(23; "Over Draft Template"; Code[20])
        {
            Caption='Over Draft Template';
        }

        field(24; "Over Draft Batch"; Code[20])
        {
            Caption='Over Draft Batch';
        }

        field(25; "No of Open Transactions"; Integer)
        {
             Caption='No of Open Transactions';
        }

        field(26; "Interest Account Template"; Code[20])
        {
             Caption='Interest Account Template';
             TableRelation="Gen. Journal Template";
        }

        field(27; "Interest Account Batch"; Code[20])
        {
             Caption='Interest Account Batch';
             TableRelation="Gen. Journal Batch";
        }

        field(28; "Transfer Journal Template"; Code[20])
        {
            Caption='Transfer Journal Template';
            TableRelation="Gen. Journal Template";
        }

        field(29; "Transfer Journal Batch"; Code[20])
        {
             Caption='Transfer Journal Batch';
             TableRelation="Gen. Journal Batch";
        }

        field(30; "Excess Account"; Code[20])
        {
             Caption='Excess Account';
        }

        field(31; "Shortage Account"; Code[20])
        {
             Caption='Shortage Account';
        }

        field(32; "Cheque Clearance Account"; Code[20])
        {
             Caption='Cheque Clearance Account';
        }

        field(33; "ATM Charges Journal Template"; Code[20])
        {
             Caption='ATM Charges Journal Template';
             TableRelation="Gen. Journal Template";
        }

        field(34; "ATM Charges Journal Batch"; Code[20])
        {
             Caption='ATM Charges Journal Batch';
             TableRelation="Gen. Journal Batch";
        }

        field(35; "Cheque Discounting Template"; Code[20])
        {
             Caption='Cheque Discounting Template';
             TableRelation="Gen. Journal Template";
        }

        field(36; "Cheque Discounting Batch"; Code[20])
        { 
             Caption='Cheque Discounting Batch';
             TableRelation="Gen. Journal Batch";
        }

        field(37; "Supervisor Mobile No"; Code[13])
        {
             Caption='Supervisor Mobile No';
        }

        field(38; "Supervisor E-Mail"; Code[80])
        {
             Caption='Supervisor E-Mail';
        }

        field(39; "Delegates Pay_Journal Template"; Code[20])
        {
             Caption='Delegates Pay Journal Template';
             TableRelation="Gen. Journal Template";
        }

        field(40; "Delegates Pay_ Journal Batch"; Code[20])
        {
             Caption='Delegates Pay Journal Batch';
             TableRelation="Gen. Journal Batch";
        }

        field(41; "Accrual_ Fee_Journal Template"; Code[20])
        {
             Caption='Accrual Fee Journal Template';
             TableRelation="Gen. Journal Template";
        }

        field(42; "Accrual_ Fee_ Journal Batch"; Code[20])
        {
             Caption='Accrual Fee Journal Batch';
             TableRelation="Gen. Journal Batch";
        }

        field(43; "Responsibility Centre"; Code[10])
        {
             Caption='Responsibility Centre';
        }

        field(44; "Branch Code"; Code[20])
        {
             Caption='Branch Code';
             TableRelation="Dimension Value".Code;               
        }
        field(45; "Relationships Officer Code"; Code[20])
        {
            Caption='Relationships Officer Code';
            TableRelation="Dimension Value".Code;      
        }
        field(46; "Micro Transfer Batch"; Code[10])
        {
           Caption='Micro Transfer Batch';
           TableRelation="Gen. Journal Batch";
        }

        field(47; "Micro Transfer Template"; Code[10])
        {
            Caption='Micro Transfer Template';
            TableRelation="Gen. Journal Template";
        }

        field(48; "Withdrawal Template"; Code[10])
        {
            Caption='Withdrawal Template';
            TableRelation="Gen. Journal Template";
        }

        field(49; "Withdrawal Batch"; Code[10])
        {
            Caption='Withdrawal Batch';
            TableRelation="Gen. Journal Batch";
        }

        field(50; "Fixed Deposit Template"; Code[10])
        {
            Caption='Fixed Deposit Template';
            TableRelation="Gen. Journal Template";
        }

        field(51; "Fixed Deposit Batch"; Code[10])
        {
            Caption='Fixed Deposit Batch';
            TableRelation="Gen. Journal Batch";
        }

        field(52; "Receipt Template"; Code[20])
        {
            Caption='Receipt Template';
            TableRelation="Gen. Journal Template";
        }

        field(53; "Receipt Batch"; Code[20])
        {
            Caption='Receipt Batch';
            TableRelation="Gen. Journal Batch";
        }

       field(54; "Notify on Loan Completion"; Boolean)
        {
            Caption='Notify on Loan Completion';
        }

        field(55; "Deposit Boosting?"; Boolean)
        {
            Caption='Deposit Boosting?';
        }

        field(56; "Product Type"; Integer)
        {
            Caption='Product Type';
        }

        field(57; "Transaction Type"; Integer)
        {
            Caption='Transaction Type';
        }

        field(58; "Increased Maximum Loan"; Decimal)
        {
            Caption='Increased Maximum Loan';
        }

        field(59; "Increased Interest Rate"; Decimal)
        {
           Caption='Increased Interest Rate';
        }

        field(60; "Increased Repayment Interval"; Code[32])
        {
            Caption='Increased Repayment Interval';
        }

        field(61; "Suspended Penalty Account"; Code[20])
        {
            Caption='Suspended Penalty Account';
        }

        field(62; "Suspended Interest Account"; Code[20])
        {
            Caption='Suspended Interest Account';
        }

        field(63; "Loan Prov_ G_L Acc_"; Code[20])
        {
            Caption='Loan Prov G/L ACC';
            TableRelation="G/L Account";
        }

        field(64; "Loan Prov_ Expense G_L Acc_"; Code[20])
        {
             Caption='Loan Prov Expense G/L Acc';
             TableRelation="G/L Account";
        }

        field(65; "Product Category"; Code[100])
        {
            Caption='Product Category';
        }

        field(66; "Product Name"; Code[50])
        {
            Caption='Product Name';
        }

        field(67; "Target"; Code[100])
        {
            Caption='Target';
        }

        field(68; "Collateral"; Code[1000])
        {
            Caption='Collateral';
        }

        field(69; "Image Link"; Code[500])
        {
            Caption='Image Link';
        }

        field(70; "Minimum Installments"; Integer)
        {
            Caption='Minimum Installments';
        }

        field(71; "Loan Coding"; Code[10])
        {
            Caption='Loan Coding';
        }           

        field(72; "Charge Application Fees"; Boolean)
        {
            Caption='Charge Application Fees';
        }

        field(73; "QFS Code"; Code[20])
        {
            Caption='QFS Code';
        }

        field(74; "Display On Portal"; Boolean)
        {
            Caption='Display On Portal';
        }

        field(75; "Maximum Portal Amount"; Decimal)
        {
            Caption='Maximum Portal Amount';
        }

        field(76; "Does Not Require Guarantor"; Boolean)
        {
            Caption='Does Not Require Guarantor';
        }

        field(77; "Processing Fees Account"; Code[20])
        {
           Caption='Processing Fees Account';
        }

        field(78; "Insurance Receivable Account"; Code[20])
        {
            Caption='Insurance Receivable Account';
        }
        field(79; "Blocked"; Boolean)
        {
            Caption='Blocked';
        }

        field(80; "Penalty Grace Period(Days)"; Integer)
        {
            Caption='Penalty Grace Period(Days)';
        }

        
    }

    keys
    {
        key(PK; "UserID")
        {
            Clustered = true;
        }
    }
    /*var
        myInt: Integer;
    
    trigger OnInsert()var
    Setup:Record "Credit No.Series";
    NoMgt: Codeunit NoSeriesManagement;
   
    begin
        if "UserID"='' then 
        begin
           Setup.Get();
           "UserID":=NoMgt.GetNextNo(Setup."Posting User Setups",WorkDate,true);
        end;        
    end;*/
}



