var a, b, i, j: int64;
begin
    read(a, b);
    for i := a to b do
    begin
        for j := 1 to i do
            write(i, ' ');
    end;
    writeln();
end.