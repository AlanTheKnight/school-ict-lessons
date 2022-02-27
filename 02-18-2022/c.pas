// Задание: найти количество элементов массива,
// у которых первая и предпоследняя цифры одинаковые.

program first_last_digit;
var
    n, i, count, first, second, curr: int64;
    a: array[1..100] of int64;
begin
    count := 0;

    write('Введите количество элементов массива: ');
    readln(n);
    for i := 1 to n do
    begin
        read(a[i]);
    end;

    for i := 1 to n do
    begin
        curr := a[i];

        if (curr < 100) and (curr >= 10) then
        begin
            count += 1;
            continue;
        end;

        // Сразу делим на 10
        curr := curr div 10;

        // Это означает, что это число состоит из одной цифры
        if curr = 0 then
            continue;

        // Сохраняем предпоследнюю цифру
        first := curr mod 10;

        while curr >= 10 do
            curr := curr div 10;

        // Сохраняем первую цифру
        second := curr;

        if first = second then
            count += 1;
    end;

    writeln(count);
end.
