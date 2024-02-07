table 71706575 "Member Application"
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
        field(4; "Type of Customer"; Option)
        {
            Caption='Type of Customer';
            OptionMembers="Individual","Group","Business";
            DataClassification = TobeClassified;
        }
        field(8; "Status"; Option)
        {
            Caption='Status';
            OptionMembers="Open","Pending Approval","Approved";
            DataClassification = TobeClassified;
        }
        field(9; "First Name"; Code[20])
        {
            Caption='First Name';
            DataClassification = TobeClassified;
        }
        field(10; "Second Name"; Code[15])
        {
            Caption='Second Name';
            DataClassification = TobeClassified;
        }
        field(11; "Last Name"; Code[15])
        {
            Caption='Last Name';
            DataClassification = TobeClassified;
        }
        field(12; "Name"; Code[50])
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
            DataClassification = TobeClassified;                    
        }
        field(16; "City"; Code[30])
        {
            Caption='City';
            DataClassification = TobeClassified;
        }
        field(17; "Nationality"; Code[20])
        {
            Caption='Nationality';
            DataClassification = TobeClassified;
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
        field(18; "Phone No"; Code[10])
        {
            Caption='Phone No';
            DataClassification = TobeClassified;
        }
        field(19; "Mobile Phone No"; Code[12])
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
        field(24; "Responsibility Center"; Code[10])
        {
            Caption='Responsibility Center';
            DataClassification = TobeClassified;
        }
        field(25; "Gender"; Option)
        {
            Caption='Gender';
            OptionMembers="Male","Female","Others";
            DataClassification = TobeClassified;
        }
        field(26; "Date of Birth"; Date)
        {
            Caption='Date of Birth';
            DataClassification = TobeClassified;
        }
        field(27; "Identification Doc No"; Code[10])
        {
            Caption='Identification Doc No';
            DataClassification = TobeClassified;
        }
        field(28; "Passport No"; Code[10])
        {
            Caption='Passport No';
            DataClassification = TobeClassified;
        }
        field(29; "Marital Status"; Option)
        {
            Caption='Marital Status';
            OptionMembers="Single","Married";
            DataClassification = TobeClassified;
        }
        field(30; "P.I.N Code"; Code[12])
        {
            Caption='P.I.N Code';
            DataClassification = TobeClassified;
        }      
        field(34; "Business Location"; Code[50])
        {
            Caption='Business Location';
        }
        field(35; "Plot_Bldg_Street_Road"; Code[50])
        {
            Caption='Plot Bldg Street Road';
            DataClassification = TobeClassified;
        }
        field(36; "Picture"; Blob)
        {
            Caption='Picture';
            DataClassification = TobeClassified;
        }
        field(37; "Signature"; Blob)
        {
            Caption='Signature';
            DataClassification = TobeClassified;
        }
       field(38; "Source Of Customer"; Option)
        {
            Caption='Source Of Customer';
            OptionMembers="Agent","Social Media","Website","Call Center","Customer referral","Shareholder","Own Initiative","Staff Referral","Existing Top-up","Existing Revived","Outdoor Activities";
            DataClassification = TobeClassified;
        }
        field(39; "Recruited By"; Code[20])
        {
            Caption='Recruited By';
            TableRelation=Vendor;
            DataClassification = TobeClassified;
        }
        field(40; "Recruiter Name"; Code[50])
        {
            Caption='Recruiter Name';
            DataClassification = TobeClassified;
        }
        field(41; "Society Position"; Integer)
        {
            Caption='Society Position';
            DataClassification = TobeClassified;
        }
        field(42; "Statement E-Mail Freq"; Code[32])
        {
            Caption='Statement E-Mail Freq';
            DataClassification = TobeClassified;
        }
        field(43; "Registration Date"; DateTime)
        {
            Caption='Registration Date';
            DataClassification = TobeClassified;
        }
        field(44; "Customer Posting Group"; Code[10])
        {
            Caption='Customer Posting Group';
            DataClassification = TobeClassified;
            TableRelation="Customer Posting Group";
        }
        field(45; "Signing Instructions"; Code[30])
        {
            Caption='Signing Instructions';
            DataClassification = TobeClassified;
        }
        field(92; "Deposit Contribution"; Decimal)
        {
            Caption='Deposit Contribution';
            DataClassification = TobeClassified;
        }
        field(93; "Created"; Boolean)
        {
            Caption='Created';
            DataClassification = TobeClassified;
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
            DataClassification = TobeClassified;
        }
        field(53; "Monthly Contr_ Member Deposit"; Decimal)
        {
            Caption='Monthly Contr Member Deposit';
            DataClassification = TobeClassified;
        }
        field(54; "Monthly Contr_ Holiday Savings"; Decimal)
        {
            Caption='Monthly Contr Holiday Savings';
            DataClassification = TobeClassified;
        }
        field(55; "Monthly Contr_ Property Saving"; Decimal)
        {
            Caption='Monthly Contr Property Saving';
            DataClassification = TobeClassified;
        }
        field(56; "Monthly Contr_ Junior Savings"; Decimal)
        {
            Caption='Monthly Contr Junior Savings';
            DataClassification = TobeClassified;
        }
        field(57; "Employer 2"; Code[150])
        {
            Caption='Employer 2';
            DataClassification = TobeClassified;
        }
        field(58; "Contract Expiry Date"; DateTime)
        {
            Caption='Contract Expiry Date';
            DataClassification = TobeClassified;
        }
        field(59; "Official E-Mail"; Code[50])
        {
            Caption='Official E-Mail';
            DataClassification = TobeClassified;
        }
        field(60; "Home County"; Code[30])
        {
           Caption='Home County';
           TableRelation="County Codes";
            trigger OnValidate()
            var
                recHC: Record  "County Codes";                
            begin
                if  xRec."Home County"<>Rec."Home County" then 
                begin
                    
                    if recHC.Get("Home County") then begin
                        "Home County":=recHC."County Name";                
                    end;                    
                end;                
            end;  
        }
        field(61; "No_ of Dependants"; Integer)
        {
            Caption='No of Dependants';
            DataClassification = TobeClassified;
        }
        field(62; "Residence"; Text[50])
        {
            Caption='Residence';
            DataClassification = TobeClassified;
        }
        field(63; "Estate"; Text[50])
        {
            Caption='Estate';
            DataClassification = TobeClassified;
        }
        field(64; "Town"; Text[50])
        {
            Caption='Town';
            DataClassification = TobeClassified;
        }
        field(65; "Nearest Land Mark"; Text[50])
        {
            Caption='Nearest Land Mark';
            DataClassification = TobeClassified;
        }
        field(66; "Name of Spouse"; Text[100])
        {
            Caption='Name of Spouse';
            DataClassification = TobeClassified;
        }
        field(67; "Spouse ID No_"; Text[10])
        {
            Caption='Spouse ID No';
            DataClassification = TobeClassified;
        }
        field(68; "Spouse Mobile Phone No"; Code[12])
        {
            Caption='Spouse Mobile Phone No';
            DataClassification = TobeClassified;
        }
        field(69; "House No_"; Code[50])
        {
            Caption='House No';
            DataClassification = TobeClassified;
        } 
        field(71; "Name of Landlord"; Text[50])
        {
            Caption='Name of Landlord';
            DataClassification = TobeClassified;
        }
        field(72; "Landlord Phone No_"; Text[50])
        {
            Caption='Landlord Phone No';
            DataClassification = TobeClassified;
        }
        field(73; "Customer Sector"; Text[20])
        {
            Caption='Customer Sector';
            DataClassification = TobeClassified;
            TableRelation="Customer Sectors";
        }
        field(74; "Specific Business Narration"; Text[100])
        {
            Caption='Specific Business Narration';
            DataClassification = TobeClassified;
        }

        field(75; "Alternative  Phone No"; Text[20])
        {
            Caption='Alternative  Phone No';
            DataClassification = TobeClassified;
        } 
        field(77; "Security"; Option)
        {
            Caption='Security';
            OptionMembers="","Log Book","Land and Building","Share Guarantee","Checkoff","Staff Guarantee","HASL","Guarantor";
        }

        field(78; "Loan Amount"; Decimal)
        {
            Caption='Loan Amount';
            DataClassification = TobeClassified;
        }

        field(79; "Product Code"; Code[20])
        {
            Caption='Product Code';
            DataClassification = TobeClassified;
            TableRelation="Product Types";
        }

        field(80; "Identification Doc Type"; Option)
        {            
            Caption='Identification Doc Type';
            OptionMembers="","Identification Card","Passport";           
        }

        field(81; "Relationship Officer"; Code[20])
        {
            Caption='Relationship Officer';
            DataClassification = TobeClassified;
            TableRelation = "Dimension Value".Code;
            //  trigger OnValidate()
            // var
            //     recRO: Record  "Dimension Value";                
            // begin
            //     if  xRec."Relationship Officer"<>Rec."Relationship Officer" then 
            //     begin
                    
            //         if recRO.Get("Relationship Officer") then begin
            //             "Relationship Officer Name":=recRO.Name;                
            //         end;                    
            //     end;                
            // end;            
        }
        field(82; "Relationship Officer Name"; Code[100])
        {
            Caption='Relationship Officer Name';
            DataClassification = TobeClassified;
        }
        field(83; "Specific Sector"; Text[50])
        {
           Caption='Specific Sector';
           DataClassification = TobeClassified;
        }  
        field(84; "Employer Name"; Text[50])
        {
            Caption='Employer Name';
            DataClassification = TobeClassified;
        }
        field(85; "Terms of Services"; Option)
        {
            Caption='Terms of Services';
            OptionMembers="","Parmanent","Contract","Casual","Self Employed";
        }
        field(86; "Payroll/Staff No"; Code[20])
        {
            Caption='Payroll/Staff No';
            DataClassification = TobeClassified;
        }
        field(87; "Occupation"; Code[30])
        {
            Caption='Occupation';
            DataClassification = TobeClassified;
        }
        field(88; "Designation"; Code[30])
        {
            Caption='Designation';
            DataClassification = TobeClassified;
        }
        field(89; "Station_Department"; Code[20])
        {
            Caption='Station/Department';
            DataClassification = TobeClassified;
        }
        field(90; "Bank Code"; Code[20])
        {
            Caption='Bank Code';
            // TableRelation="Bank Codes";  
            // trigger OnValidate()
            // var
            //     recBank: Record  "Bank Codes";                
            // begin
            //     if  xRec."Bank Code"<>Rec."Bank Code" then 
            //     begin
                    
            //         if recBank.Get("Bank Code") then begin
            //             "Bank Code":=recBank."Bank Code";                           
            //             "Bank Name":=recBank."Bank Name";                                         
                        
            //         end;                    
            //     end;                
            // end;            
        }

        field(91; "Bank Name"; Code[50])
        {
            Caption='Bank Name';
            DataClassification = TobeClassified;
        }

        field(31; "Branch Code"; Code[20])
        {
            Caption='Branch Code';
           DataClassification = TobeClassified;
           TableRelation="Dimension Value".Code;           
        }

        field(32; "Branch Name"; Code[50])
        {
            Caption='Branch Name';   
            DataClassification = TobeClassified;         
        }
        field(33; "Bank Account No"; Code[20])
        {
            Caption='Bank Account No';
            DataClassification = TobeClassified;
        }
        field(46; "Company Registration No_"; Code[20])
        {
            Caption='Company Registration No_';
            DataClassification = TobeClassified;
        }
        field(47; "Loanee Type";Option)
        {
            Caption='Loanee Type';
            OptionMembers="Ordinary Member","Staff","BOD Member";
            DataClassification = TobeClassified;
        }       

        field(7; "Dont Charge Transactions"; Boolean)
        {
            Caption='Dont Charge Transactions';
            DataClassification = TobeClassified;
        }  
        field(94; "Employer Code"; Code[20])
        {
            Caption='Employer Code';
            DataClassification = TobeClassified;
            TableRelation=Employers;
            trigger OnValidate()
            var
                recEC: Record  Customer;                
            begin
                if  xRec."Employer Code"<>Rec."Employer Code" then 
                begin
                    
                    if recEC.Get("Employer Code") then begin
                        "Employer Name":=recEC."Name";                
                    end;                    
                end;                
            end;
        }    
        field(95; "Official Designation"; Text[30])
        {
            Caption='Official Designation';
            DataClassification = TobeClassified;
        }
        field(96; "Rented/Owned"; Option)
        {
            Caption='Rented/Owned';
           OptionMembers="","Rented","Owned";
           DataClassification = TobeClassified;
        }           
         field(98; "Application Fees"; Decimal)
        {
            Caption='Application Fees';  
            DataClassification = TobeClassified;         
        }    
         field(99; Address; Text[50])
        {
            Caption='Address';  
            DataClassification = TobeClassified;                   
        }   
        field(100; "Business Registration Date"; Date)
        {
            Caption='Date of Business Registration';    
            DataClassification = TobeClassified;       
        }   
         field(101; "Bank Branch Code"; Code[50])
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
           "No":=NoMgt.GetNextNo(Setup."Member Application Nos",WorkDate,true);
        end;        
    end;
}

