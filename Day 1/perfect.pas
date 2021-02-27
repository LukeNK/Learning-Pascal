program nguyento;

var
    l1, l2 : integer;;
    s : string;
    b : boolean;
    f : text;

begin
    assign(f, 'input.inp'); reset(f);
        readln(f, s);
    close(f);



    assign(f, 'output.out'); rewrite(f);
        for l1 := 1 to n do begin
            for l2 := l1 to n do begin
                if s[l1] = s[l2] then 
                    for l3 := 1 to l2-l1+1 do
                        if s[l1+l3] <> s[l2+l3] then begin
                            b := true;
                            break;
                        end;
                if b then break;
            end;
            if b then break;
        end;
        writeln(f, s[l1..l2-1])
    close(f);
end.
