// Задание:
// Найти два минимальных элемента в массиве.

program two_min_elements;
var
    min1, min2, i, n: int64;
    a: array[1..100] of int64;

begin
    write('Введите количество элементов массива: ');
    readln(n);
    for i := 1 to n do
    begin
        read(a[i]);
    end;

    if n = 1 then
    begin
        writeln('Массив содержит только один элемент.');
        exit;
    end;

    // Решение:
    // Пройти по массиву один раз. Cравнивая и запоминая значения,
    // найти минимальные элементы.
    // Сложность: O(n)

    min1 := a[1];
    min2 := a[1];

    for i := 2 to n do
    begin
        if a[i] < min1 then
        begin
            min2 := min1;
            min1 := a[i];
        end
        else if a[i] < min2 then
        begin
            min2 := a[i];
        end;
    end;

    writeln('Минимальные элементы: ', min1, ' и ', min2);

end.
