program maxseq;

var
    n, p, sum, max, len, l1, l2 : integer;
    arr : array [1..20000] of integer;
    f : text;

begin
    assign(f, 'maxseq.inp'); reset(f);
        readln(f, n, p);
        for l1 := 1 to n do readln(f, arr[l1]);
    close(f);
    
    for l1 := 1 to n do begin
        sum := 0;
        for l2 := l1 to n do begin
            sum := sum + arr[l1];
            if (sum > max) and (sum > p) then begin
                max := sum;
                len := l2-l1 +1;
            end;
        end;
    end;
    
    assign(f, 'maxseq.out'); rewrite(f);
        if len = 0 then len := -1;
        writeln(f, len);
    close(f);
end.
