program cau5;

var
    t, s, max, l, l1, l2 : integer;
    n : string;
    arr : array [1..1000] of integer;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n);
    close(f);

    for l1 := 1 to length(n)-4 do begin
        s := 0;
        for l2 := 0 to 4 do begin
            val(n[l1+l2], t);
            s := s + t;
        end;
        if s > max then begin 
            max := s;
            l := l1;
        end;
    end;

    assign(f, 'output.out'); rewrite(f);
        writeln(f, n[l..l+4]);
    close(f);
end.
