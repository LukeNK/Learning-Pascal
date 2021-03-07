program analyze;

var
    n, l, l1, s : cardinal;
    arr : array [1..2] of cardinal;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, arr[1], arr[2]);
    close(f);

    for l := 1 to 2 do begin
        n := arr[l];
        for l1 := 1 to n do
            if n mod l1 = 0 then s := s + l1;
    end;

    assign(f, 'output.out'); rewrite(f);
        writeln(f, s);
    close(f);
end.
