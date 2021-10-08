var n, x, y: integer;
begin
    read(n);
    x := (n div 100) mod 10;
    y := (n div 10) mod 10;
    n := n - x*100 + y*100 - y*10 + x*10;
    writeln(n);
end.