uses Math;
var
    n, k, len: int64;

function pow(a, b: int64) : int64;
var res, i: int64;
begin
    if b = 0 then exit(1);
    res := 1;
    for i := 1 to b do
        res *= a;
    pow := res;
end;

begin
    read(n);
    k := n mod 10;
    len := ceil(log10(n));
    n := (n - k) div 10;
    n += pow(10, len - 1) * k;
    writeln(n);
end.
