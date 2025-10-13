codeunit 50104 "Warranty Event Subscriber"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnAfterPostSalesLine', '', false, false)]
    local procedure OnAfterPostSalesLine(
    SalesHeader: Record "Sales Header";
    var SalesLine: Record "Sales Line";
    CommitIsSuppressed: Boolean)
    var
        WarrantyMgt: Codeunit "Warranty Management";
    begin
        if SalesLine."Warranty Application" and (not SalesLine."Warranty Created") then
            WarrantyMgt.CreateWarrantyFromSalesLine(SalesLine);
    end;

}
