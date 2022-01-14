uses Crt, io;
var
    n, i: int64;
    a, b, d, x: real;
begin
    print('A, B = ', blue);
    read(a, b);
    print('N = ', blue);
    read(n);

    d := (b - a) / n;

    x := a;
    while x < b do begin
        write(x:0:3, ' ');
        x += d;
    end;
    writeln(x:0:3);
end.