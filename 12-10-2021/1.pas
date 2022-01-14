var n : int64;

function get_digits_diff(num: int64) : int64;
var min, max : int64;
begin
    max := -1;
    min := 10;
    while num > 0 do begin
        if (num mod 10) > max then
            max := num mod 10;

        if (num mod 10) < min then
            min := num mod 10;
        
        num := num div 10;
    end;
    get_digits_diff := max - min;
end;

begin
    read(n);
    writeln(get_digits_diff(n));
end.
