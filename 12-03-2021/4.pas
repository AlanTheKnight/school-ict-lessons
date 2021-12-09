var n, i, result, x: int64;
    num, min_diff: double;
begin
    write('n = ');
    readln(n);
    write('x = ');
    readln(x);
    result := -1;
    min_diff := 1e9;
    for i := 1 to n do
    begin
        read(num);
        if abs(num - x) < min_diff then
        begin
            min_diff := abs(num - x);
            result := i;
        end;
    end;
    writeln('Номер числа, которое ближе к ', x, ' числу: ', result);
end.
