program sub;

var
    n, s, sum, min, l1, l2: cardinal;
    arr : array [1..100000] of cardinal;
    f, fo : text;
    
begin
    assign(f, 'input.inp'); reset(f);
    assign(fo, 'output.out'); rewrite(fo);
    while not(eof(f)) do begin
        readln(f, n, s);
        for l1 := 1 to n do read(f, arr[l1]);
        readln(f);
        min := n;
        for l1 := 1 to n do begin
            sum := 0;
            for l2 := l1 to n do begin
                sum := sum + arr[l2];
                if (sum >= s) and (l2-l1+1 < min) then begin
                    min := l2-l1+1;
                    break;
                end;
            end;
        end;
        writeln(fo, min);
    end;
    close(fo);
    close(f);
end.
