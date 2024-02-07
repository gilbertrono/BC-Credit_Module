table 71706606 "Member Receipt Line"
{
    Caption = 'Member Receipt Line';
    DataClassification = ToBeClassified;
    
     fields
    {      
        field(1; "Line No"; Code[20])
        {            
            Caption = 'Line No';
            DataClassification = ToBeClassified; 
        }
        field(2; "No"; Code[20]) 
        {           
            Caption = 'No';
            DataClassification = ToBeClassified;
        }
        field(3; "Type"; Code[20]) 
        {           
            Caption = 'Type';
            TableRelation="Payable & Receipt Trans";
            DataClassification = ToBeClassified;
        }
        field(4; "Pay Mode"; Integer) 
        {           
            Caption = 'Payment Mode';
             DataClassification = ToBeClassified;
        }
        field(6; "Cheque_Deposit Slip No"; Code[20]) 
        {           
            Caption = 'Cheque/Deposit Slip Number';
             DataClassification = ToBeClassified;
        }
        field(7; "Cheque_Deposit Slip Date"; DateTime) 
        {
            Caption = 'Cheque/Deposit Slip Date';
             DataClassification = ToBeClassified;
        }
        field(8; "Cheque_Deposit Slip Type"; Integer) 
        {
            Caption = 'Cheque/Deposit Slip Type';
             DataClassification = ToBeClassified;
        }
        field(9; "Bank Code"; Code[20])            
        {   
            Caption = 'Bank Code';
             DataClassification = ToBeClassified;
        }
        field(10; "Received From"; Code[100]) 
        {  
            Caption = 'Received From';
             DataClassification = ToBeClassified;
        }
        field(11; "On Behalf Of"; Text[100]) 
        {           
            Caption = 'On Behalf Of';
             DataClassification = ToBeClassified;
        }
        field(12; "Cashier"; Code[50]) 
        {           
            Caption = 'Cashier';
             DataClassification = ToBeClassified;
        }
        field(13; "Account Type"; Integer) 
        {           
            Caption = 'Account Type';
             DataClassification = ToBeClassified;
        }
        field(14; "Account No"; Code[50]) 
        {           
            Caption = 'Account Number';
            TableRelation=Customer;
            trigger OnValidate()
            var
                recCUS: Record  Customer;                
            begin
                if  xRec."Account No"<>Rec."Account No" then 
                begin
                    
                    if recCUS.Get("Account No") then begin
                        Description:=recCUS."Name";                
                    end;                    
                end;                
            end;           
        }
        field(16; "Account Name"; Text[100]) 
        {           
            Caption = 'Account Name';
             DataClassification = ToBeClassified;
        }
        field(17; "Posted"; Boolean) 
        {           
            Caption = 'Posted';
             DataClassification = ToBeClassified;
        }
        field(18; "Date Posted"; DateTime) 
        {           
            Caption = 'Date Posted';
             DataClassification = ToBeClassified;
        }
        field(19; "Time Posted"; DateTime) 
        {           
            Caption = 'Time Posted';
             DataClassification = ToBeClassified;
        }
        field(20; "Posted By"; Code[50]) 
        {           
            Caption = 'Posted By';
             DataClassification = ToBeClassified;
        }
        field(21; "Amount"; Decimal) 
        {           
            Caption = 'Amount';
             DataClassification = ToBeClassified;
        }
        field(22; "Remarks"; Text[250]) 
        {           
            Caption = 'Remarks';
             DataClassification = ToBeClassified;
        }        
        field(23; "Transaction Name"; Text[100]) 
        {           
            Caption = 'Transaction Name';
             DataClassification = ToBeClassified;
        }
        field(24; "Grouping"; Code[20]) 
        {           
            Caption = 'Grouping';
             DataClassification = ToBeClassified;
        }        
        field(27; "VAT"; Decimal) 
        {           
            Caption = 'VAT';
             DataClassification = ToBeClassified;
        }
        field(28; "Currency Code"; Code[20]) 
        {           
            Caption = 'Currency Code';
             DataClassification = ToBeClassified;
        }
        field(29; "Currency Factor"; Decimal) 
        {           
            Caption = 'Currency Factor';
             DataClassification = ToBeClassified;
        }

        field(30; "VAT Bus Posting Group"; Code[30]) 
        {           
            Caption = 'VAT Business Posting Group';
             DataClassification = ToBeClassified;
        }

        field(31; "VAT Prod_ Posting Group"; Code[30]) 
        {           
            Caption = 'VAT Product Posting Group';
             DataClassification = ToBeClassified;
        }

        field(32; "Gen Posting Type"; Integer) 
        {           
            Caption = 'General Posting Type';
             DataClassification = ToBeClassified;
        }

        field(33; "Gen Bus Posting Group"; Code[30]) 
        {           
            Caption = 'General Business Posting Group';
             DataClassification = ToBeClassified;
        }

        field(34; "Gen Prod Posting Group"; Code[30]) 
        {
           
            Caption = 'General Product Posting Group';
             DataClassification = ToBeClassified;
        }

        field(35; "VAT Calculation Type"; Integer) 
        {           
            Caption = 'VAT Calculation Type';
             DataClassification = ToBeClassified;
        }

        field(36; "VAT Amount"; Decimal) 
        {           
            Caption = 'VAT Amount';
             DataClassification = ToBeClassified;
        }

        field(37; "Total Amount"; Decimal) 
        {           
            Caption = 'Total Amount';
             DataClassification = ToBeClassified;
        }

        field(38; "User ID"; Code[20]) 
        {           
            Caption = 'User ID';
             DataClassification = ToBeClassified;
        }
        field(39; "Print No"; Integer) 
        {           
            Caption = 'Print Number';
             DataClassification = ToBeClassified;
        }
        field(40; "Post Dated"; Boolean) 
        {           
            Caption = 'Post Dated';
             DataClassification = ToBeClassified;
        }
        field(43; "Applies-to DocType"; Option) 
        {           
            Caption = 'Applies to Document Type';
            OptionMembers="","Payment","Invoice","Credit Memo","Financial Charge Memo","Reminder","Refund";
             DataClassification = ToBeClassified;
        }
        field(44; "Applies to DocNo"; Code[20]) 
        {           
            Caption = 'Applies to Document No';
             DataClassification = ToBeClassified;
        }
        field(45; "Applies to ID"; Code[20]) 
        { 
            Caption = 'Applies to ID';
             DataClassification = ToBeClassified;
        }
        field(46; "Receipt Reference"; Integer) 
        {           
            Caption = 'Receipt Reference';
             DataClassification = ToBeClassified;
        }
        field(47; "Customer Settlement Acc"; Boolean) 
        {           
            Caption = 'Customer Settlement Account';
             DataClassification = ToBeClassified;
        }
        field(48; "Loan No"; Code[20]) 
        {           
            Caption = 'Loan No';
            TableRelation=Loans;
            DataClassification = ToBeClassified;
        }
        field(49; "Transaction Type"; Text[50]) 
        {           
            Caption = 'Transaction Type';
             DataClassification = ToBeClassified;
        }
        field(50; "Member No"; Code[20]) 
        {
            Caption = 'Member No';
             DataClassification = ToBeClassified;
        }
        field(51; "Early Settlement Interest"; Decimal) 
        {           
            Caption = 'Early Settlement Interest';
             DataClassification = ToBeClassified;
        }
        field(52; "Early Settlement Surcharge"; Decimal) 
        {           
            Caption = 'Early Settlement Surcharge';
             DataClassification = ToBeClassified;
        } 
        field(60; "Relationship Officer"; Code[20])
        {
            Caption='Relationship Officer';
            TableRelation="Dimension Value".Code;
        }
        field(61; "Branch Code"; Code[20])
        {
            Caption='Branch Code';
            TableRelation="Dimension Value".Code;
        }
        field(62; Description; Text[100])
        {
            Caption='Description';
            TableRelation="Dimension Value".Code;
        }


    }   

    keys
    {
        key(PK; "Line No")
        {
            Clustered = true;
        }
    }

}

