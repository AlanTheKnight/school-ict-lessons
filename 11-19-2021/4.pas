uses Math;
var i, x: int64; ans: boolean;
begin
    read(x);
    ans := true;
    for i := 2 to ceil(sqrt(x)) do begin
        if x mod i = 0 then begin
            ans := false;
            break;
        end;
    end;
    if ans then
        writeln('Простое число')
    else
        writeln('Не простое число');
end.
