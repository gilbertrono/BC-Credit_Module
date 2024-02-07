table 71706608 "Cash Management Setup"
{
    Caption = 'Cash Management Setup';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;
        }
        field(3; "PV No"; Code[20])
        {           
            Caption = 'PV No';
        }
        field(5; "Travel Advance"; Code[20]) 
        {           
            Caption = 'Travel Advance';
        }
        field(6; "Claim No"; Code[20]) 
        {           
            Caption = 'Claim No';
        }
        field(7; "Receipt No"; Code[20]) 
        {           
            Caption = 'Receipt No';
            TableRelation="Member Receipt";
        }
        field(8; "Staff Advances"; Code[20]) 
        {           
            Caption = 'Staff Advances';
        }
        field(9; "Bank Transfers"; Code[20]) 
        {           
            Caption = 'Bank Transfers';
        }
        field(10; "Max Cash Expense Limit(LCY)"; Decimal) 
        {           
            Caption = 'Max Cash Expense Limit(LCY)';
        }
        field(11; "Cash Reimbursement Levels"; Decimal) 
        {           
            Caption = 'Cash Reimbursement Levels';
        }
        field(12; "Check Rejection Period"; Code[32]) 
        {           
            Caption = 'Check Rejection Period';
        }
        field(13; "Travel Advance Surrender"; Code[20]) 
        {           
            Caption = 'Travel Advance Surrender';
        }
        field(14; "Advance Surrender"; Code[20]) 
        {           
            Caption = 'Advance Surrender';
        }
        field(15; "Apply Max Cash Exp Limit"; Boolean) 
        {           
            Caption = 'Apply Max Cash Exp Limit';
        }
        field(16; "Prompt Cash Reimbursement"; Boolean) 
        {           
            Caption = 'Prompt Cash Reimbursement';
        }
        field(17; "Cheque Maturity Days"; Code[32]) 
        {           
            Caption = 'Cheque Maturity Days';
        }
        field(18; "Maximum Holding Days"; Code[32]) 
        {           
            Caption = 'Maximum Holding Days';
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
