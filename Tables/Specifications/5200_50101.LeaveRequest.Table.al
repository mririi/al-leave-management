table 50101 LeaveRequest
{
    Caption = 'Leave Request';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; LeaveRequestID; Code[10])
        {
            Caption = 'Leave Request ID';
        }
        field(2; EmployeeNo; Code[10])
        {
            Caption = 'Employee No';
            TableRelation = "Employee"."No.";
        }
        field(3; LeaveType; Enum LeaveType)
        {
            Caption = 'Leave Type';
        }
        field(4; StartDate; Date)
        {
            Caption = 'Start Date';
        }
        field(5; EndDate; Date)
        {
            Caption = 'End Date';
        }
        field(6; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Pending,Approved,Rejected;
            OptionCaption = 'Pending,Approved,Rejected';
        }
        field(7; Comments; Text[250])
        {
            Caption = 'Comments';
        }
        field(8; ManagerID; Code[20])
        {
            Caption = 'Manager ID';
            TableRelation = Manager."ManagerID";
        }
    }

    keys
    {
        key(PK; LeaveRequestID)
        {
            Clustered = true;
        }
    }
}
