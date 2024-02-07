page 71706613 "Paybill Buffer"
{
    ApplicationArea = All;
    Caption = 'Paybill Buffer';
    PageType = List;
    SourceTable = "PayBill Buffer";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(RecId; Rec.RecId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RecId field.';
                }
                field(TransID; Rec.TransID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TransID field.';
                }
                field(TransType; Rec.TransType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the TransType field.';
                }
                field(BillRefNumber; Rec.BillRefNumber)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Bill Ref Number field.';
                }
                field(BusinessShortCode; Rec.BusinessShortCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Business Short Code field.';
                }
                field(MSISDN; Rec.MSISDN)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the MSISDN field.';
                }
                field(FirstName; Rec.FirstName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the FirstName field.';
                }
                field(ThirdPartyTransID; Rec.ThirdPartyTransID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ThirdPartyTransID field.';
                }
                field(TransTime; Rec.TransTime)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Trans Time field.';
                }
                field(TransAmount; Rec.TransAmount)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Trans Amount field.';
                }
                field(Posted; Rec.Posted)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Posted field.';
                }
                field(Failed; Rec.Failed)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Failed field.';
                }
                field("Modified By"; Rec."Modified By")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Modified By field.';
                }
                field("Old ID No"; Rec."Old ID No")
                {
                    ApplicationArea = All;
                    Visible=false;
                    ToolTip = 'Specifies the value of the Old ID No field.';
                }
            }
        }
    }
}
