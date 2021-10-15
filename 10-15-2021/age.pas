var
    n, k: int64; cond: boolean;
begin
    read(n);
    // "год" - любые числа, оканчивающиеся на 1, 2, 3, 4
    // кроме чисел, которые оканчиваются на 11
    // в противных случаях - "лет"
    k := n mod 10;
    cond := (((k = 1) or (k = 2) or (k = 3) or (k = 4)) and ((n < 10) or not (n mod 100 = 11)));
    if (cond) and (k = 1) then writeln('Мне ', n, ' год')
    else begin
        if (cond) then 
            writeln('Мне ', n, ' года')
        else
            writeln('Мне ', n, ' лет')
    end
end.