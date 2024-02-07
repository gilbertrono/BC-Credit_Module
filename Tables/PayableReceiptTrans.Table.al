table 71706609 "Payable & Receipt Trans"
{
    Caption = 'Payable & Receipt Trans';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Trans Code"; Code[20])
        {
            Caption = 'Trans Code';
            DataClassification = ToBeClassified;
        }
        field(3; "Transaction Category"; Option) 
        {            
            Caption = 'Transaction Category';
            OptionMembers="",Receipt,Payment,Imprest,Claim,Advance,"Training & Deveopment";
            DataClassification = ToBeClassified;
        }
        field(4; "Description"; Text[100]) 
        {            
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(5; "Account Type"; Option) 
        {            
            Caption = 'Account Type';
            OptionMembers="","G/L Account",Cutomer,Vendor,"Bank Account","Fixed Asset","IC Partner",Staff;
            DataClassification = ToBeClassified;
        }
        field(6; "VAT Chargeable"; Boolean) 
        {            
            Caption = 'VAT Chargeable';
            DataClassification = ToBeClassified;
        }
        field(7; "WTax Deductible"; Boolean) 
        {            
            Caption = 'WTax Deductible';
            DataClassification = ToBeClassified;
        }
        field(8; "VAT Deduction Code"; Code[20]) 
        {            
            Caption = 'VAT Deduction Code';
            DataClassification = ToBeClassified;
        }
        field(9; "WTax Deduction Code"; Code[20]) 
        {            
            Caption = 'WTax Deduction Code';
            DataClassification = ToBeClassified;
        }
        field(10; "Posting Grouping"; Code[20]) 
        {            
            Caption = 'Posting Grouping';
            TableRelation="Customer Posting Group";
            DataClassification = ToBeClassified;
        }
        field(11; "Account No"; Code[20]) 
        {            
            Caption = 'Account No';
            DataClassification = ToBeClassified;
        }
        field(12; "Remarks"; Text[50]) 
        {            
            Caption = 'Remarks';
            DataClassification = ToBeClassified;
        }
        field(13; "Payment Reference"; Option) 
        {            
            Caption = 'Payment Reference';
            OptionMembers="";
            DataClassification = ToBeClassified;
        }
        field(14; "Customer Payment On Account"; Boolean) 
        {            
            Caption = 'Customer Payment On Account';
            DataClassification = ToBeClassified;
        }
        field(15; "Direct Expense"; Boolean) 
        {            
            Caption = 'Direct Expense';
            DataClassification = ToBeClassified;
        }
        field(16; "Retention Deductible"; Boolean) 
        {            
            Caption = 'Retention Deductible';
            DataClassification = ToBeClassified;
        }
        field(17; "Blocked"; Boolean) 
        {            
            Caption = 'Blocked';
            DataClassification = ToBeClassified;
        }
        field(18; "Receipt Reference"; Option) 
        {            
            Caption = 'Receipt Reference';
            OptionMembers="";
            DataClassification = ToBeClassified;
        }
        field(19; "Default Travel Table"; Boolean) 
        {            
            Caption = 'Default Travel Table';
            DataClassification = ToBeClassified;
        }
        field(20; "Communication Service Tax"; Code[20]) 
        {            
            Caption = 'Communication Service Tax';
            DataClassification = ToBeClassified;
        }
        field(21; "Comm Service Tax Deductible"; Boolean) 
        {            
            Caption = 'Comm_ Service Tax Deductible';
            DataClassification = ToBeClassified;
        }
        field(22; "VAT Deductible"; Boolean) 
        {            
            Caption = 'VAT Deductible';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Trans Code")
        {
            Clustered = true;
        }
    }
}
