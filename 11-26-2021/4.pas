var i, s, amount: int64;
begin
    amount := 0;
    s := 0;
    for i := 3672 to 9117 do begin
        if (i mod 3 = 2) and (i mod 5 = 4) then begin
            amount += 1;
            s += i;
        end;
    end;
    writeln('Количество: ', amount);
    writeln('Сумма: ', s);
end.