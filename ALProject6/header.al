table 50110 warranty
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "warranty No:"; Integer)
        {
            AutoIncrement = true;
            DataClassification = ToBeClassified;

        }
        field(2; "Item No:"; Code[40])
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Customer No:"; code[40])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "sales order no:"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "start Date"; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(6; "End Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(7; Status; Enum "Warranty Status")
        {
            DataClassification = ToBeClassified;

        }

    }

    keys
    {
        key(Key1; "warranty No:")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}