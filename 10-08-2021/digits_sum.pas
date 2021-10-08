var n, sum: int64;
begin
    read(n);
    sum := 0;
    while n > 0 do begin
        sum += (n mod 10);
        n := (n div 10);
    end;
    writeln(sum);
end.