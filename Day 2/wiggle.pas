program wiggle;

var
    l1 : integer;
    n : string;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n);
    close(f);

    for l1 := 1 to length(n)-1 do
        if (n[l1] > n[l1+1]) or (n[l1] > n[l1+1]) then continue
        else break;
        
    assign(f, 'output.out'); rewrite(f);
        writeln(f, l1);
    close(f);
end.
