table 71706595 "Member Receipt"
{
   DataClassification = ToBeClassified; 

    fields
    {   
        field(1; "No"; Code[20])
        {
            Caption='No'; 
            DataClassification = ToBeClassified;            
        }
        field(3; "Date"; DateTime)
        {
            Caption='Date';
            DataClassification = ToBeClassified; 
        }
        field(4; "Cashier"; Code[50])
        {
            Caption='Cashier';
            DataClassification = ToBeClassified; 
        }
        field(5; "Date Posted"; DateTime)
        {
            Caption='Date Posted';
            DataClassification = ToBeClassified; 
        }
        field(6; "Time Posted"; DateTime)
        {
            Caption='Time Posted';
            DataClassification = ToBeClassified; 
        }
        field(7; "Posted"; Boolean)
        {
            Caption='Posted';
            DataClassification = ToBeClassified; 
        }
        field(9; "Bank Code"; Code[20])
        {
            Caption='Bank Code';
            TableRelation="Bank Account";
            trigger OnValidate()
            var
                recBK: Record "Bank Account";                
            begin
                if  xRec."Bank Code"<>Rec."Bank Code" then 
                begin
                    
                    if recBK.Get("Bank Code") then begin
                        "Bank Name":=recBK.Name;                                     
                    end;                    
                end;                
            end;  
        }
        field(10; "Received From"; Text[100])
        {
            Caption='Received From';
            DataClassification = ToBeClassified; 
        }
        field(11; "On Behalf Of"; Text[100])
        {
            Caption='On Behalf Of';
            DataClassification = ToBeClassified; 
        }
        field(12; "Amount Recieved"; Decimal)
        {
            Caption='Amount Recieved';
            DataClassification = ToBeClassified; 
        } 
        field(15; "Currency Code"; Code[10])
        {
            Caption='Currency Code';
            DataClassification = ToBeClassified; 
        }
        field(16; "Currency Factor"; Decimal)
        {
            Caption='Currency Factor';
            DataClassification = ToBeClassified; 
        }
        field(17; "Posted By"; Code[50])
        {
            Caption='Posted By';
            DataClassification = ToBeClassified; 
        }
        field(18; "Print No"; Integer)
        {
            Caption='Print No';
            DataClassification = ToBeClassified; 
        }
        field(19; "Status"; Option)
        {
            Caption='Status';
            OptionMembers="Open","Pending Approval","Approved";
        }
        field(20; "Cheque No"; Code[20])
        {
            Caption='Cheque No';
            DataClassification = ToBeClassified; 
        }
        field(21; "NoPrinted"; Integer)
        {
            Caption='No Printed';
            DataClassification = ToBeClassified; 
        }
        field(22; "Created By"; Code[50])
        {
            Caption='Created By';
            DataClassification = ToBeClassified; 
        }
        field(23; "Created Date Time"; DateTime)
        {
            Caption='Created Date Time';
            DataClassification = ToBeClassified; 
        }
        field(24; "Document Date"; DateTime)
        {
            Caption='Document Date';
            DataClassification = ToBeClassified; 
        }
        field(25; "Responsibility Center"; Code[20])
        {
            Caption='Responsibility Center';
            DataClassification = ToBeClassified; 
        }
        field(26; "Total Amount"; Decimal)
        {
            Caption='Total Amount';
            DataClassification = ToBeClassified; 
        }
        field(30; "Bank Name"; Code[250])
        {
            Caption='Bank Name';
            DataClassification = ToBeClassified; 
        }
        field(31; "Receipt Reference"; Integer)
        {
            Caption='Receipt Reference';
            DataClassification = ToBeClassified; 
        }
        field(32; "Staff Number"; Code[20])
        {
            Caption='Staff Number';
            DataClassification = ToBeClassified; 
        }
        field(33; "Fully Accounted"; Boolean)
        {
            Caption='Fully Accounted';
            DataClassification = ToBeClassified; 
        }
        field(34; "Pay Mode"; Option)
        {
            Caption='Pay Mode';
            OptionMembers="","Cash","Cheque","EFT","Deposit Slip","Banker's Cheque","RTGS","Mpesa";
        }
        field(35; "Cheque_Deposit Slip No"; Code[20])
        {
            Caption='ChequeDeposit Slip No';
            DataClassification = ToBeClassified; 
        }
        field(36; "Cheque_Deposit Slip Date"; DateTime)
        {
            Caption='ChequeDeposit Slip Date';
            DataClassification = ToBeClassified; 
        }
        field(38; "Early Release"; Boolean)
        {
            Caption='Early Release';
            DataClassification = ToBeClassified; 
        }        
    }

   keys
    {
        key(PK; "No")
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
           "No":=NoMgt.GetNextNo(Setup."Member Receipt Nos",WorkDate,true);
        end;        
    end;
}