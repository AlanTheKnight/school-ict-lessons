uses Math;

var i: integer;
    res, m1, m2, n: int64;

function count_divisors(ln: int64): int64;
var 
    li, // Делитель, который мы сейчас перебираем
    lf, // Первый делитель
    lx, // Второй делитель
    ls: int64; // Сумма делителей
begin
    ls := 0;
    for li := 1 to floor(sqrt(ln)) do begin
        if ln mod li = 0 then begin
            lf := li;
            lx := ln div li;
            if lf = lx then
                ls += lf
            else
                ls += lf + lx;
        end;
    end;
    exit(ls);
end;

begin
    m1 := 0;
    read(n);
    for i := 1 to n do begin
        res := count_divisors(i);
        if res > m1 then begin
            m1 := res;
            m2 := i;
        end;
    end;
    writeln(m2, ', сумма делителей: ', m1);
end.