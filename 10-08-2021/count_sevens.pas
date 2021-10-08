var n, sum: int64;
begin
    read(n);
    sum := 0;
    while n > 0 do begin
        if (n mod 10) = 7 then
            sum := sum + 7;
        n := n div 10;
    end;
    writeln(sum);
end.