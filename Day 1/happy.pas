program happy;

var
    n, len, l1, l2, l3: integer;
    arr : array [1..10000] of integer;
    b : boolean;
    f : text;

begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n);
        arr[1] := n;
    close(f);

    len := 1;
    for l1 := n-1 downto 1 do begin
        arr[len + 1] := l1;
        b := false;
        for l2 := 1 to len do 
            if arr[l2] mod arr[len+1] = 0 then begin b := true; break; end;
        if b then begin inc(len); continue; end;
        for l2 := 3 to arr[len+1] div 2 do 
            if arr[len+1] mod l2 = 0 then begin b := true; break; end;
        if not(b) then inc(len);
    end;
    arr[len] := 1; inc(len);

    assign(f, 'output.out'); rewrite(f);
        writeln(f, len-1);
        for l1 := 1 to len-1 do write(f, arr[l1], ' ');
    close(f);
end.
