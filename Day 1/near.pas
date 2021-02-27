program closest;

var
    l1, k : integer;
    s, c : string;
    b : boolean;
    f : text;

begin 
    assign(f, 'near.inp'); reset(f);
        read(f, k, l1);
        str(l1, c);
    close(f);
    while not(b) do begin 
        inc(k);
        str(k, s);
        for l1 := 1 to length(s) do
            if s[l1] = c then begin b := true; break; end;
    end;
    assign(f, 'near.out'); rewrite(f);
        writeln(f, k);
    close(f);
end.
