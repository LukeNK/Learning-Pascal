program frog;

var
    n, cur, sum, l1 : int64;
    arr : array [1..10000] of integer;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n);
        for l1 := 1 to n do read(f, arr[l1]);
    close(f);

    cur := 1;
    while cur <> n do begin
        if (abs(arr[cur] - arr[cur+1]) < abs(arr[cur] - arr[cur+2])) or (cur = n -1) then begin
            sum := sum + abs(arr[cur] - arr[cur+1]);
            cur := cur + 1;
        end else begin
            sum := sum + abs(arr[cur] - arr[cur+2]);
            cur := cur + 2;
        end;
    end;
        
    assign(f, 'output.out'); rewrite(f);
        writeln(f, sum);
    close(f);
end.
