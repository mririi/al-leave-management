table 50110 Manager
{
    Caption = 'Manager';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ManagerID; Code[20])
        {
            Caption = 'Manager ID';
            DataClassification = ToBeClassified;
            NotBlank = true;
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
            DataClassification = ToBeClassified;
        }
        field(3; Email; Text[100])
        {
            Caption = 'Email';
            DataClassification = ToBeClassified;
            ExtendedDatatype = EMail;
        }
        field(4; Department; Text[50])
        {
            Caption = 'Department';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; ManagerID)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        if Name = '' then
            Error('Name must be filled.');
    end;
}
