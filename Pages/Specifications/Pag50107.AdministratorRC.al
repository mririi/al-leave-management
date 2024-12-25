page 50107 "Administrator RoleCenter"
{
    PageType = RoleCenter;
    Caption = 'Administrator Role Center';

    layout
    {
        area(RoleCenter)
        {
            part(PartName; "Employee Total absence")
            {
                ApplicationArea = All;
            }
        }
    }

    actions
    {
        area(Creation)
        {
            action(LeaveRequest)
            {
                RunObject = page LeaveRequestCard;
                ApplicationArea = All;
                RunPageMode = Create;
            }
            action(Employee)
            {
                RunObject = page "Employee Card";
                ApplicationArea = All;
                RunPageMode = Create;
            }
            action(Manager)
            {
                RunObject = page ManagerCard;
                ApplicationArea = All;
                RunPageMode = Create;
            }
        }
        area(Sections)
        {
            group(HR)
            {
                Caption = 'HR';

                action("Manager List")
                {
                    RunObject = Page ManagerList;
                    ApplicationArea = All;
                }

                action("Employee List")
                {
                    RunObject = Page "Employee List";
                    ApplicationArea = All;
                }
            }
            group("Leave Requests")
            {
                Caption = 'Leave Requests';

                action("Leave Requests List")
                {
                    RunObject = Page LeaveRequestList;
                    ApplicationArea = All;
                }
            }
        }
        area(Embedding)
        {
            action("Managers Report")
            {
                Caption = 'Managers Report';
                RunObject = report ManagerReport;
                ApplicationArea = All;
            }
            action("Leave Requests Report")
            {
                Caption = 'Leave Requests Report';
                RunObject = report "Leave Request List";
                ApplicationArea = All;
            }
        }
    }

}