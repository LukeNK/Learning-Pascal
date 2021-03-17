program kingCircle;

var
    t, tl, n, c, cof, l1, l2, l3, l4, l5 : integer;
    arr : array [1..1000, 1..1000] of byte;
    fi, fo : text;
    
begin
    assign(fi, 'input.inp'); reset(fi);
    assign(fo, 'output.out'); rewrite(fo);
    readln(fi, t);
    for tl := 1 to t do begin
        readln(fi, n);
        for l1 := 1 to n do begin
            for l2 := 1 to n do 
                read(fi, arr[l1, l2]);
            readln(fi);
        end;

        cof := 0;
        for l1 := 1 to n do
            for l2 := 1 to n do
                for l3 := l1+1 to n do
                    for l4 := l2+1 to n do begin
                        if l3-l1 <> l4-l2 then continue;
                        c := 0;
                        if arr[l1, l2] = 1 then inc(c);
                        if arr[l3, l4] = 1 then inc(c);
                        for l5 := l2+1 to l4 do begin
                            if arr[l1, l5] = 1 then inc(c);
                            if arr[l3, l5-1] = 1 then inc(c);
                        end;
                        for l5 := l1+1 to l3 do begin
                            if arr[l5, l2] = 1 then inc(c);
                            if arr[l5-1, l4] = 1 then inc(c);                            
                        end;
                        if c = 3 then inc(cof);
                    end;
        
        writeln(fo, cof);
    end;
    close(fi);
    close(fo);
end.
