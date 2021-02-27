program nguyento;

var
    n, cur, l1, l2 : LongWord;
    arr : array [1..10000000] of LongWord;
    b : boolean;
    f : text;

begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n);
    close(f);

    cur := 1;
    for l1 := 2 to n do begin
        b := false;
        for l2 := 3 to l1 div 2 do
            if l1 mod l2 = 0 then begin b:= true; break; end;
        if not(b) then begin arr[cur] := l1; inc(cur); end;
    end;

    assign(f, 'output.out'); rewrite(f);
        for l1 := 1 to cur-1 do
            for l2 := l1 to cur-1 do
                if arr[l1] + arr[l2] = n then 
                    writeln(f, arr[l1], ' ', arr[l2]);
    close(f);
end.
