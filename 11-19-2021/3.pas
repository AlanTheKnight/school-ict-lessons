var n, i, prev, next, cur, c, x: int64;
begin
    write('N = ');
    read(n);
    if n < 3 then begin
        writeln(0);
        exit();
    end;

    read(prev);
    read(cur);
    read(next);
    c := 0;

    if (cur > prev) and (cur > next) then
        c += 1;
    if (prev > cur) then
        c += 1;

    for i := 1 to n - 3 do begin
        read(x);
        prev := cur;
        cur := next;
        next := x;
        if ((cur > prev) and (cur > next)) or ((i = n - 3) and (next > cur)) then
            c += 1;
    end;
    writeln(c);
end.