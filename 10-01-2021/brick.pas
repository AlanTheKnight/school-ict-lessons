var a, b, x, y, z, temp: integer;

function max(a, b: integer): integer;
begin 
    if a > b then max := a
    else max := b;
end;

function min(a, b: integer) : integer;
begin 
    if a > b then min := b
    else min := a;
end;

procedure sort(a, b, c: integer);
var temp1, temp2: integer;
begin
    temp1 := max(a, max(b, c));
    temp2 := min(a, min(b, c));
    y := a + b + c - temp1 - temp2;
    x := temp2;
    z := temp1;
end;

begin
    write('a, b: ');
    readLn(a, b);
    write('x, y, z: ');
    readLn(x, y, z);

    temp := min(a, b);
    b := max(a, b);
    a := temp;
    sort(x, y, z);

    if (x <= a) and (y <= b) then begin
        writeln('Проходит');
    end else begin
        writeln('Не проходит');
    end;
end.