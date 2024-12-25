page 50101 LeaveRequestList
{
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = LeaveRequest;
    Caption = 'Leave Requests';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(LeaveRequestID; Rec.LeaveRequestID) { ApplicationArea = All; }
                field(EmployeeNo; Rec.EmployeeNo) { ApplicationArea = All; }
                field(LeaveType; Rec.LeaveType) { ApplicationArea = All; }
                field(StartDate; Rec.StartDate) { ApplicationArea = All; }
                field(EndDate; Rec.EndDate) { ApplicationArea = All; }
                field(Status; Rec.Status) { 
                    ApplicationArea = All;
                    StyleExpr = StyleExprTxt;

                    trigger OnValidate()
                    var
                    begin
                        StyleExprTxt := ChangeColor.ChangeCustomerRankColor(Rec);
                    end;
                     }
                field(ManagerID; Rec.ManagerID) { ApplicationArea = All; }
            }
        }
    }
    trigger OnAfterGetRecord()
    var
    begin
        StyleExprTxt := ChangeColor.ChangeCustomerRankColor(Rec);
    end;


    var
        StyleExprTxt: Text[50];
        ChangeColor: Codeunit ChangeColor;
}
