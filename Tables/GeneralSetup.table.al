table 71706582 "General Setup"
{
    Caption = 'General Setup';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';
        }
        field(2; "Max_Member Age"; Text[32])
        {
            Caption = 'Max Member Age';
        }
        field(3; "Registration Fee"; Decimal)
        {
            Caption = 'Registration Fee';
        }
        field(4; "Rejoining Fee"; Decimal)
        {
            Caption = 'Rejoining Fee';
        }
        field(5; "Min_Member Age"; Text[32])
        {
            Caption = 'Min Member Age';
        }
        field(6; "Enforce Picture & Signature"; Option)
        {
            Caption = 'Enforce Picture & Signature';
            OptionMembers="Picture","Signature","Both";
        }
        field(7; "Excise Duty"; Decimal)
        {
            Caption = 'Excise Duty';
        }
        field(8; "Excise Duty GL"; Code[20])
        {
            Caption = 'Excise Duty GL';
            TableRelation="G/L Account";
        }
        field(9; "Guarantors Multiplier"; Decimal)
        {
            Caption = 'Guarantors Multiplier';
        }
        field(10; "Maximum Valuation Period"; Text[32])
        {
            Caption = 'Maximum Valuation Period';
        }
        field(11; "Feneral Amount"; Decimal)
        {
            Caption = 'Feneral Amount';
        }
        field(12; "Withdrawal Fee"; Decimal)
        {
            Caption = 'Withdrawal Fee';
        }
        field(13; "Withdrawal Notice Period"; Text[32])
        {
            Caption = 'Withdrawal Notice Period';
        }
        field(14; "Days for Checkoff"; Text[32])
        {
            Caption = 'Days for Checkoff';
        }
        field(15; "Self Guarantee"; Decimal)
        {
            Caption = 'Self Guarantee';
        }
        field(16; "Max Loans to Guarantee"; Integer)
        {
            Caption = 'Max Loans to Guarantee';
        }
        field(17; "Registration Fee Amount"; Code[20])
        {
            Caption = 'Registration Fee Amount';
        }
        field(18; "Withdrawal Fee Amount"; Code[20])
        {
            Caption = 'Withdrawal Fee Amount';
        }
        field(19; "Unlogged Claims Account"; Code[20])
        {
            Caption = 'Unlogged Claims Account';
        }
        field(20; "Insurance Name"; Text[50])
        {
            Caption = 'Insurance Name';
        }
        field(21; "Dormancy Period"; Text[32])
        {
            Caption = 'Dormancy Period';
        }
        field(22; "Processing Fee"; Decimal)
        {
            Caption = 'Processing Fee';
        }
        field(23; "Share Capital"; Decimal)
        {
            Caption = 'Share Capital';
        }
        field(24; "Dividends Rate"; Decimal)
        {
            Caption = 'Dividends Rate';
        }
        field(25; "Interest on Devidends"; Decimal)
        {
            Caption = 'Interest on Devidends';
        }
        field(26; "Devidends Computation Method"; Integer)
        {
            Caption = 'Devidends Computation Method';
        }
        field(27; "Witholding Tax: Interest"; Decimal)
        {
            Caption = 'Witholding Tax: Interest';
        }
        field(28; "FDeposit Interest Expense A_C"; Code[20])
        {
            Caption = 'FDeposit Interest Expense A/C';
        }
        field(29; "Witholding Tax GL"; Code[20])
        {
            Caption = 'Witholding Tax GL';
            TableRelation="G/L Account";
        }
        field(30; "Fixed Deposit Interest"; Decimal)
        {
            Caption = 'Fixed Deposit Interest';
        }
        field(31; "Recruitment Commission"; Decimal)
        {
            Caption = 'Recruitment Commission';
        }
        field(32; "Recruitment Expense GL"; Code[20])
        {
            Caption = 'Recruitment Expense GL';
            TableRelation="G/L Account";
        }
        field(33; "Checkoff Option"; Integer)
        {
            Caption = 'Checkoff Option';
        }
        field(34; "Show Beneficiaries"; Boolean)
        {
            Caption = 'Show Beneficiaries';
        }
        field(35; "Online Appl_Max_Loan"; Decimal)
        {
            Caption = 'Online Appl_Max_Loan';
        }
        field(36; "Withdrawal Company Code"; Code[20])
        {
            Caption = 'Withdrawal Company Code';
        }
        field(37; "Top Up Commission"; Decimal)
        {
            Caption = 'Top Up Commission';
        }
        field(38; "Top Up Commission GL"; Code[20])
        {
            Caption = 'Top Up Commission GL';
            TableRelation="G/L Account";
        }
        field(39; "Minimum Contribution"; Decimal)
        {
            Caption = 'Minimum Contribution';
        }
        field(40; "Interest Accrual Template"; Code[20])
        {
            Caption = 'Interest Accrual Template';
            TableRelation="Gen. Journal Template";
        }
        field(41; "Interest Accrual Batch"; Code[20])
        {
            Caption = 'Interest Accrual Batch';
            TableRelation="Gen. Journal Batch";
        }
        field(42; "Days In Arrears"; Integer)
        {
            Caption = 'Days In Arrears-Suspend Interest';
        }
        field(43; "Loan Provisioning_Watch"; Decimal)
        {
            Caption = 'Loan Provisioning Watch';
        }
        field(44; "Loan Provisioning_Substd"; Decimal)
        {
            Caption = 'Loan Provisioning Substd';
        }
        field(45; "Loan provisioning"; Decimal)
        {
            Caption = 'Loan provisioning Doubt ';
        }
        field(46; "Loan Provisioning_Loss"; Decimal)
        {
            Caption = 'Loan Provisioning Loss';
        }
        field(47; "Loan Provisioning_Performin"; Decimal)
        {
            Caption = 'Loan Provisioning Performing';
        }
        field(48; "Paybill Bank Account"; Code[20])
        {
            Caption = 'Paybill Bank Account';
            TableRelation="Bank Account";
        }
        field(49; "Interest Holiday (Days)"; Integer)
        {
            Caption = 'Interest Holiday (Days)';
        }
        field(50; "Application Fees"; Decimal)
        {
            Caption = 'Application Fees';
        }
        field(51; "Application Fees GL Account"; Code[20])
        {
            Caption = 'Application Fees GL Account';
            TableRelation="G/L Account";
        }
        field(52; "Statement Path"; Text[100])
        {
            Caption = 'Statement Path';
        }
        field(53; "Repayment Schedule Path"; Text[100])
        {
            Caption = 'Repayment Schedule Path';
        }
        field(54; "Demand Letter Path"; Text[100])
        {
            Caption = 'Demand Letter Path';
        }
        field(55; "Offer Letter Path"; Text[100])
        {
            Caption = 'Offer Letter Path';
        }
        field(56; "Minimum Loan Period (Months)"; Integer)
        {
            Caption = 'Minimum Loan Period (Months)';
        }
        field(57; "SpringHela Disbursment"; Code[20])
        {
            Caption = 'SpringHela Disbursment';
            TableRelation="Bank Account";
        }
        field(58; "Customer Post_Grp"; Code[20])
        {
            Caption = 'Customer Post Grp';
            TableRelation="Customer Posting Group";
        }
        field(59; "Max_Days on Arrears"; Integer)
        {
            Caption = 'Max Days on Arrears';
        }
        field(60; "Date Filter"; Text[50])
        {
            Caption = 'Date Filter';
        }
        field(61; "Anniversary Days"; Integer)
        {
            Caption = 'Anniversary Days';
        }
        field(62; "Holding Charges A_C"; Code[20])
        {
            Caption = 'Holding Charges A/C';
        }
        field(63; "Cheque Holding Fee"; Decimal)
        {
            Caption = 'Cheque Holding Fee';
        }
        field(64; "Freeze SpringHela Penalty"; Text[50])
        {
            Caption = 'Freeze SpringHela Penalty';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
}
