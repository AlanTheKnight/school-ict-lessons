// Language: Pascal

var
    i, nx: integer;

function isDivisible(n: integer): boolean;
var
    digit: integer;
begin
  isDivisible := true;
  while n > 0 do begin
    digit := n mod 10;
    if n mod 10 = 0 then begin
      isDivisible := false;
      break;
    end;
    n := n div 10;
  end;
end;


begin 
    read(nx);
    for i := 1 to nx do
        if isDivisible(i) then writeln(i);
end.

