pageextension 50101 "Sales Line Ext Page" extends "Sales Order Subform"
{
    layout
    {
        addlast(Content)
        {
            group("Warranty Information")
            {

                field("Warranty Application"; Rec."Warranty Application")
                {
                    ApplicationArea = All;
                }
                field("Warranty Period"; Rec."Warranty Period")
                {
                    ApplicationArea = All;
                }
                field("Warranty Start Date"; Rec."Warranty Start Date")
                {
                    ApplicationArea = All;
                }
                field("Warranty End Date"; Rec."Warranty End Date")
                {
                    ApplicationArea = All;
                }
                field("Warranty Created"; Rec."Warranty Created")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }

        }
    }
}
