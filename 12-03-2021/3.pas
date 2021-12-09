var n, i, index, maximal, x: int64;

function max(a, b: int64): int64;
begin
    if a > b then
        exit(a);
    exit(b);
end;

begin
    write('N: ');
    read(n);
    maximal := -9223372036854775808;
    index := -1;
    for i := 1 to n do
    begin
        read(x);
        if x < 0 then
        begin
            maximal := max(maximal, x);
            index := i;
        end;
    end;

    if index = -1 then
        writeln('None')
    else
        writeln('N', index, ' ', maximal);
end.