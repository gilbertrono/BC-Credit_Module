page 71706648 "Loan Top Up"
{
    ApplicationArea = All; 
    Caption = 'Loan Top Up';
    PageType = List;
    SourceTable = "Loan Top Up";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Loan TopUp_No"; Rec."Loan TopUp_No")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Loan TopUp_No field.';
                }
                field("Client Code"; Rec."Client Code")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Client Code field.';
                }
                field("Loan Type"; Rec."Loan Type")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Loan Type field.';
                }
                field("Principle Top Up"; Rec."Principle Top Up")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Principle Top Up field.';
                }
                field("Interest Top Up"; Rec."Interest Top Up")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Interest Top Up field.';
                }
                field(Penalty; Rec.Penalty)
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Penalty field.';
                }
                field("Total Top Up"; Rec."Total Top Up")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Total Top Up field.';
                }
                field("Interest Rate"; Rec."Interest Rate")
                {
                    ApplicationArea = All;                    
                    ToolTip = 'Specifies the value of the Interest Rate field.';
                }
                field("Additional Top Up Commission"; Rec."Additional Top Up Commission")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Additional Top Up Commission field.';
                }
                field(Commission; Rec.Commission)
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Commission field.';
                }
                field("Insurance Rebate"; Rec."Insurance Rebate")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Insurance Rebate field.';
                }
                field("ID No."; Rec."ID No.")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the ID No. field.';
                }
                field("Interest Paid"; Rec."Interest Paid")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Interest Paid field.';
                }
                field("Loan Account"; Rec."Loan Account")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan Account field.';
                }
                field("Loan Span"; Rec."Loan Span")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Loan Span field.';
                }
                field("Monthly Repayment"; Rec."Monthly Repayment")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Monthly Repayment field.';
                }
                field("One Month Interest"; Rec."One Month Interest")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the One Month Interest field.';
                }
                field("Outstanding Balance"; Rec."Outstanding Balance")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Outstanding Balance field.';
                }
                field("Outstanding Bill"; Rec."Outstanding Bill")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Outstanding Bill field.';
                }
                field("Untransferred Interest"; Rec."Untransferred Interest")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Untransferred Interest field.';
                }
            }
        }
    }
}
