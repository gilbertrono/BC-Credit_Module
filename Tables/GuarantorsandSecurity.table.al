table 71706614 "Guarantors and Security"
{
    Caption = 'Guarantors and Security';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Loan No"; Code[50])
        {
            Caption = 'Loan No';
            DataClassification = ToBeClassified;
        }
        field(2; "Guarantor No/Collateral ID"; Code[50])
        {
            TableRelation="Collateral Register";        
        }
        field(3; "Security Type"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers="Log Book","Land & Building","Share Guarantee","CheckOff","Staff Guarantee",HASL,Guarantor;
        }
        field(4; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Loan Outstanding Balance"; Decimal)
        {
            DataClassification = ToBeClassified;
            TableRelation="Detailed Cust. Ledg. Entry";
        }
        field(6; "Deposits_Shares"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "No Of Loans Guaranteed"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Substituted"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Shares Recovery"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(11; "New Upload"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Amount Guaranteed"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Staff_Payroll No"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Account No"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Self Guarantee"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(16; "ID No"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Member Guaranteed"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(18; "Percentage Guaranteed"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(19; "Total Guaranteed"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(20; "Available Shares"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(21; "Signature"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(22; "Customer No"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(23; "Guaranteed Balance"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(24; "Loanee Name"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(25; "Collateral Reg No"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(26; "Collateral Value"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(27; "SMS Sent"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(28; "Old Number"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(29; "Initial Guaranteed Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(30; "Substituted By"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(31; "Email Sent"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(32; "Release SMS Sent"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(33; "Guarantor Status"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(34; "File Path"; Code[100])
        {
            DataClassification = ToBeClassified;
        }
        field(35; "Guarantor Comments"; Text[150])
        {
            DataClassification = ToBeClassified;
        }
        field(36; "Line No"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(37; "Document No"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(38; "Description"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(39; "URL"; Text[200])
        {
            DataClassification = ToBeClassified;
        }
        field(40; "File Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(41; "File"; Blob)
        {
            DataClassification = ToBeClassified;
        }
        field(42; "EMAIL"; Code[80])
        {
            DataClassification = ToBeClassified;
        }
        field(43; "Comments"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(44; "Collateral Type"; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(45; "Owner No"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Loan No")
        {
            Clustered = true;
        }
    }
}
