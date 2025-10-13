pageextension 50102 "Sales Order Ext. Warranty" extends "Sales Order"
{
    actions
    {
        addlast(Processing)
        {
            action("Create Warranty")
            {
                ApplicationArea = All;
                Caption = 'Create Warranty';
                Image = CreateDocument;
                ToolTip = 'Create warranty records for applicable sales lines.';
                trigger OnAction()
                var
                    SalesLine: Record "Sales Line";
                    WarrantyMgt: Codeunit "Warranty Management";
                begin
                    SalesLine.SetRange("Document Type", Rec."Document Type");
                    SalesLine.SetRange("Document No.", Rec."No.");

                    if SalesLine.FindSet() then
                        repeat
                            if SalesLine."Warranty Application" and (not SalesLine."Warranty Created") then
                                WarrantyMgt.CreateWarrantyFromSalesLine(SalesLine);
                        until SalesLine.Next() = 0;

                    Message('Warranty creation process completed.');
                end;

            }
        }
    }
}
