var a,b,c: integer;
begin
    readln(a,b,c);
    if (a+b>c) and (a+c>b) and (b+c>a) then begin
        writeln('Можно построить');
        if (a=b) and (b=c) then begin
            writeln('Равносторонний');
        end else begin
            writeln('Не равносторонний');
        end;
        if (a=b) or (b=c) or (a=c) then begin
            writeln('Равнобедренный');
        end else begin
            writeln('Не равнобедренный');
        end;
    end
    else
        writeln('Нельзя построить');
end.