var i, n: int64; ans, x: double;
begin
    ans := 0;
    read(n);
    for i := 1 to n do begin
        ans += (1 / i);
    end;
    writeln(ans:0:5);
end.
