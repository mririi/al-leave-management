tableextension 50102 Employee extends "Employee"
{
    Caption = 'Extended Employee Table';

    fields
    {
        field(50100; Position; Text[50])
        {
            Caption = 'Position';
            DataClassification = ToBeClassified;
        }
        field(50101; Department; Text[50])
        {
            Caption = 'Department';
            DataClassification = ToBeClassified;
        }
    }
}
