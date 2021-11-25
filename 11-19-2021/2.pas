var n, neg_count, s, i, x: int64; should_count: boolean; avg: real;
begin
    write('N = ');
    read(n);
    neg_count := 0;
    s := 0;
    should_count := true;
    for i := 1 to n do begin
        read(x);
        if should_count then begin
            if x < 0 then
                neg_count += 1
            else
                should_count := false;
        end;
        s += x;
    end;
    writeln('Negative count: ', neg_count);
    avg := s / n;
    writeln('AVG: ', avg:0:3);
end.