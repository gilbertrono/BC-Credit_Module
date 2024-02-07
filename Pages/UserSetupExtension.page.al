pageextension 71706575 "User_Setup Extension" extends "User Setup"
{
    layout
    {
    addafter(PhoneNo)
        {
            field("Send Loan Notification";Rec."Send Loan Notification")
            {
                ApplicationArea=all;
            }
            field("Branch Code";Rec."Branch Code")
            {
                ApplicationArea=all;
                TableRelation="Dimension Value".Code;
            }
            field("Relationship Officer Code";Rec."Relationship Officer Code")
            {
                ApplicationArea=all;
                TableRelation="Dimension Value".Code;
            }
            field("Station/Department";Rec."Station/Department")
            {
                ApplicationArea=all;
            }
        }
    }    
}
