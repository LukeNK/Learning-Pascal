program cau4;


var
    l1 : integer;
    arr : array [1..1000] of integer;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n);
        for l1 := 1 to n do read(f, arr[l1]);
    close(f);

    assign(f, 'output.out'); rewrite(f);
        for l1 := 1 to n do 
            for l2 := l1 to n do
                if a
    close(f);
end.
