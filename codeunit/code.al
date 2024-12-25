codeunit 50100 ChangeColor
{
    procedure ChangeCustomerRankColor(Leave: Record LeaveRequest): Text[50]
    begin
        with Leave do
            case Status of
                Status::Approved:
                    exit('Favorable');
                Status::Rejected:
                    exit('Unfavorable');
                Status::Pending:
                    exit('');
            end;
    end;
}