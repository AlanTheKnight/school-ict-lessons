var n, minutes, seconds, hours: int64;
begin
    read(n);
    hours := n div 3600;
    minutes := (n mod 3600) div 60;
    seconds := (n mod 3600) mod 60;
    writeln('Hours: ', hours, ' Minutes: ', minutes, ' Seconds: ', seconds);
end.