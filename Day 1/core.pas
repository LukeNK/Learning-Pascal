program core;

var
    l1, l2, l3: integer;
    s, t : string;
    b : boolean;
    f : text;

begin
    assign(f, 'input.inp'); reset(f);
        readln(f, s);
    close(f);

    assign(f, 'output.out'); rewrite(f);
        for l1 := 2 to length(s) do begin
            if s[1] = s[l1] then 
                for l2 := 1 to length(s) div (l1-1) do begin
                    for l3 := 1 to l1-1 do
                        t := t + s[l3];
                    if t = s then begin b := true; break; end;
                end;
            if b then break;
        end;
        writeln(f, s[1..l1-1]);
    close(f);
end.
