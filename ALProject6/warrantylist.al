page 50111 warranty
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = warranty;
    CardPageId = warrantycard;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("warranty No:"; Rec."warranty No:")
                {
                    ApplicationArea = all;
                }
                field("Item No:"; Rec."Item No:") { ApplicationArea = all; }
                field("Customer No:"; Rec."Customer No:") { ApplicationArea = all; }
                field("sales order no:"; Rec."sales order no:") { ApplicationArea = all; }
                field("start Date"; Rec."start Date") { ApplicationArea = all; }
                field("End Date"; Rec."End Date") { ApplicationArea = alll; }
                field(Status; Rec.Status) { ApplicationArea = all; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}