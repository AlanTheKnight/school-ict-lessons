var n, even, odd: integer;

function is_even(a: integer): boolean;
begin 
    is_even := (a mod 2 = 0);
end;

begin
    read(n);
    even := 0;
    odd := 0;
    while n > 0 do begin
        if is_even((n mod 10)) then
            even += 1
        else 
            odd += 1;
        n := n div 10;
    end;
    writeln('Четные: ', even, ' Нечетные: ', odd);
end.