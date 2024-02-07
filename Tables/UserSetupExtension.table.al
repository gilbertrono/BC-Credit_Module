tableextension 71706575 "User_Setup Extension" extends "User Setup"
{
    fields
    {
        field(24; "Send Loan Notification"; Boolean)
        {
            Caption = 'Send Loan Notification';
            DataClassification = ToBeClassified;
        }
        field(25; "Branch Code"; Code[20])
        {
            Caption = 'Branch Code';
            DataClassification = ToBeClassified;
        }
        field(22; "Relationship Officer Code"; Code[20])
        {
            Caption = 'Relationship Officer Code';
            DataClassification = ToBeClassified;
        }
        field(23; "Station/Department"; Option)
        {
            Caption = 'Station/Department';
            OptionMembers="","Business Development","Credit","Finance";
            DataClassification = ToBeClassified;
        }
    }
}
