table 71706589 "Loan Collateral Setup"
{
    Caption='Loan Collateral Setup';
    DataClassification = ToBeClassified;  

    fields
    {    
        field(2; Code; Code[20])
        {
           Caption='Code';
           DataClassification = ToBeClassified;
        }
        field(3; Type; Option)
        {
            Caption='Type'; 
            DataClassification = ToBeClassified;
            OptionMembers="","Real Estate","Plant and Equipment","Natural Reserves","Marketable Securities","Inventory","Motor Vehicle";

        }
        field(4; "Security Description"; Text[50])
        {
            Caption='Security Description';   
            DataClassification = ToBeClassified;        
        }
        field(5; Category; Option)
        {
            Caption='Category';  
            OptionMembers="",Cash,"Government Securities","Corporate Bonds",Equity,"Mortgage Securities",Lien,"Motor Vehicle",Others;
            DataClassification = ToBeClassified;         
        }
        field(6; "Collateral Multiplier"; Integer)
        {
             Caption='Collateral Multiplier';   
             DataClassification = ToBeClassified;         
        }
        field(7; Examples; Text[250])
        {
            Caption='Examples';  
            DataClassification = ToBeClassified;          
        }
        field(8; Blocked; Boolean)
        {
            Caption='Blocked';    
            DataClassification = ToBeClassified;        
        }
        field(9; "Last Date Modified"; DateTime)
        {
           Caption='Last Date Modified';
           DataClassification = ToBeClassified;            
        }
        field(10; "Revaluation Frequency"; Code[32])
        {
            Caption='Revaluation Frequency';    
            DataClassification = ToBeClassified;        
        }
    }
    keys
    {
        key(PK; Code)
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
        if "Code"='' then 
        begin
           Setup.Get();
           "Code":=NoMgt.GetNextNo(Setup."Collateral Nos",WorkDate,true);
        end;        
    end;
}