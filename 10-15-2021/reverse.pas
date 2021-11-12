uses Math;
var n, i, len, ans: int64;

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
    ans := 0;
    len := ceil(log10(n));
    i := pow(10, len-1);
    while n > 0 do begin
        ans += i * (n mod 10);
        n := (n div 10);
        i := i div 10;
    end;
    writeln(ans);
end.