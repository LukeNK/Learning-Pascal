program phoDiBo;

var
    n, r, c, l1, l2 : int64;
    arr : array [1..300000] of integer;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n, r);
        for l1 := 1 to n do read(f, arr[l1]);
    close(f);

    for l1 := 1 to n do 
        for l2 := l1 to n do
            if arr[l2] - arr[l1] > r then inc(c);

    assign(f, 'output.out'); rewrite(f);
        writeln(f, c);
    close(f);
end.
