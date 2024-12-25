report 50113 ManagerReport
{
    Caption = 'Manager Report';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/ManagerReport.rdl';

    dataset
    {
        dataitem(Manager; Manager)
        {
            column(ManagerID; Manager.ManagerID) { }
            column(Name; Manager.Name) { }
            column(Email; Manager.Email) { }
            column(Department; Manager.Department) { }
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
    }
}
