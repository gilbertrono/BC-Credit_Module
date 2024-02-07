table 71706596 "PayBill Buffer"
{
    DataClassification = ToBeClassified;
    
    fields
    {        
        field(1; RecId; Code[20])
        {
            Caption='RecId';
            DataClassification = ToBeClassified;            
        }

        field(2; TransID; Code[50])
        {
            Caption='TransID';
            DataClassification = ToBeClassified;   
        }

        field(3; TransType; Text[50])
        {
            Caption='TransType';
            DataClassification = ToBeClassified;   
        }

        field(4; ThirdPartyTransID; Code[50])
        {
            Caption='ThirdPartyTransID';
            DataClassification = ToBeClassified;   
        }

        field(5; MSISDN; Code[50])
        {
            Caption='MSISDN';
            DataClassification = ToBeClassified;   
        }

        field(7; BusinessShortCode; Code[50])
        {
            Caption='Business Short Code';
            DataClassification = ToBeClassified;   
        }

        field(8; TransAmount; Decimal)
        {
            Caption='Trans Amount';
            DataClassification = ToBeClassified;   
        }

        field(9; TransTime; Time)
        {
            Caption='Trans Time';
            DataClassification = ToBeClassified;   
        }

        field(10; BillRefNumber; Code[20])
        {
            Caption='Bill Ref Number';
            DataClassification = ToBeClassified;   
        }

        field(11; FirstName; Text[50])
        {
            Caption='FirstName';
            DataClassification = ToBeClassified;   
        }

        field(12; Posted; Boolean)
        {
            Caption='Posted';
            DataClassification = ToBeClassified;   
        }

        field(13; Failed; Boolean)
        {
            Caption='Failed';
            DataClassification = ToBeClassified;   
        }

        field(14; "Modified By"; Text[50])
        {
            Caption='Modified By';
            DataClassification = ToBeClassified;   
        }

        field(15; "Old ID No"; Code[50])
        {
            Caption='Old ID No';
            DataClassification = ToBeClassified;   
        }
    }

        
   keys
    {
        key(PK; "RecId")
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
        if "RecId"='' then 
        begin
           Setup.Get();
           "RecId":=NoMgt.GetNextNo(Setup."Paybill Buffer Nos",WorkDate,true);
        end;        
    end;
}