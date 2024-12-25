page 50102 LeaveRequestCard
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;
    SourceTable = LeaveRequest;
    Caption = 'Leave Request Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General Information';
                field(LeaveRequestID; Rec.LeaveRequestID)
                {
                    ApplicationArea = All;
                    Caption = 'Leave Request ID';
                    Editable = false;
                }
                field(EmployeeNo; Rec.EmployeeNo)
                {
                    ApplicationArea = All;
                    Caption = 'Employee No.';
                    TableRelation = "Employee"."No.";
                }
                field(LeaveType; Rec.LeaveType)
                {
                    ApplicationArea = All;
                    Caption = 'Leave Type';
                }
                field(StartDate; Rec.StartDate)
                {
                    ApplicationArea = All;
                    Caption = 'Start Date';
                }
                field(EndDate; Rec.EndDate)
                {
                    ApplicationArea = All;
                    Caption = 'End Date';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    Caption = 'Status';
                    Editable = false; // Leave status should be controlled programmatically
                }
                field(Comments; Rec.Comments)
                {
                    ApplicationArea = All;
                    Caption = 'Comments';
                    MultiLine = true;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ApproveLeave)
            {
                Caption = 'Approve Leave';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    Rec.Status := Rec.Status::Approved;
                    Message('Leave request approved.');
                    Rec.Modify();
                end;
            }

            action(RejectLeave)
            {
                Caption = 'Reject Leave';
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    Rec.Status := Rec.Status::Rejected;
                    Message('Leave request rejected.');
                    Rec.Modify();
                end;
            }
        }
    }
}
