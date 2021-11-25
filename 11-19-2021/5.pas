uses Math;
var
    n, s, i, x: int64;

function count_divisors(ln: int64): int64;
var 
    li, // Делитель, который мы сейчас перебираем
    lf, // Первый делитель
    lx, // Второй делитель
    ls: int64; // Количество делителей
begin
    ls := 0;
    for li := 1 to floor(sqrt(ln)) do begin
        if ln mod li = 0 then begin
            lf := li;
            lx := ln div li;
            if lf = lx then
                ls += 1
            else
                ls += 2;
        end;
    end;
    exit(ls);
end;

begin
    read(n);
    s := 0;
    for i := 1 to n do begin
        read(x);
        if count_divisors(x) = 4 then
            s += 1;
    end;
    writeln(s);
end.