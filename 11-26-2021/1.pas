uses Crt, io, Math;
var
    n, i, x, cur : int64;
    ans : boolean;
begin
    ans := true;
    cur := -9223372036854775808;

    print('Length = ');
    read(n);

    for i := 1 to n do begin
        read(x);
        if cur >= x then
            ans := false;
        cur := x;
    end;

    if ans then
        println('Возрастающая', lightGreen)
    else
        println('Не возрастающая', lightRed);
end.