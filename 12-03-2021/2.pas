var n, i, a, b, m, j: int64;

function min(a, b: int64): int64;
begin
  if a < b then exit(a);
  exit(b);
end;

begin
    m := 1000000000007;
    write('N = ');
    read(n);

    read(a);
    for i := 1 to n - 1 do begin
        read(b);
        m := min(m, abs(a - b));
        a := b;
    end;

    if m = 1000000000007 then begin
        writeln('None');
    end else begin
        writeln(m);
    end;
    
end.