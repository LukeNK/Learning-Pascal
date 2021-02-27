program multi;

uses math;

var
    r, o, d, l1, l2 : integer;
    s, t1 : string;
    bo : boolean;
    f : text;

begin
    assign(f, 'multi.inp'); reset(f);
        readln(f, l1, l2, r);
        d := l1*l2;
    close(f);
    
    if d <> r then begin
        str(r, s);
        for l1 := 1 to length(s) do
            if s[l1] = '0' then continue
            else if s[l1] > t1 then t1 := s[l1];
        
        val(t1, l2);
        for l1 := l2+1 to 16 do begin
            o := 0;
            for l2 := 1 to length(s) do begin
                val(s[l2], r);
                o := o + trunc(power(l1, length(s)- l2))*r;
            end;
            if o = d then begin bo := true; break; end;
        end;
    end else begin l1 := 10; bo := true; end;
    
    assign(f, 'multi.out'); rewrite(f);
        if not(bo) then l1 := 0;
        writeln(f, l1);
    close(f);
end.
