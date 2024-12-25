pageextension 50104 "Employee List Ext" extends "Employee List"
{
    Caption = 'Employee List';

    layout
    {
        addlast(Control1)
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
