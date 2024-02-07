tableextension 71706576 "Customer Extension" extends Customer
{
    fields
    {
        field(172; "Application Date"; DateTime)
        {
            Caption='Application Date';
            DataClassification = TobeClassified;
        }
        field(173; "Application Time"; DateTime)
        {
            Caption='Application Time';
            DataClassification = TobeClassified;
        }        
        field(174; "Created By"; Code[50])
        {
            Caption='Created By';
            DataClassification = TobeClassified;
        }
        field(175; "Type of Customer"; Option)
        {
            Caption='Type of Customer';
            OptionMembers="Individual","Group","Business";
            DataClassification = TobeClassified;
        }
        field(176; "Status"; Option)
        {
            Caption='Status';
            OptionMembers="Open","Pending","Closed";
            DataClassification = TobeClassified;
        }
        field(177; "First Name"; Code[20])
        {
            Caption='First Name';
            DataClassification = TobeClassified;
        }
        field(178; "Second Name"; Code[15])
        {
            Caption='Second Name';
            DataClassification = TobeClassified;
        }
        field(179; "Last Name"; Code[15])
        {
            Caption='Last Name';
            DataClassification = TobeClassified;
        }        
        field(180; "Current Address"; Code[50])
        {
            Caption='Current Address';
            DataClassification = TobeClassified;
        }
        field(181; "Home Address"; Code[50])
        {
            Caption='Home Address';
            DataClassification = TobeClassified;
        }
        field(182; "Postal Code"; Code[20])
        {
            Caption='Post Code';
            TableRelation="Post Code";
            DataClassification = TobeClassified;                    
        }        
        field(183; "Nationality"; Code[20])
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
        field(25; "Gender"; Option)
        {
            Caption='Gender';
            OptionMembers="Male","Female","Others";
            DataClassification = TobeClassified;
        }
        field(187; "Date of Birth"; Date)
        {
            Caption='Date of Birth';
            DataClassification = TobeClassified;
        }
        field(188; "Identification Doc No"; Code[10])
        {
            Caption='Identification Doc No';
            DataClassification = TobeClassified;
        }
        field(189; "Passport No"; Code[10])
        {
            Caption='Passport No';
            DataClassification = TobeClassified;
        }
        field(190; "Marital Status"; Option)
        {
            Caption='Marital Status';
            OptionMembers="Single","Married";
            DataClassification = TobeClassified;
        }
        field(191; "P.I.N Code"; Code[12])
        {
            Caption='P.I.N Code';
            DataClassification = TobeClassified;
        }      
        field(192; "Business Location"; Code[50])
        {
            Caption='Business Location';
        }
        field(193; "Plot_Bldg_Street_Road"; Code[50])
        {
            Caption='Plot Bldg Street Road';
            DataClassification = TobeClassified;
        }        
        field(194; "Signature"; Blob)
        {
            Caption='Signature';
            DataClassification = TobeClassified;
        }
       field(195; "Source Of Customer"; Option)
        {
            Caption='Source Of Customer';
            OptionMembers="Agent","Social Media","Website","Call Center","Customer referral","Shareholder","Own Initiative","Staff Referral","Existing Top-up","Existing Revived","Outdoor Activities";
            DataClassification = TobeClassified;
        }
        field(196; "Recruited By"; Code[20])
        {
            Caption='Recruited By';
            TableRelation=Vendor;
            DataClassification = TobeClassified;
        }
        field(197; "Recruiter Name"; Code[50])
        {
            Caption='Recruiter Name';
            DataClassification = TobeClassified;
        }
        field(198; "Society Position"; Integer)
        {
            Caption='Society Position';
            DataClassification = TobeClassified;
        }
        field(199; "Statement E-Mail Freq"; Code[32])
        {
            Caption='Statement E-Mail Freq';
            DataClassification = TobeClassified;
        }
        field(200; "Registration Date"; DateTime)
        {
            Caption='Registration Date';
            DataClassification = TobeClassified;
        }        
        field(202; "Signing Instructions"; Code[30])
        {
            Caption='Signing Instructions';
            DataClassification = TobeClassified;
        }
        field(201; "Deposit Contribution"; Decimal)
        {
            Caption='Deposit Contribution';
            DataClassification = TobeClassified;
        }
        field(203; "Created"; Boolean)
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
        field(51; "County_"; Code[30])
        {
            Caption='County';
            TableRelation="County Codes";
            trigger OnValidate()
            var
                recC: Record  "County Codes";                
            begin
                if  xRec."County_"<>Rec."County_" then 
                begin
                    
                    if recC.Get("County_") then begin
                        "County_":=recC."County Name";                
                    end;                    
                end;                
            end;            
        }
        field(52; "Monthly Contr_ Share Capital"; Decimal)
        {
            Caption='Monthly Contr Share Capital';
            DataClassification = TobeClassified;
        }
        field(204; "Monthly Contr_ Member Deposit"; Decimal)
        {
            Caption='Monthly Contr Member Deposit';
            DataClassification = TobeClassified;
        }
        field(205; "Monthly Contr_ Holiday Savings"; Decimal)
        {
            Caption='Monthly Contr Holiday Savings';
            DataClassification = TobeClassified;
        }
        field(206; "Monthly Contr_ Property Saving"; Decimal)
        {
            Caption='Monthly Contr Property Saving';
            DataClassification = TobeClassified;
        }
        field(207; "Monthly Contr_ Junior Savings"; Decimal)
        {
            Caption='Monthly Contr Junior Savings';
            DataClassification = TobeClassified;
        }
        field(208; "Employer 2"; Code[150])
        {
            Caption='Employer 2';
            DataClassification = TobeClassified;
        }
        field(209; "Contract Expiry Date"; DateTime)
        {
            Caption='Contract Expiry Date';
            DataClassification = TobeClassified;
        }
        field(210; "Official E-Mail"; Code[50])
        {
            Caption='Official E-Mail';
            DataClassification = TobeClassified;
        }
        field(211; "Home County"; Code[30])
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
        field(212; "No_ of Dependants"; Integer)
        {
            Caption='No of Dependants';
            DataClassification = TobeClassified;
        }
        field(213; "Residence"; Text[50])
        {
            Caption='Residence';
            DataClassification = TobeClassified;
        }
        field(214; "Estate"; Text[50])
        {
            Caption='Estate';
            DataClassification = TobeClassified;
        }
        field(215; "Town"; Text[50])
        {
            Caption='Town';
            DataClassification = TobeClassified;
        }
        field(216; "Nearest Land Mark"; Text[50])
        {
            Caption='Nearest Land Mark';
            DataClassification = TobeClassified;
        }
        field(217; "Name of Spouse"; Text[100])
        {
            Caption='Name of Spouse';
            DataClassification = TobeClassified;
        }
        field(218; "Spouse ID No"; Text[10])
        {
            Caption='Spouse ID No';
            DataClassification = TobeClassified;
        }        
        field(68; "Spouse Mobile Phone No"; Code[12])
        {
            Caption='Spouse Mobile Phone No';
            DataClassification = TobeClassified;
        }
        field(219; "House No_"; Code[50])
        {
            Caption='House No';
            DataClassification = TobeClassified;
        } 
        field(220; "Name of Landlord"; Text[50])
        {
            Caption='Name of Landlord';
            DataClassification = TobeClassified;
        }
        field(221; "Landlord Phone No_"; Text[50])
        {
            Caption='Landlord Phone No';
            DataClassification = TobeClassified;
        }
        field(222; "Customer Sector"; Text[20])
        {
            Caption='Customer Sector';
            DataClassification = TobeClassified;
            TableRelation="Customer Sectors";
        }
        field(223; "Specific Business Narration"; Text[100])
        {
            Caption='Specific Business Narration';
            DataClassification = TobeClassified;
        }

        field(224; "Alternative  Phone No"; Text[20])
        {
            Caption='Alternative  Phone No';
            DataClassification = TobeClassified;
        } 
        field(225; "Security"; Option)
        {
            Caption='Security';
            OptionMembers="","Log Book","Land and Building","Share Guarantee","Checkoff","Staff Guarantee","HASL","Guarantor";
        }

        field(226; "Loan Amount"; Decimal)
        {
            Caption='Loan Amount';
            DataClassification = TobeClassified;
        }

        field(227; "Product Code"; Code[20])
        {
            Caption='Product Code';            
            TableRelation="Product Types";
            DataClassification = TobeClassified;
        }

        field(228; "Identification Doc Type"; Option)
        {            
            Caption='Identification Doc Type';
            OptionMembers="","Identification Card","Passport";           
        }

        field(229; "Relationship Officer"; Code[20])
        {
            Caption='Relationship Officer';
            DataClassification = TobeClassified;
            TableRelation="Dimension Value".Code;             
        }
        field(230; "Relationship Officer Name"; Code[100])
        {
            Caption='Relationship Officer Name';
            DataClassification = TobeClassified;
        }
        field(231; "Specific Sector"; Text[50])
        {
           Caption='Specific Sector';
           DataClassification = TobeClassified;
        }  
        field(232; "Employer Name"; Text[50])
        {
            Caption='Employer Name';
            DataClassification = TobeClassified;
        }
        field(233; "Terms of Services"; Option)
        {
            Caption='Terms of Services';
            OptionMembers="","Parmanent","Contract","Casual","Self Employed";
        }
        field(234; "Payroll/Staff No"; Code[20])
        {
            Caption='Payroll/Staff No';
            DataClassification = TobeClassified;
        }
        field(235; "Occupation"; Code[30])
        {
            Caption='Occupation';
            DataClassification = TobeClassified;
        }
        field(236; "Designation"; Code[30])
        {
            Caption='Designation';
            DataClassification = TobeClassified;
        }
        field(237; "Station_Department"; Code[20])
        {
            Caption='Station/Department';
            DataClassification = TobeClassified;
        }
        field(238; "Bank Code"; Code[20])
        {
            Caption='Bank Code';
             DataClassification = TobeClassified;        
        }

        field(239; "Bank Name"; Code[50])
        {
            Caption='Bank Name';
            DataClassification = TobeClassified;
        }

        field(240; "Branch Code"; Code[20])
        {
            Caption='Branch Code';
           DataClassification = TobeClassified;
           TableRelation="Dimension Value".Code;           
        }

        field(241; "Branch Name"; Code[50])
        {
            Caption='Branch Name';   
            DataClassification = TobeClassified;         
        }
        field(242; "Bank Account No"; Code[20])
        {
            Caption='Bank Account No';
            DataClassification = TobeClassified;
        }
        field(243; "Company Registration No_"; Code[20])
        {
            Caption='Company Registration No_';
            DataClassification = TobeClassified;
        }
        field(244; "Loanee Type";Option)
        {
            Caption='Loanee Type';
            OptionMembers="Ordinary Member","Staff","BOD Member";
            DataClassification = TobeClassified;
        }       

        field(245; "Dont Charge Transactions"; Boolean)
        {
            Caption='Dont Charge Transactions';
            DataClassification = TobeClassified;
        }  
        field(246; "Employer Code"; Code[20])
        {
            Caption='Employer Code';
            TableRelation=Employers."No.";            
            trigger OnValidate()
            var
                recECD: Record  Employers;                
            begin
                if  xRec."Employer Code"<>Rec."Employer Code" then 
                begin
                    
                    if recECD.Get("Employer Code") then begin
                        "Employer Name":=recECD."Employer Name";                                                             
                        
                    end;                    
                end;                
            end;               
        }    
        field(247; "Official Designation"; Text[30])
        {
            Caption='Official Designation';
            DataClassification = TobeClassified;
        }
        field(248; "Rented/Owned"; Option)
        {
            Caption='Rented/Owned';
           OptionMembers="","Rented","Owned";
           DataClassification = TobeClassified;
        }           
         field(249; "Application Fees"; Decimal)
        {
            Caption='Application Fees';  
            DataClassification = TobeClassified;         
        }      
        field(250; "Business Registration Date"; Date)
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
         field(251; "Member Status"; Option)
        {
            Caption='Member Status'; 
            OptionMembers="","New","Active","Dormant","Frozen","Withdrawal Application","Withdrawn","Deceased","Defaulter","Closed";
            DataClassification = TobeClassified;                       
        } 
        field(252; "Customer Category"; Code[50])
        {
            Caption='Customer Category'; 
            DataClassification = TobeClassified;                       
        } 
        field(253; "Freeze Penalty"; Boolean)
        {
            Caption='Freeze Penalty'; 
            DataClassification = TobeClassified;                       
        } 
        field(254; "Freeze Interest"; Boolean)
        {
            Caption='Freeze Interest'; 
            DataClassification = TobeClassified;                       
        } 
        field(255; "Department Code"; Boolean)
        {
            Caption='Department Code'; 
            DataClassification = TobeClassified;                       
        } 
        field(256; "Repayment Account Balance"; Decimal)
        {
            Caption='Repayment Account Balance'; 
            DataClassification = TobeClassified;                       
        } 
        field(257; "No of Male Employees"; Integer)
        {
            Caption='No of Male Employees'; 
            DataClassification = TobeClassified;                       
        } 
        field(258; "No of Female Employees"; Integer)
        {
            Caption='No of Female Employees'; 
            DataClassification = TobeClassified;                       
        } 
        field(259; "No of Employees"; Integer)
        {
            Caption='No of Employees'; 
            DataClassification = TobeClassified;                       
        }  
        field(260; "Defaulter Employer"; Boolean)
        {
            Caption='No of Employees'; 
            DataClassification = TobeClassified;                       
        }    
        field(261; "Enforce Employer 2"; Boolean)
        {
            Caption='Enforce Employer 2'; 
            DataClassification = TobeClassified;                       
        }  
        field(262; "Office Telephone Number"; Text[50])
        {
            Caption='Office Telephone Number'; 
            DataClassification = TobeClassified;                       
        }  
        field(263; "Member No"; Text[50])
        {
            Caption='Member No'; 
            DataClassification = TobeClassified;                       
        } 
        field(264; "User ID"; Code[50])
        {
            Caption='User ID';
            TableRelation=user."User Name"; 
            DataClassification = TobeClassified;                       
        } 
        
    }
}
