var a1,b1,c1,a2,b2,c2, d, d1, d2: integer;
begin
    // Решение при помощи метода Крамера
    // (https://reshator.com/sprav/algebra/7-klass/issledovanie-i-reshenie-sistemy-dvuh-linejnyh-uravnenij-metodom-kramera/)
    
    read(a1,b1,c1,a2,b2,c2);
    
    // Определители
    d := a1*b2 - a2*b1;
    d1 := c1*b2 - c2*b1;
    d2 := a1*c2 - a2*c1;

    // Решение
    if d = 0 then begin
        if (d1 = 0) and (d2 = 0) then begin
            writeln('Бесконечное множество решений');
        end else begin
            writeln('Нет решений');
        end;
    end else begin
        writeln('x = ', d1/d:0:2, '; y = ', d2/d:0:2);
    end;
end.