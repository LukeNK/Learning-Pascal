program trungvi;

var
    n, s, l1, l2, l3 : integer;
    arr : array [1..99, 1..99] of integer;
    brr : array [1..99] of integer;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n);
        for l1 := 1 to n do begin
            for l2 := 1 to n do read(f, arr[l1, l2]);
            readln(f);
        end;
    close(f);

    for l1 := 1 to n do begin
        for l2 := 1 to n do
            for l3 := l2 to n do
                if arr[l1, l2] > arr[l1, l3] then begin
                    s := arr[l1, l2];
                    arr[l1, l2] := arr[l1, l3];
                    arr[l1, l3] := s;
                end;
        brr[l1] := arr[l1, n div 2 +1];
    end;
    for l1 := 1 to n do
        for l2 := l1 to n do
            if brr[l1] > brr[l2] then begin
                s := brr[l1];
                brr[l1] := brr[l2];
                brr[l2] := s;
            end;
    
        
    assign(f, 'output.out'); rewrite(f);
        writeln(f, brr[n div 2 +1]);
    close(f);
end.
