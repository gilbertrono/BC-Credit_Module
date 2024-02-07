table 71706577 "Loans"
{
    DataClassification = TobeClassified;
    LookupPageId = "Loan Application";

    fields
    {

        field(1; "Loan No"; Code[50])
        {
            Caption = 'Loan No';
            DataClassification = TobeClassified;
        }
        field(2; "Application Date"; DateTime)
        {
            Caption = 'Application Date';
            DataClassification = TobeClassified;
        }
        field(3; "Application Time"; DateTime)
        {
            Caption = 'Application Time';
            DataClassification = TobeClassified;
        }
        field(4; "Responsibility Center"; Code[20])
        {
            Caption = 'Responsibility Center';
            DataClassification = TobeClassified;
        }

        field(9; "Source"; Integer)
        {
            Caption = 'Source';
            DataClassification = TobeClassified;
        }
        field(10; "Captured By"; Code[50])
        {
            Caption = 'Captured By';
            Editable = false;
            DataClassification = TobeClassified;
        }
        field(11; "Status"; Option)
        {
            Caption = 'Status';
            OptionMembers = "Application","Pending Approval","Approved";
        }
        field(12; "Transfer Mode"; Integer)
        {
            Caption = 'Transfer Mode';
            DataClassification = TobeClassified;
        }
        field(13; "Posted"; Boolean)
        {
            Caption = 'Posted';
            DataClassification = TobeClassified;
        }
        field(14; "SMS Sent"; Boolean)
        {
            Caption = 'SMS Sent';
            DataClassification = TobeClassified;
        }
        field(15; "Recovered Loan"; Code[20])
        {
            Caption = 'Recovered Loan';
            DataClassification = TobeClassified;
        }
        field(16; "Batch No"; Code[20])
        {
            Caption = 'Batch No';
            DataClassification = TobeClassified;
        }
        field(17; "Recovery Priority"; Integer)
        {
            Caption = 'Recovery Priority';
            DataClassification = TobeClassified;
        }
        field(18; "Sales Agent"; Code[20])
        {
            Caption = 'Sales Agent';
            DataClassification = TobeClassified;
        }
        field(19; "Loan Product Type"; Text[200])
        {
            Caption = 'Loan Product Type';
            DataClassification = TobeClassified;
            TableRelation = "Product Types";
            trigger OnValidate()
            var
                ProdTypes: Record "Product Types";
            begin
                if xRec."Loan Product Type" <> Rec."Loan Product Type" then begin

                    if ProdTypes.Get("Loan Product Type") then begin
                        "Loan Product Type Name" := ProdTypes."Product Description";
                        "Interest Calculation Method" := ProdTypes."Interest Calculation Method";
                        Interest := ProdTypes."Interest Rate";
                        Installments := ProdTypes."Ordinary Default Intallments";
                    end;
                end;
            end;
        }
        field(20; "Loan Product Type Name"; Text[300])
        {
            Caption = 'Loan Product Type Name';
            DataClassification = TobeClassified;
        }
        field(21; "Customer No"; Code[20])
        {
            Caption = 'Customer No';
            TableRelation = Customer;
            trigger OnValidate()
            var
                recCust: Record Customer;
            begin
                if xRec."Customer No" <> Rec."Customer No" then begin

                    if recCust.Get("Customer No") then begin
                        "Customer Name" := recCust.Name;
                        "Station/Department" := recCust.Station_Department;
                        "Mobile Phone No" := recCust."Mobile Phone No.";
                        "E-Mail" := recCust."E-Mail";
                        "Employer Code" := recCust."Employer Code";
                        "Branch Name" := recCust."Branch Name";
                        "Bank Branch Code" := recCust."Bank Branch Code";
                        "Member Name" := recCust.Name;
                    end;
                end;
            end;
        }
        field(22; "Requested Amount"; Decimal)
        {
            Caption = 'Requested Amount';
            DataClassification = TobeClassified;

        }
        field(23; "Approved Amount"; Decimal)
        {
            Caption = 'Approved Amount';
            DataClassification = TobeClassified;
        }
        field(24; "Amount To Disburse"; Decimal)
        {
            Caption = 'Amount To Disburse';
            DataClassification = TobeClassified;
        }
        field(25; "Interest"; Decimal)
        {
            Caption = 'Interest';
            DataClassification = TobeClassified;
        }
        field(26; "Member Name"; Text[100])
        {
            Caption = 'Member Name';
            DataClassification = TobeClassified;
        }
        field(27; "Installments"; Integer)
        {
            Caption = 'Installments';
            DataClassification = TobeClassified;
        }
        field(28; "Disbursement Date"; Date)
        {
            Caption = 'Disbursement Date';
            DataClassification = TobeClassified;
        }
        field(29; "Mode of Disbursement"; Option)
        {
            Caption = 'Mode of Disbursement';
            OptionMembers = "","Mpesa","RTGS";
            DataClassification = TobeClassified;
        }
        field(30; "Grace Period"; Code[32])
        {
            Caption = 'Grace Period';
            DataClassification = TobeClassified;
        }
        field(31; "Installment Period"; Code[32])
        {
            Caption = 'Installment Period';
            DataClassification = TobeClassified;
        }
        field(32; "Repayment"; Decimal)
        {
            Caption = 'Repayment';
            DataClassification = TobeClassified;
        }
        field(33; "New Interest Rate"; Decimal)
        {
            Caption = 'New Interest Rate';
            DataClassification = TobeClassified;
        }
        field(34; "New No of Installment"; Integer)
        {
            Caption = 'New No_ of Installment';
            DataClassification = TobeClassified;
        }
        field(35; "New Grace Period"; Code[32])
        {
            Caption = 'New Grace Period';
            DataClassification = TobeClassified;
        }
        field(36; "New Installment Period"; Code[32])
        {
            Caption = 'New Installment Period';
            DataClassification = TobeClassified;
        }
        field(37; "Loan Balance at Rescheduling"; Decimal)
        {
            Caption = 'Loan Balance at Rescheduling';
            DataClassification = TobeClassified;
        }
        field(38; "Loan Rescheduled"; Boolean)
        {
            Caption = 'Loan Rescheduled';
            DataClassification = TobeClassified;
        }
        field(39; "Date Rescheduled"; DateTime)
        {
            Caption = 'Date Rescheduled';
            DataClassification = TobeClassified;
        }
        field(40; "Reschedule by"; Code[50])
        {
            Caption = 'Reschedule by';
            DataClassification = TobeClassified;
        }
        field(41; "Repayment Frequency"; Option)
        {
            Caption = 'Repayment Frequency';
            OptionMembers = "","Daily","Weekly","Monthly",,"Quarterly","Bi-Annual","Yearly";
            DataClassification = TobeClassified;
        }
        field(42; "Loan Rejection Reason"; Text[50])
        {
            Caption = 'Loan Rejection Reason';
            TableRelation = "Loan Purpose";
            DataClassification = TobeClassified;
        }
        field(43; "Recommended Amount"; Decimal)
        {
            Caption = 'Recommended Amount';
            DataClassification = TobeClassified;
        }
        field(44; "Loan Account"; Decimal)
        {
            Caption = 'Loan Account';
            DataClassification = TobeClassified;
        }
        field(45; "All Posting through Savings Ac"; Boolean)
        {
            Caption = 'All Posting through Savings Ac';
            DataClassification = TobeClassified;
        }
        field(46; "Loan Principle Repayment"; Decimal)
        {
            Caption = 'Loan Principle Repayment';
            DataClassification = TobeClassified;
        }
        field(47; "Loan Interest Repayment"; Decimal)
        {
            Caption = 'Loan Interest Repayment';
            DataClassification = TobeClassified;
        }
        field(48; "Employer Code"; Code[20])
        {
            Caption = 'Employer Code';
            DataClassification = TobeClassified;
        }
        field(49; "Compute Interest Due on Postin"; Integer)
        {
            Caption = 'Compute Interest Due on Postin';
            DataClassification = TobeClassified;
        }
        field(50; "Discounted Loan No"; Code[20])
        {
            Caption = 'Discounted Loan No';
            DataClassification = TobeClassified;
        }
        field(51; "Interest Calculation Method"; Option)
        {
            Caption = 'Interest Calculation Method';
            OptionMembers = "","Amortised","Straight Line","Reducing Balance","Constants";
        }
        field(52; "Max Installments"; Integer)
        {
            Caption = 'Max Installments';
            DataClassification = TobeClassified;
        }
        field(53; "Max Loan Amount"; Decimal)
        {
            Caption = 'Max Loan Amount';
            DataClassification = TobeClassified;
        }
        field(54; "Repayment Start Date"; Date)
        {
            Caption = 'Repayment Start Date';
            DataClassification = TobeClassified;
            trigger OnValidate()
            var
                MaturityDate: Date;
            begin
                if "Repayment Start Date" <> 0D then begin
                    "Next Repayment Date" := "Repayment Start Date";
                    MaturityDate := "Repayment Start Date" + (30 * Installments);
                    "Expected Date of Completion" := MaturityDate;
                    Modify();
                end;

            end;
        }
        field(55; "Disbursement Account No"; Code[20])
        {
            Caption = 'Disbursement Account No';
            DataClassification = TobeClassified;
        }
        field(56; "Staff No"; Code[20])
        {
            Caption = 'Staff No';
            DataClassification = TobeClassified;
        }
        field(57; "Remarks"; Text[100])
        {
            Caption = 'Remarks';
            DataClassification = TobeClassified;
        }
        field(58; "Advice"; Boolean)
        {
            Caption = 'Advice';
            DataClassification = TobeClassified;
        }
        field(59; "Defaulted"; Boolean)
        {
            Caption = 'Defaulted';
            DataClassification = TobeClassified;
        }
        field(60; "Last Advice Date"; DateTime)
        {
            Caption = 'Last Advice Date';
            DataClassification = TobeClassified;
        }
        field(61; "Advice Type"; Integer)
        {
            Caption = 'Advice Type';
            DataClassification = TobeClassified;
        }
        field(62; "Currency Code"; Code[20])
        {
            Caption = 'Currency Code';
            DataClassification = TobeClassified;
        }
        field(63; "Currency Filter"; Code[10])
        {
            Caption = 'Currency Filter';
            DataClassification = TobeClassified;
        }

        field(64; "Appln between Currencies"; Integer)
        {
            Caption = 'Appln between Currencies';
            DataClassification = TobeClassified;
        }
        field(65; "Expected Date of Completion"; Date)
        {
            Caption = 'Expected Date of Completion';
            DataClassification = TobeClassified;
        }
        field(66; "Recovery Mode"; Integer)
        {
            Caption = 'Recovery Mode';
            DataClassification = TobeClassified;
        }
        field(67; "Loans Deposit Purchase"; Decimal)
        {
            Caption = 'Loans Deposit Purchase';
            DataClassification = TobeClassified;
        }
        field(68; "Outstanding Bills"; Decimal)
        {
            Caption = 'Outstanding Bills';
            DataClassification = TobeClassified;
        }
        field(69; "Loan Span"; Integer)
        {
            Caption = 'Loan Span';
            DataClassification = TobeClassified;
        }
        field(70; "Recovered"; Boolean)
        {
            Caption = 'Recovered';
            DataClassification = TobeClassified;
        }
        field(71; "Date of Affidavit"; DateTime)
        {
            Caption = 'Date of Affidavit';
            DataClassification = TobeClassified;
        }
        field(72; "Affidavit Signed"; Boolean)
        {
            Caption = 'Affidavit Signed';
            DataClassification = TobeClassified;
        }
        field(73; "Financier"; Code[20])
        {
            Caption = 'Financier';
            DataClassification = TobeClassified;
        }
        field(74; "Name Magistrate"; Text[50])
        {
            Caption = 'Name Magistrate';
            DataClassification = TobeClassified;
        }
        field(75; "Name of Chief_Assistant"; Text[50])
        {
            Caption = 'Name of Chief Assistant';
            DataClassification = TobeClassified;
        }
        field(76; "Group Code"; Code[20])
        {
            Caption = 'Group Code';
            DataClassification = TobeClassified;
        }
        field(77; "Witness Name"; Text[50])
        {
            Caption = 'Witness Name';
            DataClassification = TobeClassified;
        }
        field(78; "Witness Phone No"; Text[50])
        {
            Caption = 'Witness Phone No';
            DataClassification = TobeClassified;
        }
        field(79; "External Guarantor Name"; Text[50])
        {
            Caption = 'External Guarantor Name';
            DataClassification = TobeClassified;
        }
        field(80; "External Guarantor Phone No"; Text[50])
        {
            Caption = 'External Guarantor Phone No';
            DataClassification = TobeClassified;
        }
        field(81; "Amount Disbursed"; Decimal)
        {
            Caption = 'Amount Disbursed';
            DataClassification = TobeClassified;
        }
        field(82; "Fully Disbursed"; Boolean)
        {
            Caption = 'Fully Disbursed';
            DataClassification = TobeClassified;
        }
        field(83; "Cheque No"; Code[20])
        {
            Caption = 'Cheque No';
            DataClassification = TobeClassified;
        }
        field(84; "Insurance Charged"; Decimal)
        {
            Caption = 'Insurance Charged';
            DataClassification = TobeClassified;
        }
        field(85; "Share Capital"; Decimal)
        {
            Caption = 'Share Capital';
            DataClassification = TobeClassified;
        }
        field(86; "E-Mail"; Text[50])
        {
            Caption = 'E-Mail';
            DataClassification = TobeClassified;
        }
        field(87; "Mobile Phone No"; Code[20])
        {
            Caption = 'Mobile Phone No';
            DataClassification = TobeClassified;
        }
        field(88; "Existing Loan Balance"; Decimal)
        {
            Caption = 'Existing Loan Balance';
            DataClassification = TobeClassified;
        }
        field(89; "Bank Name"; Text[50])
        {
            Caption = 'Bank Name';
            DataClassification = TobeClassified;
        }
        field(90; "Bank Branch Code"; Code[20])
        {
            Caption = 'Bank Branch Code';
            DataClassification = TobeClassified;
        }
        field(91; "Branch Name"; Text[50])
        {
            Caption = 'Branch Name';
            DataClassification = TobeClassified;
        }
        field(92; "Bank Account No"; Code[50])
        {
            Caption = 'Bank Account No';
            DataClassification = TobeClassified;
        }
        field(93; "Reminder1"; DateTime)
        {
            Caption = 'Reminder1';
            DataClassification = TobeClassified;
        }
        field(94; "Reminder2"; DateTime)
        {
            Caption = 'Reminder2';
            DataClassification = TobeClassified;
        }
        field(95; "Reminder1Time"; DateTime)
        {
            Caption = 'Reminder1 Time';
            DataClassification = TobeClassified;
        }
        field(96; "Reminder2Time"; DateTime)
        {
            Caption = 'Reminder2 Time';
            DataClassification = TobeClassified;
        }
        field(97; "Net Loan Disbursed"; Decimal)
        {
            Caption = 'Net Loan Disbursed';
            DataClassification = TobeClassified;
        }
        field(100; "Partial Disbursement"; Decimal)
        {
            Caption = 'Partial Disbursement';
            DataClassification = TobeClassified;
        }
        field(98; "PenaltyAttached"; Decimal)
        {
            Caption = 'Penalty Attached';
            DataClassification = TobeClassified;
        }
        field(99; "Project Code"; Code[20])
        {
            Caption = 'Project Code';
            DataClassification = TobeClassified;
        }
        field(101; "Department Code"; Code[20])
        {
            Caption = 'Department Code';
            DataClassification = TobeClassified;
        }
        field(102; "Outstanding Balance"; Decimal)
        {
            Caption = 'Outstanding Balance';
            DataClassification = TobeClassified;
        }
        field(103; "Outstanding Interest"; Decimal)
        {
            Caption = 'Outstanding Interest';
            DataClassification = TobeClassified;
        }
        field(104; "Multiplier"; Decimal)
        {
            Caption = 'Multiplier';
            DataClassification = TobeClassified;
        }
        field(105; "Witness Member No"; Code[50])
        {
            Caption = 'Witness Member No';
            DataClassification = TobeClassified;
        }
        field(106; "Deposit Boosting?"; Boolean)
        {
            Caption = 'Deposit Boosting?';
            DataClassification = TobeClassified;
        }
        field(107; "Old Last Pay Date"; DateTime)
        {
            Caption = 'Old Last Pay Date';
            DataClassification = TobeClassified;
        }
        field(108; "Bank Branch"; Code[20])
        {
            Caption = 'Bank Branch';
            DataClassification = TobeClassified;
        }
        field(109; "Anniversary Day"; Integer)
        {
            Caption = 'Anniversary Day';
            DataClassification = TobeClassified;
        }
        field(110; "Cost of Project"; Decimal)
        {
            Caption = 'Cost of Project';
            DataClassification = TobeClassified;
        }
        field(111; "Own Contribution"; Decimal)
        {
            Caption = 'Own Contribution';
            DataClassification = TobeClassified;
        }
        field(112; "Net Surplus_Deficit"; Decimal)
        {
            Caption = 'Net Surplus Deficit';
            DataClassification = TobeClassified;
        }
        field(113; "Next Repayment Date"; Date)
        {
            Caption = 'Next Repayment Date';
            DataClassification = TobeClassified;
        }
        field(114; "Principle In Arrears"; Decimal)
        {
            Caption = 'Principle In Arrears';
            DataClassification = TobeClassified;
        }
        field(115; "Days in Arrears"; Decimal)
        {
            Caption = 'Days in Arrears';
            DataClassification = TobeClassified;
        }
        field(116; "Interest In Arrears"; Decimal)
        {
            Caption = 'Interest In Arrears';
            DataClassification = TobeClassified;
        }
        field(117; "Total In Arrears"; Decimal)
        {
            Caption = 'Total In Arrears';
            DataClassification = TobeClassified;
        }
        field(118; "Station/Department"; Text[50])
        {
            Caption = 'Station/Department';
            DataClassification = TobeClassified;
        }
        field(119; "Acceptance Letter Received"; Boolean)
        {
            Caption = 'Acceptance Letter Received';
            DataClassification = TobeClassified;
        }
        field(120; "Loan Application Code"; Code[50])
        {
            Caption = 'Loan Application Code';
            DataClassification = TobeClassified;
        }
        field(121; "No of Loans"; Integer)
        {
            Caption = 'No of Loans';
            DataClassification = TobeClassified;
        }
        field(122; "Relationship Officer"; Code[20])
        {
            Caption = 'Relationship Officer';
            TableRelation = "Dimension Value".Code;
            DataClassification = TobeClassified;
        }
        field(123; "Total Arrears BF"; Decimal)
        {
            Caption = 'Total Arrears BF';
            DataClassification = TobeClassified;
        }
        field(124; "Arrears in Days BF"; Integer)
        {
            Caption = 'Arrears in Days BF';
            DataClassification = TobeClassified;
        }
        field(125; "Loan Appealed"; Boolean)
        {
            Caption = 'Loan Appealed';
            DataClassification = TobeClassified;
        }
        field(126; "Reason for Appeal"; Text[500])
        {
            Caption = 'Reason for Appeal';
            DataClassification = TobeClassified;
        }
        field(127; "Amount Approved before Appeal"; Decimal)
        {
            Caption = 'Amount Approved before Appeal';
            DataClassification = TobeClassified;
        }
        field(128; "Source Of Business"; Option)
        {
            Caption = 'Source Of Business';
            OptionMembers = "",Agent,"Social Media","Website","Call Center","Customer referral",Shareholder,"Own Initiative","Staff Referral","Existing Top-up","Existing Revived","Outdoor Activities";
            DataClassification = TobeClassified;
        }
        field(129; "Recruited By"; Code[10])
        {
            Caption = 'Recruited By';
            DataClassification = TobeClassified;
        }
        field(130; "Recruiter Name"; Text[100])
        {
            Caption = 'Recruiter Name';
            DataClassification = TobeClassified;
        }
        field(131; "Application Fee Paid"; Boolean)
        {
            Caption = 'Application Fee Paid';
            DataClassification = TobeClassified;
        }
        field(132; "Tracking Fees"; Decimal)
        {
            Caption = 'Tracking Fees';
            DataClassification = TobeClassified;
        }
        field(134; "MPESA Mobile No"; Code[20])
        {
            Caption = 'MPESA Mobile No';
            DataClassification = TobeClassified;
        }
        field(135; "Purpose of Loan"; Text[500])
        {
            Caption = 'Purpose of Loan';
            DataClassification = TobeClassified;
        }
        field(136; "Incharge"; Decimal)
        {
            Caption = 'Incharge';
            DataClassification = TobeClassified;
        }
        field(137; "Additional Fees"; Decimal)
        {
            Caption = 'Additional Fees';
            DataClassification = TobeClassified;
        }
        field(139; "Customer Name"; Text[50])
        {
            Caption = 'Customer Name';
            DataClassification = TobeClassified;
        }
        field(138; "Paid Off Loan"; Boolean)
        {
            Caption = 'Paid Off Loan';
            DataClassification = TobeClassified;
        }
        field(140; "Applied Amount"; Decimal)
        {
            Caption = 'Applied Amount';
            DataClassification = TobeClassified;
            trigger OnValidate()
            var
                post: Codeunit "Credit Management";
            begin
                if Rec."Applied Amount" <> 0 then begin
                    post.ManageLoanApplication(Rec);
                    post.UpdateRepayment(Rec);
                end;
                "Approved Amount" := "Applied Amount";

            end;
        }
        field(170; "Branch Code"; Code[20])
        {
            Caption = 'Branch Code';
            TableRelation = "Dimension Value".Code;
            DataClassification = TobeClassified;
        }
        field(141; "System Recommended Amount"; Decimal)
        {
            Caption = 'System Recommended Amount';
            DataClassification = TobeClassified;
        }
        field(142; "Installment Amount"; Decimal)
        {
            Caption = 'Installment Amount';
            DataClassification = TobeClassified;
        }
        field(143; "Oustanding Penalty"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(144; "Oustanding Interest"; Decimal)
        {
            DataClassification = ToBeClassified;
            /* FieldClass = FlowField;
             CalcFormula = sum("Cust. Ledger Entry".Amount where("Loan  No" = field("Loan No")));*/
        }
        field(145; "Suspended Interest"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(146; "Principal in arrears"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(147; "Global Dimension 1 Code"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(148; "Global Dimension 2 Code"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Loan No", "Batch No")
        {
            Clustered = true;
        }
        key(key1; "Customer No")
        {

        }
        key(key2; "Loan Product Type")
        {

        }

    }

    var
        myInt: Integer;

    trigger OnInsert()
    var
        Setup: Record "Credit No.Series";
        NoMgt: Codeunit NoSeriesManagement;
        LoansR: record Loans;
        creditmanagement: Codeunit "Credit Management";

    begin
        if "Loan No" = '' then begin
            Setup.Get();
            "Loan No" := NoMgt.GetNextNo(Setup."Loan Nos", WorkDate, true);
        end;
    end;
}

