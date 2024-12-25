page 50112 ManagerList
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Manager;
    Caption = 'Manager List';

    layout
    {
        area(Content)
        {
            repeater(ManagerList)
            {
                field(ManagerID; Rec.ManagerID)
                {
                    ApplicationArea = All;
                    Caption = 'Manager ID';
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    Caption = 'Name';
                }
                field(Email; Rec.Email)
                {
                    ApplicationArea = All;
                    Caption = 'Email';
                }
                field(Department; Rec.Department)
                {
                    ApplicationArea = All;
                    Caption = 'Department';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(OpenManagerCard)
            {
                Caption = 'Open Manager Card';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::ManagerCard, Rec);
                end;
            }
        }
    }
}
