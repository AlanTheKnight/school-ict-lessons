var count, i, n, a: integer; perfect: boolean;
begin
    read(n);
    count := 0;
    perfect := false;
    for i := 1 to n do begin
        read(a);
        if a >= 5 then
            count := count + 1;
        if a = 10 then perfect := true;
    end;
    writeln(count);
    if perfect then
        writeln('YES')
    else
        writeln('NO');
end.