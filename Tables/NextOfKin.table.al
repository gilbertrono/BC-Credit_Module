table 71706612 NextOfKin
{
    Caption = 'NextOfKin';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Entry No"; Integer)
        {
            Caption = 'Entry No';
            AutoIncrement=true;
            DataClassification = ToBeClassified;
        }
        field(2; Name; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Account No." ; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Relationship; Option)
        {
            DataClassification = CustomerContent;
            OptionMembers=Cousin,Daughter,Son,Husband,Wife,Father,Mother,GrandFather,Grandmother;
        }
        field(5; Beneficiary; Code[20])
        {
            DataClassification = CustomerContent;
        }
        field(6; "Date of Birth" ; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Address; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(8; Telephone; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(9; Fax; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(10; Email; Text[80])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "ID/Passport/Birth Cert. No." ; Code[30])
        {
            DataClassification = ToBeClassified;
        }
        field(12; Allocation; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(13; Type; Option)
        {
            OptionMembers="";
            DataClassification = ToBeClassified;
        }
        field(14; Deceased; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Birth Certificate Number" ; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Entry No")
        {
            Clustered = true;
        }
    }
}
