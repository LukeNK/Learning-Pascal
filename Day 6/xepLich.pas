program xepLich;

var
    n, l, sum, cur, t, l1 : integer;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n);
        readln(f, l);
        read(f, sum);
        for l1 := 2 to n do begin
            read(f, cur);
            if sum + cur > l then begin
                inc(t);
                sum := cur;
            end else if sum + cur = l then begin
                inc(t);
                sum := 0;
            end else sum := sum + cur;
        end;
        if sum > 0 then inc(t);
    close(f);

    assign(f, 'output.out'); rewrite(f);
        writeln(f, t);
    close(f);
end.
