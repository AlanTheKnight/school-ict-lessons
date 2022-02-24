// Задание:
// Найти два максимальных элемента в массиве.

program two_max_elements;
var
    max1, max2, i, n: int64;
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
    // найти максимальные элементы.
    // Сложность: O(n)

    max1 := a[1];
    max2 := a[1];

    for i := 2 to n do
    begin
        if a[i] > max1 then
        begin
            max2 := max1;
            max1 := a[i];
        end
        else if a[i] > max2 then
        begin
            max2 := a[i];
        end;
    end;

    writeln('Максимальные элементы: ', max1, ' и ', max2);

end.
