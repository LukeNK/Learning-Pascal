program one;

var
    l, n, k, c : cardinal;
    f, fo : text;
    
begin
    assign(f, 'input.inp'); reset(f);
    assign(fo, 'output.out'); rewrite(fo);
        readln(f, n);
        for l := 1 to n do begin
            c := 0;
            readln(f, k);
            while k > 0 do begin
                if k mod 2 = 1 then inc(c);
                k := k div 2;
            end;
            writeln(fo, c);
        end;
    close(fo);
    close(f);
end.
