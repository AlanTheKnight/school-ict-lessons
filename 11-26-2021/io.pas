{$mode objfpc}
unit io;

interface

procedure print(text: string=''; color: byte = 0; reset: boolean=true);
procedure println(text: string=''; color: byte = 0; reset: boolean=true);

implementation

uses Crt;

procedure print(text: string=''; color: byte = 0; reset: boolean=true);
begin
    if (color <> 0) then begin
        textColor(color)
    end;
    write(text);
    if (reset) then begin
        normVideo()
    end;
end;

procedure println(text: string=''; color: byte = 0; reset: boolean=true);
begin
    if (color <> 0) then begin
        textColor(color)
    end;
    writeln(text);
    if (reset) then begin
        normVideo()
    end;
end;

end.
