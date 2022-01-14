var x, b, m1, m2: int64;
begin
    readln(m1);
    readln(x);

    if x > m1 then begin
        m2 := m1;
        m1 := x;
    end
    else
        m2:=x;

    repeat
        readln(x);
            if x > m1 then begin
                m2 := m1;
                m1 := x;
            end
        else if x > m2 then
            m2 := x;
    until x = 0;
    writeln(m1, ' ', m2);
end.