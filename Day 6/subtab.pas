program subtab; //Bang con thuan khiet

var
    m, n, k, c, l1, l2, l3, l4 : integer;
    b, s : boolean;
    arr : array [1..10000, 1..10000] of integer;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, m, n, k);
        for l1 := 1 to m do begin
            for l2 := 1 to n do read(f, arr[l1, l2]);
            readln(f);
        end;
    close(f);

    for l1 := 1 to m-k+1 do 
        for l2 := 1 to n-k+1 do begin
            b := false;
            if arr[l1, l2] > 0 then s := true
            else if arr[l1, l2] < 0 then s := false
            else continue;
            
            for l3 := 0 to k-1 do begin 
                for l4 := 0 to k-1 do
                    if (arr[l1+l3, l2+l4] > 0) and (s = true) then b := false 
                    else if (arr[l1+l3, l2+l4] < 0) and (s = false) then b := false
                    else begin b := true; break; end;
                if b then break;
            end;
            if not(b) then inc(c);
        end;
    
    
    assign(f, 'output.out'); rewrite(f);
        writeln(f, c);
    close(f);
end.
