pageextension 50101 "Employee Card Ext" extends "Employee Card"
{
    Caption = 'Employee Card';

    layout
    {
        addlast(General)
        {
            field(Position; Rec.Position)
            {
                ApplicationArea = All;
                Caption = 'Position';
            }
            field(Department; Rec.Department)
            {
                ApplicationArea = All;
                Caption = 'Department';
            }
        }
    }

    actions
    {
        // Optional: Add custom actions if needed
    }
}
