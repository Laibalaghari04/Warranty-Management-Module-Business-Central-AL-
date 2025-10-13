codeunit 50103 "Warranty Management"
{
    Subtype = Normal;


    procedure CreateWarrantyFromSalesLine(SalesLine: Record "Sales Line")
    var
        WarrantyRec: Record Warranty;
        WarrantyPeriodInMonths: Integer;
    begin
        if not SalesLine."Warranty Application" then
            exit;

        if SalesLine."Warranty Created" then
            exit;
        WarrantyPeriodInMonths := SalesLine."Warranty Period";
        if WarrantyPeriodInMonths = 0 then
            WarrantyPeriodInMonths := 12;

        WarrantyRec.Init();
        WarrantyRec."Item No:" := SalesLine."No.";
        WarrantyRec."Customer No:" := SalesLine."Sell-to Customer No.";
        WarrantyRec."start Date" := WorkDate();
        WarrantyRec."End Date" := CalcDate(StrSubstNo('%1M', WarrantyPeriodInMonths), WarrantyRec."start Date");
        WarrantyRec.Insert();


        SalesLine."Warranty Created" := true;
        SalesLine."Warranty Start Date" := WarrantyRec."start Date";
        SalesLine."Warranty End Date" := WarrantyRec."End Date";
        SalesLine.Modify();

        Message('Warranty created for Item %1, valid until %2', SalesLine."No.", WarrantyRec."End Date");
    end;
}
