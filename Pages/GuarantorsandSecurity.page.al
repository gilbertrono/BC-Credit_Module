page 71706647 "Guarantors and Security"
{
    ApplicationArea = All;                    
    Caption = 'Guarantors and Security';
    PageType = List;
    SourceTable = "Guarantors and Security";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Security Type"; Rec."Security Type")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Security Type field.';
                }
                field("Guarantor No/Collateral ID"; Rec."Guarantor No/Collateral ID")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Guarantor No/Collateral ID field.';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Amount Guaranteed"; Rec."Amount Guaranteed")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Amount Guaranteed field.';
                }
                field("Collateral Reg No"; Rec."Collateral Reg No")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Collateral Reg No field.';
                }
                field("Collateral Value"; Rec."Collateral Value")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Collateral Value field.';
                }
                field("Owner No"; Rec."Owner No")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Owner No field.';
                }
                field("Loan Outstanding Balance"; Rec."Loan Outstanding Balance")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Loan Outstanding Balance field.';
                }
                field("Account No"; Rec."Account No")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Account No field.';
                }
                field("Available Shares"; Rec."Available Shares")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Available Shares field.';
                }
                field("Collateral Type"; Rec."Collateral Type")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Collateral Type field.';
                }
                field(Comments; Rec.Comments)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Comments field.';
                }
                field("Customer No"; Rec."Customer No")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Customer No field.';
                }
                field("Date"; Rec."Date")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Date field.';
                }
                field(Deposits_Shares; Rec.Deposits_Shares)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Deposits_Shares field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Document No"; Rec."Document No")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Document No field.';
                }
                field(EMAIL; Rec.EMAIL)
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the EMAIL field.';
                }
                field("Email Sent"; Rec."Email Sent")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Email Sent field.';
                }
                field("File"; Rec."File")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the File field.';
                }
                field("File Name"; Rec."File Name")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the File Name field.';
                }
                field("File Path"; Rec."File Path")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the File Path field.';
                }
                field("Guaranteed Balance"; Rec."Guaranteed Balance")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Guaranteed Balance field.';
                }
                field("Guarantor Comments"; Rec."Guarantor Comments")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Guarantor Comments field.';
                }
                field("Guarantor Status"; Rec."Guarantor Status")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Guarantor Status field.';
                }
                field("ID No"; Rec."ID No")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the ID No field.';
                }
                field("Initial Guaranteed Amount"; Rec."Initial Guaranteed Amount")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Initial Guaranteed Amount field.';
                }
                field("Line No"; Rec."Line No")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Line No field.';
                }
                field("Loan No"; Rec."Loan No")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan No field.';
                }
                field("Loanee Name"; Rec."Loanee Name")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loanee Name field.';
                }
                field("Member Guaranteed"; Rec."Member Guaranteed")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Member Guaranteed field.';
                }
                field("New Upload"; Rec."New Upload")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the New Upload field.';
                }
                field("No Of Loans Guaranteed"; Rec."No Of Loans Guaranteed")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the No Of Loans Guaranteed field.';
                }
                field("Old Number"; Rec."Old Number")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Old Number field.';
                }
                field("Percentage Guaranteed"; Rec."Percentage Guaranteed")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Percentage Guaranteed field.';
                }
                field("Release SMS Sent"; Rec."Release SMS Sent")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Release SMS Sent field.';
                }
                field("SMS Sent"; Rec."SMS Sent")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the SMS Sent field.';
                }
                field("Self Guarantee"; Rec."Self Guarantee")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Self Guarantee field.';
                }
                field("Shares Recovery"; Rec."Shares Recovery")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Shares Recovery field.';
                }
                field(Signature; Rec.Signature)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Signature field.';
                }
                field("Staff_Payroll No"; Rec."Staff_Payroll No")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Staff_Payroll No field.';
                }
                field(Substituted; Rec.Substituted)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Substituted field.';
                }
                field("Substituted By"; Rec."Substituted By")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Substituted By field.';
                }
                field("Total Guaranteed"; Rec."Total Guaranteed")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Total Guaranteed field.';
                }
                field(URL; Rec.URL)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the URL field.';
                }
            }
        }
    }
}
