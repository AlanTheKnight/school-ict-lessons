var
    n, eSize, oSize, k, i: int64; even, odd: array [0..19] of integer;
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

    for i := (eSize - 1) downto 0 do write(even[i]);
    for i := (oSize - 1) downto 0 do write(odd[i]);
    writeln();

end.