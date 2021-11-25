var i, n, x, start: int64; ans: double;

begin
    write('N: ');
    read(n);
    write('X: ');
    read(x);

    start := x;
    
    // Считаем сумму
    ans := 0;
    for i := 1 to n do begin
        ans += i / ((i+1) * start);
        start *= x;
    end;

    writeln(ans:0:3);
end.