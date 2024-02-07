table 71706601 "Product Types"
{
    DataClassification = ToBeClassified;
    Caption='Product Types';
    LookupPageId="Product_Type";

    fields
    {        

        field(1; "Product ID"; Code[20])
        {
           Caption='Product ID';
           DataClassification = ToBeClassified;
        }
        field(2; "Product Description"; Text[1000])
        {
           Caption='Product Description';
           DataClassification = ToBeClassified;
        }
        field(3; "Min Customer Age"; Code[32])
        {
            Caption='Minimum Customer Age';
            DataClassification = ToBeClassified;
        }
        field(5; "Max_Customer Age"; Code[32])
        {
            Caption='Max Customer Age';
            DataClassification = ToBeClassified;
        }
        field(6; "Recovery Priority"; Integer)
        {
            Caption='Recovery Priority';
            DataClassification = ToBeClassified;
        }
        field(7; "Loan Disbursement Account"; Boolean)
        {
           Caption='Loan Disbursement Account';
           DataClassification = ToBeClassified;
        }
        field(8; "Interest Rate"; Decimal)
        {
            Caption='Interest Rate';
            DataClassification = ToBeClassified;
        }
        field(9; "Deposits Multiplier"; Decimal)
        {
           Caption='Deposits Multiplier';
           DataClassification = ToBeClassified;
        }
        field(10; "Allow Multiple Loans"; Boolean)
        {
            Caption='Allow Multiple Loans';
            DataClassification = ToBeClassified;
        }
        field(11; "Interest Calculation Method"; Option)
        {
            Caption='Interest Calculation Method'; 
            OptionMembers="","Amortised","Straight Line","Reducing Balance","Constants";          
        }
        field(12; "Grace Period - Interest"; Code[32])
        {
            Caption='Grace Period Interest';
            DataClassification = ToBeClassified;
        }
        field(13; "Grace Period - Principle"; Code[32])
        {
            Caption='Grace Period Principle';
            DataClassification = ToBeClassified;
        }
        field(14; "Loan Span"; Integer)
        {
            Caption='Loan Span';
            DataClassification = ToBeClassified;
        }
        field(15; "Nature of Loan"; Integer)
        {
           Caption='Nature of Loan';
           DataClassification = ToBeClassified;
        }
        field(16; "Maximum Guarantors"; Integer)
        {
            Caption='Maximum Guarantors';
            DataClassification = ToBeClassified;
        }
        field(17; "Minimum Guarantors"; Integer)
        {
           Caption='Minimum Guarantors';
           DataClassification = ToBeClassified;
        }
        field(18; "Min_ Re-application Period"; Code[32])
        {
            Caption='Minimum Re-application Period';
            DataClassification = ToBeClassified;
        }
        field(19; "Minimum Loan Amount"; Decimal)
        {
           Caption='Minimum Loan Amount';
           DataClassification = ToBeClassified;
        }
        field(20; "Maximum Loan Amount"; Decimal)
        {
            Caption='Maximum Loan Amount';
            DataClassification = ToBeClassified;
        }
        field(21; "Installment Repayment Interval"; Code[32])
        {
            Caption='Installment Repayment Interval';
            DataClassification = ToBeClassified;
        }
        field(22; "Ordinary Default Intallments"; Integer)
        {
           Caption='Ordinary Default Intallments';
           DataClassification = ToBeClassified;
        }
        field(23; "Repayment Frequency"; Option)
        {
            Caption='Repayment Frequency';
            OptionMembers="Daily","Weekly","Monthly","Quarterly","Yearly";
        }
        field(24; "Minimum Guarantors on Max Amt"; Integer)
        {
            Caption='Minimum Guarantors on Max Amt';
            DataClassification = ToBeClassified;
        }
        field(25; "Max Amt on Guarantors"; Decimal)
        {
            Caption='Max Amt on Guarantors';
            DataClassification = ToBeClassified;
        }
        field(26; "Mobile Loan"; Boolean)
        {
            Caption='Mobile Loan';
            DataClassification = ToBeClassified;
        }
        field(27; "Loan Account _G_L_"; Code[15])
        {
            Caption='Loan Account GL';
             TableRelation="G/L Account";
             DataClassification = ToBeClassified;
        }
        field(28; "Loan Interest Account _G_L_"; Code[15])
        {
            Caption='Loan Interest Account GL';
             TableRelation="G/L Account";
             DataClassification = ToBeClassified;
        }
        field(29; "Interest Rec_ Account_G_L_"; Code[15])
        {
            Caption='Interest Rec Account GL';
             TableRelation="G/L Account";
             DataClassification = ToBeClassified;
        }
        field(30; "Compute Interest Due on Postin"; Option)
        {
            Caption='Compute Interest Due on Posting';
            OptionMembers="Full Interest","Pro-rata","One off";
            DataClassification = ToBeClassified;
        }

        field(31; "Recovery Mode"; Option)
        {
            Caption='Recovery Mode';
            OptionMembers="Checkoff","Salary","Dividend";
            DataClassification = ToBeClassified;
        }
        field(32; "No_ of Salary Times"; Decimal)
        {
            Caption='No of Salary Times';
            DataClassification = ToBeClassified;
        }
        field(33; "Report ID"; Integer)
        {
            Caption='Report ID';
            DataClassification = ToBeClassified;
        }
        field(34; "Minimum Contribution"; Decimal)
        {
            Caption='Minimum Contribution';
            DataClassification = ToBeClassified;
        }
        field(35; "Penalty Receivable"; Code[20])
        {
            Caption='Penalty Receivable';
             TableRelation="G/L Account";
             DataClassification = ToBeClassified;
        }
        field(36; "Penalty Income Account"; Code[20])
        {
            Caption='Penalty Income Account';
            TableRelation="G/L Account";
            DataClassification = ToBeClassified;
        }
        field(37; "Source"; Integer)
        {
            Caption='Source';
            DataClassification = ToBeClassified;
        }
        field(38; "Penalty Percentage"; Decimal)
        {
            Caption='Penalty Percentage';
            DataClassification = ToBeClassified;
        }
        field(39; "QFS Code"; Code[20])
        {
            Caption='QFS Code';
            DataClassification = ToBeClassified;
        }
        field(40; "Display On Portal"; Boolean)
        {
           Caption='Display On Portal';
           DataClassification = ToBeClassified;
        }
        field(41; "Maximum Portal Amount"; Decimal)
        {
            Caption='Maximum Portal Amount';
            DataClassification = ToBeClassified;
        }
        field(42; "Does Not Require Guarantor"; Boolean)
        {
            Caption='Does Not Require Guarantor';
            DataClassification = ToBeClassified;
        }
        field(43; "Processing Fees Account"; Code[20])
        {
            Caption='Processing Fees Account';
            DataClassification = ToBeClassified;
        }
        field(44; "Insurance Receivable Account"; Code[20])
        {
            Caption='Insurance Receivable Account';
            DataClassification = ToBeClassified;
        }
        field(45; "Blocked"; Boolean)
        {
            Caption='Blocked';
            DataClassification = ToBeClassified;
        }
        field(46; "Penalty Grace Period(Days)"; Integer)
        {
            Caption='Penalty Grace Period(Days)';
            DataClassification = ToBeClassified;
        }
        field(47; "Notify on Loan Completion"; Boolean)
        {
            Caption='Notify on Loan Completion';
            DataClassification = ToBeClassified;
        }
        field(48; "Deposit Boosting?"; Boolean)
        {
            Caption='Deposit Boosting?';
            DataClassification = ToBeClassified;
        }
        field(49; "Product Type"; Integer)
        {
            Caption='Product Type';
            DataClassification = ToBeClassified;
        }
        field(50; "Transaction Type"; Integer)
        {
            Caption='Transaction Type';
            DataClassification = ToBeClassified;
        }
        field(51; "Increased Maximum Loan"; Decimal)
        {
            Caption='Increased Maximum Loan';
            DataClassification = ToBeClassified;
        }
        field(52; "Increased Interest Rate"; Decimal)
        {
            Caption='Increased Interest Rate';
            DataClassification = ToBeClassified;
        }
        field(53; "Increased Repayment Interval"; Code[32])
        {
            Caption='Increased Repayment Interval';
            DataClassification = ToBeClassified;
        }
        field(54; "Suspended Penalty Account"; Code[20])
        {
            Caption='Suspended Penalty Account';
             TableRelation="G/L Account";
             DataClassification = ToBeClassified;
        }
        field(55; "Suspended Interest Account"; Code[20])
        {
            Caption='Suspended Interest Account';
             TableRelation="G/L Account";
             DataClassification = ToBeClassified;
        }
        field(56; "Loan Prov_ G_L Acc_"; Code[20])
        {
            Caption='Loan Prov GL Acc';
             TableRelation="G/L Account";
             DataClassification = ToBeClassified;
        }
        field(57; "Loan Prov_ Expense G_L Acc"; Code[20])
        {
            Caption='Loan Prov Expense GL Acc';
             TableRelation="G/L Account";
             DataClassification = ToBeClassified;
        }
        field(58; "Product Category"; Text[100])
        {
            Caption='Product Category';
            DataClassification = ToBeClassified;
        }
        field(59; "Product Name"; Text[50])
        {
            Caption='Product Name';
            DataClassification = ToBeClassified;
        }
        field(60; "Target"; Text[100])
        {
            Caption='Target';
            DataClassification = ToBeClassified;
        }
        field(61; "Collateral"; Text[1000])
        {
           Caption='Collateral';
           DataClassification = ToBeClassified;
        }
        field(62; "Image Link"; Text[500])
        {
            Caption='Image Link';
            DataClassification = ToBeClassified;
        }
        field(63; "Minimum Installments"; Integer)
        {
           Caption='Minimum Installments';
           DataClassification = ToBeClassified;
        }
        field(64; "Loan Coding"; Code[10])
        {
            Caption='Loan Coding';
            DataClassification = ToBeClassified;
        }
        field(65; "Charge Application Fees"; Boolean)
        {
            Caption='Charge Application Fees';
            DataClassification = ToBeClassified;
        }
        field(66; Performing; Decimal)
        {
            Caption='Performing';
            DataClassification=ToBeClassified;
        }
        field(67; Watch; Decimal)
        {
            Caption='Watch';
            DataClassification=ToBeClassified;
        }
        field(68; Substandard; Decimal)
        {
            Caption='Substandard';
            DataClassification=ToBeClassified;
        }
        field(69; Doubtful; Decimal)
        {
            Caption='Doubtful';
            DataClassification=ToBeClassified;
        }
        field(70; Loss; Decimal)
        {
            Caption='Loss';
            DataClassification=ToBeClassified;
        }

    }

    keys
    {
        key(PK; "Product ID")
        {
            Clustered = true;
        }

        key(IX_systemId; "systemId")
        {
            Unique = true;
        }
    }
    /*var
        myInt: Integer;
    
    trigger OnInsert()var
    Setup:Record "Credit No.Series";
    NoMgt: Codeunit NoSeriesManagement;
   
    begin
        if "Product ID"='' then 
        begin
           Setup.Get();
           "Product ID":=NoMgt.GetNextNo(Setup."Product Types",WorkDate,true);
        end;        
    end;*/
}







