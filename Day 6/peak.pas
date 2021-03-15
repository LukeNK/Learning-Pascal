program template;

var
    test, n, c, l, l1 : integer;
    arr : array [1..10000] of integer;
    fi, fo : text;
    
begin
    assign(fi, 'input.inp'); reset(fi);
    assign(fo, 'output.out'); rewrite(fo);
    readln(fi, test);
    for l := 1 to test do begin
        c := 0;
        readln(fi, n);
        for l1 := 1 to n do read(fi, arr[l1]);
        for l1 := 2 to n-1 do begin
            if (arr[l1-1] < arr[l1]) and (arr[l1] > arr[l1+1]) then
                inc(c);
            arr[l1-1] := 0;
        end;
        for l1 := n-2 to n do arr[l1] := 0;
        readln(fi);
        writeln(fo, 'Case #', l, ': ', c);
    end;
    close(fi);
    close(fo);
end.
