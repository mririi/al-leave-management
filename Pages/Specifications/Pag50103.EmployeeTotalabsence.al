page 50103 "Employee Total absence"
{
    Caption = 'Employee Total absence';
    PageType = CardPart;
    SourceTable = Employee;
    RefreshOnActivate = true;

    layout
    {
        area(Content)
        {
            cuegroup(General)
            {
                Caption = 'General';

                field("Total Absence (Base)"; Rec."Total Absence (Base)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Total Absence (Base) field.', Comment = '%';
                    DrillDownPageId = "Employee List";
                }
            }
        }
    }
}
