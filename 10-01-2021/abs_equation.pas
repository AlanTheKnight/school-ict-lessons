var
    a, b: integer; x: double;
begin
    // a * |x| = b
    // |x| = b / a
    // если a = 0 и b = 0 -> бесконечное множество
    // если а = 0 и b != 0 -> нет решений
    // если b / a < 0 -> нет решений
    // если b / a = 0 -> одно решение
    // если b / a > 0 -> два решения
    read(a, b);
    if a <> 0 then begin
        x := b / a;
        if x < 0 then
            writeln('Нет решений')
        else begin
            if x = 0 then
                writeln('Одно решение: ', x:0:2)
            else
                writeln('Два решения: ', x:0:2, '; ', -x:0:2);
        end;
    end else begin
        if b = 0 then 
            writeln('Бесконечное множество решений')
        else
            writeln('Нет решений');
    end;
end.