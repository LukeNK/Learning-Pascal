program noNine;

var
    t, tl, f, l, c, l1, l2 : integer;
    s : string;
    b : boolean;
    fi, fo : text;
    
begin
    assign(fi, 'input.inp'); reset(fi);
    assign(fo, 'output.out'); rewrite(fo);
    readln(fi, t);
    for tl := 1 to t do begin
        c := 0;
        readln(fi, f, l);
        for l1 := f to l do begin
            b := false;
            str(l1, s);
            for l2 := 1 to length(s) do 
                if s[l2] = '9' then begin b := true; break; end;
            if b then continue;
            if l1 mod 9 <> 0 then inc(c);
        end;
        writeln(fo, c);
    end;
    close(fi);
    close(fo);
end.
