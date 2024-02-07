table 71706576 "Member Editable"
{
    DataClassification = TobeClassified;    

    fields
    {      

        field(1; "No"; Code[20])
        {
            Caption='No';
            DataClassification = TobeClassified; 
        }
        field(2; "Application Date"; DateTime)
        {
            Caption='Application Date';
            DataClassification = TobeClassified; 
        }
        field(3; "Application Time"; DateTime)
        {
            Caption='Application Time';
            DataClassification = TobeClassified; 
        }
        field(6; "Created By"; Code[50])
        {
            Caption='Created By';
            DataClassification = TobeClassified; 
        }
        field(100; "Account Type"; Option)
        {
            Caption='Account Type';
            OptionMembers="";
            DataClassification = TobeClassified; 
        }

        field(8; "Status"; Option)
        {
            Caption='Status';
            OptionMembers="Open","Pending Approval","Approved";
            DataClassification = TobeClassified; 
        }

        field(9; "First Name"; Text[20])
        {
            Caption='First Name';
            DataClassification = TobeClassified; 
        }

        field(10; "Second Name"; Text[15])
        {
            Caption='Second Name';
            DataClassification = TobeClassified; 
        }

        field(11; "Last Name"; Text[15])
        {
            Caption='Last Name';
            DataClassification = TobeClassified; 
        }
        field(12; "Name"; Text[50])
        {
            Caption='Name';   
            DataClassification = TobeClassified;         
        }
        field(13; "Current Address"; Code[50])
        {
            Caption='Current Address';
            DataClassification = TobeClassified; 
        }
        field(14; "Home Address"; Code[50])
        {
            Caption='Home Address';
            DataClassification = TobeClassified; 
        }
        field(15; "Postal Code"; Code[20])
        {
            Caption='Post Code';
            TableRelation="Post Code";
            trigger OnValidate()
            var
                recPC: Record  "Post Code";                
            begin
                if  xRec."Postal Code"<>Rec."Postal Code" then 
                begin
                    
                    if recPC.Get("Postal Code") then begin
                        City:=recPC.City;                
                    end;                    
                end;                
            end;
        }
        field(16; "City"; Text[30])
        {
            Caption='City';   
            DataClassification = TobeClassified;          
        }
        field(120; Address; Text[30])
        {
            Caption='Address';
            DataClassification = TobeClassified; 
        }
        field(17; "Nationality"; Text[20])
        {
            Caption='Nationality';
            TableRelation="Country/Region";            
            trigger OnValidate()
            var
                recNA: Record  "Country/Region";                
            begin
                if  xRec."Nationality"<>Rec."Nationality" then 
                begin
                    
                    if recNA.Get("Nationality") then begin
                        Nationality:=recNA."Name";                
                    end;                    
                end;                
            end;
        }
        field(18; "Phone No"; Code[20])
        {
            Caption='Phone No';
            DataClassification = TobeClassified; 
        }
        field(19; "Mobile Phone No"; Code[22])
        {
            Caption='Mobile Phone No';
            DataClassification = TobeClassified; 
        }
        field(20; "E-Mail"; Code[50])
        {
            Caption='E-Mail';
            DataClassification = TobeClassified; 
        }        
        field(23; "Currency Code"; Code[10])
        {
            Caption='Currency Code';
            DataClassification = TobeClassified; 
        }
        field(24; "Responsibility Center"; Code[30])
        {
            Caption='Responsibility Center';
            DataClassification = TobeClassified; 
        }
        field(25; "Gender"; Option)
        {
            Caption='Gender';
            OptionMembers="Male","Female","Others";
        }
        field(26; "Date of Birth"; Date)
        {
            Caption='Date of Birth';
        }
        field(27; "Identification Doc No"; Code[10])
        {
            Caption='Identification Doc No';
        }
        field(28; "Passport No"; Code[10])
        {
            Caption='Passport No';
        }
        field(29; "Marital Status"; Option)
        {
            Caption='Marital Status';
            OptionMembers="Single","Married";
        }
        field(30; "P.I.N Code"; Code[12])
        {
            Caption='P.I.N Code';
        }      
        field(34; "Business Location"; Code[50])
        {
            Caption='Business Location';
        }
        field(35; "Plot_Bldg_Street_Road"; Code[50])
        {
            Caption='Plot Bldg Street Road';
        }
        field(36; "Picture"; Media)
        {
            Caption='Picture';
        }
        field(37; "Signature"; Media)
        {
            Caption='Signature';
        }
       field(38; "Source Of Customer"; Option)
        {
            Caption='Source Of Customer';
            OptionMembers="Agent","Social Media","Website","Call Center","Customer referral","Shareholder","Own Initiative","Staff Referral","Existing Top-up","Existing Revived","Outdoor Activities";
        }
        field(39; "Recruited By"; Code[10])
        {
            Caption='Recruited By';
        }
        field(40; "Recruiter Name"; Code[50])
        {
            Caption='Recruiter Name';
        }

        field(41; "Society Position"; Option)
        {
            Caption='Society Position';
            OptionMembers="",Member,Staff,Director;
        }
        field(42; "Statement E-Mail Freq"; Code[32])
        {
            Caption='Statement E-Mail Freq';
        }

        field(43; "Registration Date"; DateTime)
        {
            Caption='Registration Date';
        }

        field(44; "Customer Posting Group"; Code[10])
        {
            Caption='Customer Posting Group';
            TableRelation="Customer Posting Group";
        }

        field(45; "Signing Instructions"; Code[30])
        {
            Caption='Signing Instructions';
        }

        field(92; "Deposit Contribution"; Decimal)
        {
            Caption='Deposit Contribution';
        }

        field(93; "Created"; Boolean)
        {
            Caption='Created';
        }

        field(48; "Image Picture"; Guid)
        {
            Caption='Image Picture';
        }

        field(49; "Image Signature"; Guid)
        {
            Caption='Image Signature';
        }
        field(51; "County"; Code[30])
        {
            Caption='County';
            TableRelation="County Codes";
            trigger OnValidate()
            var
                recC: Record  "County Codes";                
            begin
                if  xRec."County"<>Rec."County" then 
                begin
                    
                    if recC.Get("County") then begin
                        "County":=recC."County Name";                
                    end;                    
                end;                
            end; 
        }

        field(52; "Monthly Contr_ Share Capital"; Decimal)
        {
            Caption='Monthly Contr Share Capital';
        }

        field(53; "Monthly Contr_ Member Deposit"; Decimal)
        {
            Caption='Monthly Contr Member Deposit';
        }

        field(54; "Monthly Contr_ Holiday Savings"; Decimal)
        {
            Caption='Monthly Contr Holiday Savings';
        }

        field(55; "Monthly Contr_ Property Saving"; Decimal)
        {
            Caption='Monthly Contr Property Saving';
        }

        field(56; "Monthly Contr_ Junior Savings"; Decimal)
        {
            Caption='Monthly Contr Junior Savings';
        }

        field(57; "Employer 2"; Code[150])
        {
            Caption='Employer 2';
        }

        field(58; "Contract Expiry Date"; DateTime)
        {
            Caption='Contract Expiry Date';
        }

        field(59; "Official E-Mail"; Code[50])
        {
            Caption='Official E-Mail';
        }

        field(60; "Home County"; Code[30])
        {
           Caption='Home County';
           TableRelation="County Codes";
            trigger OnValidate()
            var
                recC: Record  "County Codes";                
            begin
                if  xRec."County"<>Rec."County" then 
                begin
                    
                    if recC.Get("County") then begin
                        "County":=recC."County Name";                
                    end;                    
                end;                
            end; 
        }

        field(61; "No_ of Dependants"; Integer)
        {
            Caption='No of Dependants';
        }

        field(62; "Residence"; Code[50])
        {
            Caption='Residence';
        }

        field(63; "Estate"; Code[50])
        {
            Caption='Estate';
        }

        field(64; "Town"; Code[50])
        {
            Caption='Town';
        }

        field(65; "Nearest Land Mark"; Code[50])
        {
            Caption='Nearest Land Mark';
        }

        field(66; "Name of Spouse"; Code[100])
        {
            Caption='Name of Spouse';
        }

        field(67; "Spouse ID No_"; Code[10])
        {
            Caption='Spouse ID No';
        }

        field(68; "Spouse Mobile Phone No"; Code[12])
        {
            Caption='Spouse Mobile Phone No';
        }

        field(69; "House No_"; Code[50])
        {
            Caption='House No';
        }      

        field(71; "Name of Landlord"; Code[50])
        {
            Caption='Name of Landlord';
        }

        field(72; "Landlord Phone No_"; Code[50])
        {
            Caption='Landlord Phone No';
        }

        field(73; "Customer Sector"; Code[20])
        {
            Caption='Customer Sector';
        }

        field(74; "Specific Business Narration"; Code[100])
        {
            Caption='Specific Business Narration';
        }

        field(75; "Alternative  Phone No"; Code[100])
        {
            Caption='Alternative  Phone No';
        }

        field(76; "Type of Customer"; Integer)
        {
            Caption='Type of Customer';
        }

        field(77; "Security"; Integer)
        {
            Caption='Security';
        }

        field(78; "Loan Amount"; Decimal)
        {
            Caption='Loan Amount';
        }

        field(79; "Product Code"; Code[20])
        {
            Caption='Product Code';
        }

        field(80; "Identification Doc_ Type"; Option)
        {
            Caption='Identification Doc Type';
            OptionMembers="","Identification Type No","Passport No";
        }

        field(81; "Relationship Officer"; Code[20])
        {
            Caption='Relationship Officer';
            TableRelation="Dimension Value".Code;
        }        

        field(82; "Relationship Officer Name"; Code[100])
        {
            Caption='Relationship Officer Name';
        }

        field(83; "Specific Sector"; Code[200])
        {
           Caption='Specific Sector';
        }  
        field(84; "Employer Name"; Code[50])
        {
            Caption='Employer Name';
        }

        field(85; "Terms of Services"; Option)
        {
            Caption='Terms of Services';
            OptionMembers="","Parmanent","Contract","Casual","Self Employed";
        }

        field(86; "Payroll/Staff No"; Code[20])
        {
            Caption='Payroll/Staff No';
        }

        field(87; "Occupation"; Code[30])
        {
            Caption='Occupation';
        }

        field(88; "Designation"; Code[30])
        {
            Caption='Designation';
        }

        field(89; "Station_Department"; Code[20])
        {
            Caption='Station/Department';
        }

        field(90; "Bank Code"; Code[20])
        {
            Caption='Bank Code';                  
        }

        field(91; "Bank Name"; Code[50])
        {
            Caption='Bank Name';
        }

        field(31; "Branch Code"; Code[20])
        {
            Caption='Branch Code';
            TableRelation="Dimension Value".Code;
        }        
        field(32; "Branch Name"; Code[50])
        {
            Caption='Branch Name';
        }

        field(33; "Bank Account No"; Code[20])
        {
            Caption='Bank Account No';
        }
        field(46; "Company Registration No_"; Code[20])
        {
            Caption='Company Registration No_';
        }

        field(47; "Loanee Type";Option)
        {
            Caption='Loanee Type';
            OptionMembers="Ordinary Member","Staff","BOD Member";
        }       

        field(7; "Dont Charge Transactions"; Boolean)
        {
            Caption='Dont Charge Transactions';
        }  
        field(94; "Employer Code"; Code[20])
        {
            Caption='Employer Code';
            TableRelation=Employers;
             trigger OnValidate()
            var
                recEcd: Record  Employers;                
            begin
                if  xRec."Employer Code"<>Rec."Employer Code" then 
                begin
                    
                    if recEcd.Get("Employer Code") then begin
                        "Employer Name":=recEcd."Employer Name";                
                    end;                    
                end;                
            end; 
        }    
        field(95; "Official Designation"; Code[30])
        {
            Caption='Official Designation';
        }
        field(96; "Rented/Owned"; Option)
        {
            Caption='Rented/Owned';
           OptionMembers="Rented","Owned";
        }            
        field(98; "Freeze Penalty"; Boolean)
        {
            Caption='Freeze Penalty';           
        } 
        field(99; "Freeze Interest"; Boolean)
        {
            Caption='Freeze Interest';           
        }         
        field(101; "Member Status"; Option)
        {
            Caption='Member Status'; 
            OptionMembers="","New","Active","Dormant","Frozen","Withdrawal Application","Wthdrawn","Deceased","Closed","Defaulter","Resigned","Retrenched";
        }
         field(102; "Credit Limit"; Decimal)
        {
            Caption='Credit Limit';             
        }
         field(103; "Customer No"; Code[30])
        {
            Caption='Customer No';
            TableRelation=Customer;   
             trigger OnValidate()
            var
                recCust: Record Customer;                
            begin
                if  xRec."Customer No"<>Rec."Customer No" then 
                begin
                    
                    if recCust.Get("Customer No") then begin
                        Name:=recCust.Name;                
                    end;                    
                end;                
            end;           
        }
         field(104; "Blocked"; Option)
        {
            Caption='Blocked'; 
            OptionMembers="","Ship","Invoice",All;           
        }
         field(105; "Customer Category";Option)
        {
            Caption='Customer Category'; 
            OptionMembers="";            
        }
        field(106; "Department Code";Integer)
        {
            Caption='Department Code';                      
        } 
        field(107; "Business Registration Date";Date)
        {
            Caption='Business Registration Date';                      
        }  
        field(108; "Bank Branch Code";Code[50])
        {
            Caption='Bank Branch Code';
             TableRelation="Bank Codes";  
            trigger OnValidate()
            var
                recBranch: Record  "Bank Codes";                
            begin
                if  xRec."Bank Branch Code"<>Rec."Bank Branch Code" then 
                begin
                    
                    if recBranch.Get("Bank Branch Code") then begin
                        "Bank Code":=recBranch."Bank Code";                           
                        "Bank Name":=recBranch."Bank Name";
                        "Branch Name":=recBranch."Branch Name";  
                        "Bank Branch Code":=recBranch."Bank Branch Code";                                      
                        
                    end;                    
                end;                
            end;                         
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
           "No":=NoMgt.GetNextNo(Setup."Member Editable Nos",WorkDate,true);
        end;        
    end;
}

