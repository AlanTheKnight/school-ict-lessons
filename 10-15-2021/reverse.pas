var n: int64;
begin
    read(n);
    while n > 0 do begin
        write(n mod 10);
        n := (n div 10);
    end;
    writeln();
end.