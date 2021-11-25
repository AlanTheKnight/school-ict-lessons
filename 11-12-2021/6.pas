var i, n, x, t, f: int64; ans: double;

begin
    write('N: ');
    read(n);
    write('X: ');
    read(x);

    t := x;
    f := 1;
    
    // Считаем сумму
    ans := 0;
    for i := 1 to n do begin
        if i mod 2 = 0 then
            ans -= x / f
        else
            ans += x / f;
        x *= t;
        f *= (i + 1);
    end;

    writeln(ans:0:3);
end.
