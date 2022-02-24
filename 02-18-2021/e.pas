// Задание: какие-то горки

program gora;
var
    i, n, x, count: int64;
    a: array[1..100] of int64;

begin
    write('Введите количество элементов массива: ');
    readln(n);
    for i := 1 to n do
    begin
        read(a[i]);
    end;

    write('X: ');
    readln(x);

    count := 0;

    for i := 2 to n - 1 do
    begin
        if (a[i] = x) and (a[i - 1] < a[i]) and (a[i + 1] < a[i]) then
            count += 1;
    end;

    writeln(count);

end.