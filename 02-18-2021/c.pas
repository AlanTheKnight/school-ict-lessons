// Задание: найти количество элементов массива,
// у которых первая и предпоследняя цифры одинаковые.

program first_last_digit;
var
    n, i, count, first, second, curr: integer;
    a: array[1..100] of integer;
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
        first := -1;
        curr := a[i];

        // Сразу делим на 10
        curr := curr div 10;

        // Это означает, что это число состоит из одной цифры
        if curr = 0 then
            continue;

        while curr >= 10 do
        begin
            // Сохраняем предпоследнюю цифру
            if first = -1 then first := curr mod 10;
            curr := curr div 10;
        end;
        // Сохраняем первую цифру
        second := curr mod 10;

        if first = second then
            count := count + 1;
    end;

    writeln(count);
end.
