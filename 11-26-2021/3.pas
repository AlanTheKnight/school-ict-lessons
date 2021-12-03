uses Crt, io;
var
    r, s, x, y: double;
    i, z, z_ans, s_ans: int64;
begin
    print('X = ', blue);
    read(x);
    print('[0..100] ', yellow);
    print('Y = ', blue);
    read(y);
    print('R = ', lightBlue);
    read(r);
    print('Z = ', lightBlue);
    read(z);

    s := x;
    z_ans := -1;
    s_ans := -1;
    i := 1;
    while ((s_ans = -1) and (z_ans = -1)) and (i < 10000) do begin
        x *= 1.0 + (y / 100);
        s += x;
        i += 1;
        if x = z then
            z_ans := i;
        if s = r then
            s_ans := i;
    end;

    if s_ans <> -1 then begin
        write('Суммарно он пробежит ', s, 'км за ', s_ans);
        writeln(' дней')
    end
    else
        println('Ни за сколько дней столько не пробежит', red);

    if z_ans <> -1 then begin
        write(z, 'км смортсмен пробежит в ', z_ans);
        writeln(' день.')
    end
    else
        println('Ни в один день столько не пробежит', red);
end.
