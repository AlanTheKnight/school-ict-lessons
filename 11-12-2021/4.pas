var a, b, c, n, i: int64; cur: double;
begin
    a := 1;
    b := 2;
    c := 1;
    read(n);
    for i := 1 to n do begin
        cur := a / (b * c);
        writeln('N', i, ': ', cur:0:3);
        a += 5;
        b += 3;
        c *= 2;
    end;
end.
