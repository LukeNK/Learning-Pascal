program bus_route;

var
    l, test, n, k, p, c, pos, max, sum, l1, l2, l3, l4 : integer;
    b : boolean;
    arr : array [1..1000, 1..1000] of integer;
    fi, fo : text;

begin
    assign(fi, 'input.inp'); reset(fi);
    assign(fo, 'output.out'); rewrite(fo);
    readln(fi, test);
    for l := 1 to test do begin
        readln(fi, n, k, p);
        for l1 := 1 to n do begin
            for l2 := 1 to k do read(fi, arr[l1, l2]);
            readln(fi);
        end;
        
        for l1 := 1 to n*k do begin
            for l2 := 1 to k do begin
                for l3 := 1 to n do begin
                    if arr[l3, l2] > max then begin 
                        pos := l3; max := arr[l3, l2]; 
                    end;
                    for l4 := l2 downto 1 do begin
                        if arr[pos, l4] <> 0 then inc(c);
                        sum := sum + arr[pos, l4];
                    end;
                    if c = p then begin b := true; break; end;
                end;
                if b then break;
            end;
            if b then break;
        end;
        writeln(fo, sum);
    end;
    close(fi);
    close(fo);
end.
