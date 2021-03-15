program sub; //Day con

var
    n, l1, l2 : cardinal;
    s, sum, min : longint;
    arr : array [1..1000] of integer;
    fi, fo : text;
    
begin
    assign(fi, 'input.inp'); reset(fi);
    assign(fo, 'output.out'); rewrite(fo);
    while not(eof(fi)) do begin
        readln(fi, n, s);
        min := n;
        for l1 := 1 to n do read(fi, arr[l1]);

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
        readln(fi);
    end;
    close(fi);
    close(fo);
end.
