program timsgt;

var
    n, m, t, c, sum, l1, l2 : integer;
    s, o : string;
    b : boolean;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n, m);
    close(f);

    assign(f, 'output.out'); rewrite(f);
        for l1 := 1 to n do begin
            sum := 0; b := false;
            for l2 := 3 to l1 div 2 do
                if l1 mod l2 = 0 then begin
                    b := true;
                    break;
                end;
            if b then continue;
            str(l1, s);
            for l2 := 1 to length(s) do begin
                val(s[l2], t);
                sum := sum + t;
            end;
            if sum = m then begin
                inc(c);
                o := o + s + ' ';
            end;
        end;
        writeln(f, c);
        writeln(f, o);
    close(f);
end.
