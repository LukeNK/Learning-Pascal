program bangso;

var
    n, sum, p1, p2, max, l1, l2, l3, l4 : integer;
    arr : array [1..99, 1..99] of integer;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n);
        for l1 := 1 to n do begin
            for l2 := 1 to n do read(f, arr[l1, l2]);
            readln(f);
        end;
    close(f);

    for l1 := 1 to n-2 do 
        for l2 := 2 to n-2 do begin
            sum := 0;
            for l3 := 0 to 2 do
                for l4 := 0 to 2 do
                    sum := arr[l1+ l3, l2+ l4] + sum;
            if sum > max then begin 
                max := sum;
                p1 := l1; p2 := l2;
            end;
        end;
        
    assign(f, 'output.out'); rewrite(f);
        writeln(f, max);
        writeln(f, p1, ' ', p2);
    close(f);
end.
