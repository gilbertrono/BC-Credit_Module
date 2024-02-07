table 71706604 "Security Discounting"
{
    DataClassification=ToBeClassified;
    LookupPageId="Security Discounting";

    fields
    {
        field(1; "Security Disc. Code" ; Integer)
        {
            Caption='Security Disc. Code';
            AutoIncrement=true;

        }

        field(2; "Category" ; Option)
        {
            Caption='Category';
            OptionMembers="Log Book","Land and Building","Share Guarantee","Checkoff","Staff Guarantee","HASL","Guarantor";
        }

        field(3; "Security Type" ; Code[20])
        {
            Caption='Security Type';
        }

        field(4; "Narrative" ; Text[100])
        {
            Caption='Narrative';
        }

        field(5; "Margin on FSV" ; Decimal)
        {
            Caption='Margin on FSV';
        }
    }
     keys
    {
        key(PK; "Security Disc. Code")
        {
            Clustered = true;
        }
        
    }
}