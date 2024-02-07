table 71706607 "Loan Rescheduling"
{
    Caption = 'Loan Rescheduling';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';
            DataClassification = ToBeClassified;
        }
        field(3; "Member No"; Code[20]) 
        {            
            Caption = 'Member No';
            TableRelation=Customer;
            trigger OnValidate()
            var
                recCust: Record Customer;                
            begin
                if  xRec."Member No"<>Rec."Member No" then 
                begin
                    
                    if recCust.Get("Member No") then begin
                        "Member Name":=recCust.Name;                
                    end;                    
                end;                
            end; 
        }
        field(4; "Member Name"; Text[100]) 
        {            
            Caption = 'Member Name';            
            DataClassification = ToBeClassified;
        }
        field(5; "Loan No"; Code[20]) 
        {            
            Caption = 'Loan Number';
            TableRelation=Loans;
            DataClassification = ToBeClassified;
        }
        field(6; "Outstanding Balance"; Decimal) 
        {            
            Caption = 'Outstanding Balance';
            DataClassification = ToBeClassified;
        }
        field(7; "Outstanding Interest"; Decimal) 
        {            
            Caption = 'Outstanding Interest';
            DataClassification = ToBeClassified;
        }
        field(8; "Old Amortised"; Decimal) 
        {            
            Caption = 'Old Amortised';
            DataClassification = ToBeClassified;
        }
        field(9; "Original Installments"; Integer) 
        {            
            Caption = 'Original Installments';
            DataClassification = ToBeClassified;
        }
        field(10; "Remaining Installments"; Integer)
        {            
            Caption = 'Remaining Installments';
            DataClassification = ToBeClassified;
        }
        field(11; "Maximun Installments"; Integer) 
        {            
            Caption = 'Maximum Installments';
            DataClassification = ToBeClassified;
        } 
        field(13; "Reschedule Date"; DateTime) 
        {            
            Caption = 'Reschedule Date';
            DataClassification = ToBeClassified;
        }
        field(14; "New Amortised"; Decimal) 
        {            
            Caption = 'New Amortised';
            DataClassification = ToBeClassified;
        }
        field(15; "New Installments"; Integer) 
        {            
            Caption = 'New Installments';
            DataClassification = ToBeClassified;
        }
        field(16; "Status"; Option) 
        {            
            Caption = 'Status';
            DataClassification = ToBeClassified;
            OptionMembers="Open","Pending Approval","Approved";
        }
        field(17; "Posted"; Boolean) 
        {            
            Caption = 'Posted';
            DataClassification = ToBeClassified;
        }
        field(18; "Posted By"; Code[20]) 
        {            
            Caption = 'Posted By';
            DataClassification = ToBeClassified;
        }
        field(19; "Date Posted"; DateTime) 
        {            
            Caption = 'Date Posted';
            DataClassification = ToBeClassified;
        }
        field(20; "Disbursement Date"; DateTime) 
        {            
            Caption = 'Disbursement Date';
            DataClassification = ToBeClassified;
        }
        field(21; "Next Repayment date"; DateTime) 
        {            
            Caption = 'Next Repayment Date';
            DataClassification = ToBeClassified;
        }
        field(22; "Repayment Start Date"; DateTime) 
        {            
            Caption = 'Repayment Start Date';
            DataClassification = ToBeClassified;
        }        
        field(24; "New Repayment Start Date"; DateTime) 
        {            
            Caption = 'New Repayment Start Date';
            DataClassification = ToBeClassified;
        }
        field(25; "Expected Date of Completion"; DateTime) 
        {            
            Caption = 'Expected Date of Completion';
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
     var
        myInt: Integer;
    
    trigger OnInsert()var
    Setup:Record "Credit No.Series";
    NoMgt: Codeunit NoSeriesManagement;
   
    begin
        if "No"='' then 
        begin
           Setup.Get();
           "No":=NoMgt.GetNextNo(Setup."Loan Reschedule Nos",WorkDate,true);
        end;        
    end;
}
