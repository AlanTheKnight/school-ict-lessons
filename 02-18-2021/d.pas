// Задание: найти длину самой длинной последовательности из
// одинаковых чисел в массиве.

program same_nums;
var
    a: array[1..100] of int64;
    i, j, cur, n, max: int64;

begin
    write('Введите количество элементов массива: ');
    readln(n);
    for i := 1 to n do
    begin
        read(a[i]);
    end;

    max := 0;
    i := 1;
    while i <= n do
    begin
        cur := a[i];
        j := i;
        while (i <= n) and (a[i] = cur) do
            i += 1;
        if i - j > max then
            max := i - j;
    end;

    writeln(max);
        
end.