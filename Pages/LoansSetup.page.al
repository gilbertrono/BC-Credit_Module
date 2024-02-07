page 71706607 "Credit Setup"
{
    Caption = 'Credit Setup';
    PageType = Card;
    SourceTable = "Loans Setup";
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(PK; Rec.PK)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the PK field.';
                }
            }
        }
    }
    trigger OnOpenPage()
    var
    no:Code[20];
    begin
        if Rec.IsEmpty then
        Rec.Insert();
        No:='AAA123';
        no:=IncStr(No);
    end;
}
