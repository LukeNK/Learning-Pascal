program rect;

var
    n, x, y, c, l1, l2, l3, l4 : integer;
    arr : array [1..250, 1..250] of boolean;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n);
        for l1 := 1 to n do begin
            for l2 := 1 to n do begin
                read(f, l3);
                if l3 = 1 then arr[l1, l2] := true
                else arr[l1, l2] := false;
            end;
            readln(f);
        end;
    close(f);

    
    for l1 := 1 to n do 
        for l2 := 1 to n do begin
            if arr[l1, l2] then begin
                for l3 := l2 to n+1 do 
                    if not(arr[l1, l3]) then break;
                x := l3-1;
                for l3 := l1 to n+1 do 
                    if not(arr[l3, l2]) then break;
                y := l3-1;
                for l3 := l1 to y do
                    for l4 := l2 to x do
                        arr[l3, l4] := false;
                inc(c);
            end;
        end;
    
    assign(f, 'output.out'); rewrite(f);
        writeln(f, c);
    close(f);
end.
