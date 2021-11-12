var factorials: array[1..14] of int64; i, n, x: int64; ans: double;

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
    // Заполняем массив факториалов
    factorials[1] := 1;
    for i := 2 to 14 do begin
        factorials[i] := factorials[i - 1] * i;
    end;

    read(n, x);
    
    // Считаем сумму
    ans := 0;
    for i := 1 to n do begin
        if i mod 2 = 0 then
            ans -= x / factorials[i]
        else
            ans += x / factorials[i];
        x *= x;
    end;

    writeln(ans:0:3);
end.