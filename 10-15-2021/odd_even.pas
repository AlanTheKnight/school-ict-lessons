var
    n, eSize, oSize, k, i, j, ans: int64; even, odd: array [0..19] of integer;
begin
    read(n);
    eSize := 0; oSize := 0;
    while n > 0 do begin
        k := n mod 10;
        if k mod 2 = 0 then begin
            even[eSize] := k;
            eSize += 1;
        end
        else begin
            odd[oSize] := k;
            oSize += 1;
        end;
        n := (n div 10);
    end;

    ans := 0;
    j := 1;
    for i := 0 to (oSize - 1) do begin
        ans += odd[i] * j;
        j *= 10;
    end;
    for i := 0 to (eSize - 1) do begin
        ans += even[i] * j;
        j *= 10;
    end;
    writeln(ans);

end.