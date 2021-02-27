program chuoi;

var
    n, max, l1, l2, l3 : integer;
    s : string;
    b : boolean;
    f : text;

begin
    assign(f, 'chuoi.inp'); reset(f);
        readln(f, n);
        readln(f, s);
    close(f);

    for l1 := 1 to n do
        for l2 := l1 to n do begin
            b := false;
            for l3 := 0 to ((l2-l1+1) div 2) -1 do
                if s[l1+l3] <> s[l2-l3] then begin
                    b := true;
                    break;
                end;
            if (not(b)) and (l2-l1+1 > max) then
                max := l2-l1+1;
            writeln(s[l1..l2]);
        end;

    assign(f, 'chuoi.out'); rewrite(f);
        writeln(f, max);
    close(f);
end.
