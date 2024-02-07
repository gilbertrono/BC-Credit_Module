table 71706588 "Collateral Register"
{
    
    DataClassification = TobeClassified;   

    fields
    {       

        field(1; "No"; Code[50]) 
        {            
            Caption = 'No';
            DataClassification = TobeClassified;
        }
        field(3; "Application Date"; Date) 
        {            
            Caption = 'Application Date';
            DataClassification = TobeClassified;
        }
        field(4; "Application Time"; Time) 
        {            
            Caption = 'Application Time';
            DataClassification = TobeClassified;
        }        
        field(6; "Inward_Outward"; Integer) 
        {            
            Caption = 'Inward/Outward';
            DataClassification = TobeClassified;
        }
        field(7; "User ID"; Code[50]) 
        {            
            Caption = 'User ID';
            DataClassification = TobeClassified;
        }
        field(8; "Responsibility Center"; Code[20]) 
        {            
            Caption = 'Responsibility Center';
            DataClassification = TobeClassified;
        } 
        field(10; "Remarks"; Text[150]) 
        {            
            Caption = 'Remarks';
            DataClassification = TobeClassified;
        }
        field(11; "Customer No"; Code[20]) 
        {            
            Caption = 'Customer Number';
           TableRelation=Customer;   
             trigger OnValidate()
            var
                recCust: Record Customer;                
            begin
                if  xRec."Customer No"<>Rec."Customer No" then 
                begin
                    
                    if recCust.Get("Customer No") then begin
                        "Member Name":=recCust.Name;
                        "ID No":=recCust."Identification Doc No";
                        "KRA Pin":=recCust."P.I.N Code";                                                            
                    end;                    
                end;                
            end;  
        }
        field(12; "Member Name"; Text[90]) 
        {            
            Caption = 'Member Name';
            DataClassification = TobeClassified;
        }
        field(13; "Account No"; Code[20]) 
        {            
            Caption = 'Account Number';
            DataClassification = TobeClassified;
        }
        field(14; "Collateral Type"; Option) 
        {            
            Caption = 'Collateral Type';
            OptionMembers="","Log Book","Title Deed";
        }
        field(15; "Collateral"; Code[20]) 
        {            
            Caption = 'Collateral';
        }
        field(16; "Collateral Name"; Code[200]) 
        {            
            Caption = 'Collateral Name';
        }
        field(17; "Collateral Multiplier"; Integer) 
        {            
            Caption = 'Collateral Multiplier';
        }
        field(18; "Market Value"; Decimal) 
        {            
            Caption = 'Market Value';
        }
        field(19; "Collateral Limit"; Decimal) 
        {            
            Caption = 'Collateral Limit';
        }
        field(20; "Valuation Date"; Date) 
        {            
            Caption = 'Valuation Date';
        }
        field(21; "Forced Sale Value"; Decimal) 
        {            
            Caption = 'Forced Sale Value';
        }
        field(22; "Collateral Perfected"; Boolean) 
        {            
            Caption = 'Collateral Perfected';
        }
        field(23; "Next Valuation Date"; Date) 
        {            
            Caption = 'Next Valuation Date';
        }
        field(24; "Processed"; Boolean) 
        {            
            Caption = 'Processed';
        }
        field(25; "Date Processed"; Date) 
        {            
            Caption = 'Date Processed';
        }
        field(26; "Time Processed"; Time) 
        {            
            Caption = 'Time Processed';
        }
        field(27; "Release ID"; Code[20]) 
        {            
            Caption = 'Release ID';
        }
        field(28; "Discharged"; Boolean) 
        {            
            Caption = 'Discharged';
        }
        field(29; "Discharge Date"; Date) 
        {            
            Caption = 'Discharge Date';
        }
        field(30; "Discharge Time"; Time) 
        {            
            Caption = 'Discharge Time';
        }
        field(31; "Discharge By"; Code[50]) 
        {            
            Caption = 'Discharge By';
        }
        field(32; "Processed By"; Code[50]) 
        {            
            Caption = 'Processed By';
        }
        field(33; "KRA Pin"; Code[20]) 
        {            
            Caption = 'KRA Pin';
        }
        field(34; "ID No";Text[20]) 
        {            
            Caption = 'ID No';
        }
        field(35; "Number Plate"; Code[20]) 
        {            
            Caption = 'Number Plate';
        }
        field(36; "Chasis Number"; Code[20]) 
        {            
            Caption = 'Chasis Number';
        }
        field(37; "Engine Number"; Code[50]) 
        {            
            Caption = 'Engine Number';
        }
        field(38; "Make"; Code[100]) 
        {            
            Caption = 'Make';
        }
        field(39; "Model"; Code[100]) 
        {            
            Caption = 'Model';
        }
        field(40; "Colour"; Code[20]) 
        {            
            Caption = 'Colour';
        }
        field(41; "Year"; Code[20]) 
        {            
            Caption = 'Year';
        }
        field(42; "Discounted Value"; Decimal) 
        {            
            Caption = 'Discounted Value';
        }
        field(43; "Title NoRef No"; Code[20])
        {            
            Caption = 'Title No/Ref No';
        }
        field(44; "Location"; Text[50]) 
        {            
            Caption = 'Location';
        }
        field(45; "Size"; Decimal) 
        {            
            Caption = 'Size';
        }
        field(46; "Land Type"; Code[20]) 
        {            
            Caption = 'Land Type';
        }
        field(47; "Usage"; Code[20]) 
        {            
            Caption = 'Usage';
        }
        field(48; "Development Status"; Code[20]) 
        {            
            Caption = 'Development Status';
        }
        field(49; "Any Encumbrance"; Code[20]) 
        {            
            Caption = 'Any Encumbrance';
        }
        field(50; "Security Discounting Code"; Code[20]) 
        {            
            Caption = 'Security Discounting Code';
            TableRelation="Security Discounting";
        }
        field(51; "Is Owner?"; Option) 
        {            
            Caption = 'Is Owner?';
            OptionMembers="",Yes,No;
        }
        field(52; "Registered Owner"; Code[200]) 
        {            
            Caption = 'Registered Owner';
        }
        field(53; "File No"; Code[10]) 
        {            
            Caption = 'File No';
        }
        field(54; "Manufacture Year"; Code[10]) 
        {            
            Caption = 'Manufacture Year';
        }
        field(55; "Valuation By"; Code[50]) 
        {            
            Caption = 'Valuation By';
        }
        field(56; "Valuation Expiry Date"; Date) 
        {            
            Caption = 'Valuation Expiry Date';
        }
        field(57; "In Insured"; Integer) 
        {            
            Caption = 'In Insured';
        }
        field(58; "Policy No"; Code[100]) 
        {            
            Caption = 'Policy No';
        }
        field(59; "Insurance Policy"; Code[20]) 
        {            
            Caption = 'Insurance Policy';
        }  
        field(60; "Insurance Company"; Code[50]) 
        {            
            Caption = 'Insurance Company';
        }
        field(61; "Written Down Value"; Decimal) 
        {            
            Caption = 'Written Down Value';
        }
        field(62; "Premium Amount"; Decimal) 
        {            
            Caption = 'Premium Amount';
        }
        field(63; "Start Date"; Date) 
        {            
            Caption = 'Start Date';
        }
        field(64; "Insurance Expiry Date"; Date) 
        {            
            Caption = 'Insurance Expiry Date';
        }
        field(65; "Property Document No"; Code[100]) 
        {            
            Caption = 'Property Document No';
        }
        field(66; "Property Document Date"; Date) 
        {            
            Caption = 'Property Document Date';
        }
        field(67; "Review Date"; Date) 
        {            
            Caption = 'Review Date';
        }
        field(68; "Land Area"; Code[10]) 
        {            
            Caption = 'Land Area';
        }
        field(69; "Build Area"; Code[20])
        {            
            Caption = 'Build Area';
        }
        field(70; "Construction Year"; Code[10]) 
        {            
            Caption = 'Construction Year';
        }
        field(71; "Insurable value"; Decimal) 
        {            
            Caption = 'Insurable value';
        }
        field(72; "Utility Status"; Code[20]) 
        {    
            Caption = 'Utility Status';
        }
        field(73; "Is Leased"; Integer) 
        {   
            Caption = 'Is Leased';
        }
        field(74; "Lease Expiry Date"; Date) 
        {            
            Caption = 'Lease Expiry Date';
        } 
        field(77; "Discounting"; Decimal) 
        {            
            Caption = 'Discounting ';
        }
        field(78; "Vehicle Type"; Code[50]) 
        {            
            Caption = 'Vehicle Type';
        }
        field(79; "Fuel Type"; Code[20]) 
        {            
            Caption = 'Fuel Type';
        }
        field(80; "External Guarantor"; Code[20]) 
        {
            
            Caption = 'External Guarantor';
            TableRelation=Guarantors;
             trigger OnValidate()
            var
                recGN: Record Guarantors;                
            begin
                if  xRec."External Guarantor"<>Rec."External Guarantor" then 
                begin
                    
                    if recGN.Get("External Guarantor") then begin
                        "External Guarantor Name":=recGN."Last Name";                                       
                    end;                    
                end;                
            end;
        }

        field(81; "External Guarantor Name"; Code[100]) 
        {            
            Caption = 'External Guarantor Name';
        }
        field(82; "Tracking Expiry Date"; Date) 
        {            
            Caption = 'Tracking Expiry Date';
        }
        field(83; "Status"; Option) 
        {            
            Caption = 'Collateral Status';
            OptionMembers="Open","Pending Approval","Approved";
        }
        field(84; "Date of Registration"; Date) 
        {            
            Caption = 'Date of Registration';
        }   
         field(89; "Branch Code"; Code[50]) 
        {            
            Caption = 'Branch Code';
            TableRelation="Dimension Value".code;
        }  
          field(90; "Relationship Officer"; Code[50]) 
        {            
            Caption = 'Relationship Officer';
            TableRelation="Dimension Value".code;
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
           "No":=NoMgt.GetNextNo(Setup."Loan Collaterals",WorkDate,true);
        end;        
    end;
}