var i, n, x, count: int64; is_plus: boolean;
begin
    write('N: ');
    read(n);
    read(x);
    is_plus := x >= 0;
    count := 0;
    for i := 1 to n - 1 do begin
        read(x);
        if (x >= 0) <> is_plus then
            count += 1;
        is_plus := x >= 0;
    end;
    writeln(count);
end.