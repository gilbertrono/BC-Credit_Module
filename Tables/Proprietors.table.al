table 71706613 Proprietors
{
    Caption = 'Proprietors';
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
        field(3; "Application No." ; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Relationship; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers=Cousin,Daughter,Son,Husband,Wife,Father,Mother,GrandFather,Grandmother;
        }
        field(5; "ID Number"; Code[20])
        {
            DataClassification = ToBeClassified;
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
        field(11; "Mobile Phone No"; Text[30])
        {
            DataClassification = ToBeClassified;
        }      
        field(10; Email; Text[80])
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
