uses Math;
var
    n, s, i, f, x: int64;
begin
    read(n);
    s := 0;
    i := 1;
    while i < sqrt(n) do begin
        if n mod i = 0 then begin
            f := i; x := n div i;
            if f = x then
                s += f
            else
                s += (f + x);
        end;
        i += 1;
    end;
    if s = (n * 2) then
        writeln('Совершенное число')
    else
        writeln('Несовершенное число')
end.