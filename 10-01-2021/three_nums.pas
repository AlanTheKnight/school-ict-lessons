var even_count, odd_count, even_mul, odd_sum, i: integer; nums: array [0..2] of integer;
begin
    even_count := 0;
    odd_count := 0;
    even_mul := 1;
    odd_sum := 0;
    for i := 0 to 2 do begin
        read(nums[i]);
        if nums[i] mod 2 = 0 then begin
            even_count := even_count + 1;
            even_mul := even_mul * nums[i];
        end else begin
            odd_count := odd_count + 1;
            odd_sum := odd_sum + nums[i];
        end;
    end;

    if even_count = 0 then begin
        writeln('Нет четных чисел.');
    end else
        writeln('Произведение четных чисел: ', even_mul);
    
    if odd_count = 0 then begin
        writeln('Нет нечетных чисел.');
    end else
        writeln('Сумма нечетных чисел: ', odd_sum);
end.