report 50100 "Leave Request List"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/LeaveRequestReport.rdl';
    Caption = 'Leave Request List';

    dataset
    {
        dataitem(LeaveRequest; LeaveRequest)
        {
            column(LeaveRequestID; LeaveRequestID) { }
            column(EmployeeNo; EmployeeNo)
            {

            }
            column(LeaveType; LeaveType) { }

            column(StartDate; StartDate) { }

            column(EndDate; EndDate) { }

            column(Status; Status) { }

            column(ManagerID; ManagerID) { }

            trigger OnPreDataItem()

            begin
            end;
        }
    }

    requestpage
    {
        layout
        {
            area(Content)
            {

            }
        }

        actions
        {
            area(processing)
            {
                action(LayoutName)
                {

                }
            }
        }
    }

}