page 71706655 "Member Statistices Factbox"
{
    Caption = 'Customer Info';
    PageType = CardPart;
    SourceTable = Customer;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the customer. The field is either filled automatically from a defined number series, or you enter the number manually because you have enabled manual number entry in the number-series setup.';
                    trigger OnDrillDown()
                    begin
                        ShowDetails;
                    end;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = all;
                }
                field("Identification Doc Type"; Rec."Identification Doc Type")
                {
                    ApplicationArea = all;
                }
                field("Identification Doc No"; Rec."Identification Doc No")
                {
                    ApplicationArea = all;
                }
                field("Mobile Phone No."; Rec."Mobile Phone No.")
                {
                    ApplicationArea = all;
                }
                field("Outstanding Principal Balance"; "Outstanding Principal Balance")
                {
                    ApplicationArea = all;
                    AccessByPermission = TableData Loans = R;
                    trigger OnDrillDown()
                    var
                        DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
                        CustLedgEntry: Record "Cust. Ledger Entry";
                        OustPrinBal: Decimal;
                    begin

                        DtldCustLedgEntry.SetRange("Customer No.", Rec."No.");
                        DtldCustLedgEntry.SetRange("Transaction Type", DtldCustLedgEntry."Transaction Type"::"Oustanding Principal");
                        OustPrinBal := 0;
                        if DtldCustLedgEntry.FindSet() then begin
                            repeat
                                OustPrinBal += DtldCustLedgEntry.Amount;
                            until DtldCustLedgEntry.Next() = 0;
                        end;
                        CustLedgEntry.DrillDownOnEntries(DtldCustLedgEntry);
                    end;
                }
                field("Outstanding Interest"; "Outstanding Interest")
                {
                    ApplicationArea = all;
                    AccessByPermission = TableData Loans = R;
                    trigger OnDrillDown()
                    var
                        DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
                        CustLedgEntry: Record "Cust. Ledger Entry";
                        OustInterest: Decimal;
                    begin

                        DtldCustLedgEntry.SetRange("Customer No.", Rec."No.");
                        DtldCustLedgEntry.SetRange("Transaction Type", DtldCustLedgEntry."Transaction Type"::"Interest Due");
                        OustInterest := 0;
                        if DtldCustLedgEntry.FindSet() then begin
                            repeat
                                OustInterest += DtldCustLedgEntry.Amount;
                            until DtldCustLedgEntry.Next() = 0;
                        end;
                        CustLedgEntry.DrillDownOnEntries(DtldCustLedgEntry);
                    end;
                }
                field(Penalties; Penalties)
                {
                    ApplicationArea = all;
                    AccessByPermission = TableData Loans = R;
                    trigger OnDrillDown()
                    var
                        DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
                        CustLedgEntry: Record "Cust. Ledger Entry";
                        PenaltySum: Decimal;
                    begin

                        DtldCustLedgEntry.SetRange("Customer No.", Rec."No.");
                        DtldCustLedgEntry.SetRange("Transaction Type", DtldCustLedgEntry."Transaction Type"::Penalty);
                        PenaltySum := 0;
                        if DtldCustLedgEntry.FindSet() then begin
                            repeat
                                PenaltySum += DtldCustLedgEntry.Amount;
                            until DtldCustLedgEntry.Next() = 0;
                        end;
                        CustLedgEntry.DrillDownOnEntries(DtldCustLedgEntry);
                    end;
                }
                field("Total Loan Balance"; "Total Loan Balance")
                {
                    ApplicationArea = all;
                    AccessByPermission = TableData Loans = R;
                }
                field("Net Pay off"; "Net Pay off")
                {
                    ApplicationArea = all;
                    AccessByPermission = TableData Loans = R;
                }
                field("No. of Loans"; "No. of Loans")
                {
                    ApplicationArea = all;
                    AccessByPermission = TableData Loans = R;
                    trigger OnDrillDown()
                    var
                        LoansR: Record Loans;
                        LoansPage: Page "Loan Application";
                    begin
                        LoansR.SetFilter("Customer No", Rec."No.");
                        Page.Run(Page::"Loan Application", LoansR);
                    end;
                }
                field("Suspended Interest"; "Suspended Interest")
                {
                    ApplicationArea = all;
                    AccessByPermission = TableData Loans = R;
                    trigger OnDrillDown()
                    var
                        DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
                        CustLedgEntry: Record "Cust. Ledger Entry";
                        SuspInterest: Decimal;
                    begin

                        DtldCustLedgEntry.SetRange("Customer No.", Rec."No.");
                        DtldCustLedgEntry.SetRange("Transaction Type", DtldCustLedgEntry."Transaction Type"::"Interest Due");
                        SuspInterest := 0;
                        if DtldCustLedgEntry.FindSet() then begin
                            repeat
                                SuspInterest += DtldCustLedgEntry.Amount;
                            until DtldCustLedgEntry.Next() = 0;
                        end;
                        CustLedgEntry.DrillDownOnEntries(DtldCustLedgEntry);
                    end;
                }
                field("Total Arrears"; "Total Arrears")
                {
                    ApplicationArea = all;
                    AccessByPermission = TableData Loans = R;
                }
                field("Days In Arrears"; "Days In Arrears")
                {
                    ApplicationArea = all;
                    AccessByPermission = TableData Loans = R;
                }
                field("Repayment Account Balance"; Rec."Repayment Account Balance")
                {
                    ApplicationArea = all;
                    AccessByPermission = TableData Loans = R;
                    trigger OnDrillDown()
                    var
                        DtldCustLedgEntry: Record "Detailed Cust. Ledg. Entry";
                        CustLedgEntry: Record "Cust. Ledger Entry";
                        RepAccBal: Decimal;
                    begin

                        DtldCustLedgEntry.SetRange("Customer No.", Rec."No.");
                        DtldCustLedgEntry.SetRange("Transaction Type", DtldCustLedgEntry."Transaction Type"::"Repayment Account");
                        RepAccBal := 0;
                        if DtldCustLedgEntry.FindSet() then begin
                            repeat
                                RepAccBal += DtldCustLedgEntry.Amount;
                            until DtldCustLedgEntry.Next() = 0;
                        end;
                        CustLedgEntry.DrillDownOnEntries(DtldCustLedgEntry);
                    end;
                }
                field("Uncleared Cheques"; "Uncleared Cheques")
                {
                    ApplicationArea = all;
                    AccessByPermission = TableData Loans = R;
                }
                field("Unbanked Cheques"; "Unbanked Cheques")
                {
                    ApplicationArea = all;
                    AccessByPermission = TableData Loans = R;
                }

            }

        }
    }
    local procedure ShowDetails()
    var
        Cust: Record Customer;

    begin
        PAGE.Run(PAGE::"Member", Rec);
        Page.Run(Page::"Loan Posted Card", Rec);
    end;

    trigger OnAfterGetRecord()
    var
        LoanCount: Integer;
        LoanR: Record Loans;
    begin
        LoanR.SetRange("Customer No", Rec."No.");
        if LoanR.FindSet() then begin
            repeat
                LoanCount += 1;
                "No. of Loans" := LoanCount;
            until LoanR.next = 0;
        end;
    end;

    var
        "Outstanding Principal Balance": Decimal;
        "Outstanding Interest": Decimal;
        Penalties: Decimal;
        "Total Loan Balance": Decimal;
        "Net Pay off": Decimal;
        "No. of Loans": Integer;
        "Suspended Interest": Decimal;
        "Total Arrears": Decimal;
        "Days In Arrears": Integer;
        "Repayment Account Balance": Decimal;
        "Uncleared Cheques": Decimal;
        "Unbanked Cheques": Decimal;
}
