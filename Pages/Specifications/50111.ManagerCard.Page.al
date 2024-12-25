page 50111 ManagerCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;
    SourceTable = Manager;
    Caption = 'Manager Card';

    layout
    {
        area(Content)
        {
            group("Manager Details")
            {
                field(ManagerID; Rec.ManagerID)
                {
                    ApplicationArea = All;
                    Caption = 'Manager ID';
                    Editable = false;
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
            action(SendEmail)
            {
                Caption = 'Send Email';
                ApplicationArea = All;
                trigger OnAction()
                begin
                    Message('Email to %1 sent successfully!', Rec.Email);
                end;
            }
        }
    }
}
