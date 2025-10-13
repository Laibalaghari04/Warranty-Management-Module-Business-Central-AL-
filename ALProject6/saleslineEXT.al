tableextension 50110 "Sales Line Ext. Warranty" extends "Sales Line"
{
    fields
    {
        field(5000; "Warranty Application"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(5001; "Warranty Period"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(5002; "Warranty Start Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5003; "Warranty End Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5004; "Warranty Created"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }
}