program digit;

uses math;

var
    d, n, l1, l2, k : int64;
    bin, tri, t, s : string;
    f : text;

begin
    assign(f, 'input.inp'); reset(f);
        readln(f, bin);
        readln(f, tri);
    close(f);
    
    for l1 := 1 to length(bin) do begin
        if bin[l1] = '0' then bin[l1] := '1' else bin[l1] := '0';
        d := 0;
        for l2 := 0 to length(bin)-1 do begin
            val(bin[l2+1], n);
            d := d + n*trunc(power(2, length(bin)-l2-1));
        end;
        if bin[l1] = '0' then bin[l1] := '1' else bin[l1] := '0';
        t := '';
        k := d;
        while d <> 0 do begin
            str(d mod 3, s);
            d := d div 3;
            t := s + t;
        end;
        val(t, n);
        str(n, t);
        n := 0;
        if length(tri) <> length(t) then continue;
        for l2 := 1 to length(t) do 
            if tri[l2] <> t[l2] then inc(n);
        if n = 1 then break;
    end;
    
    assign(f, 'output.out'); rewrite(f);
        writeln(f, k);
    close(f);
end.
