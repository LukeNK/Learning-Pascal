program matKhau;

var
    n, c, l1, l2, l3 : integer;
    arr : array [1..100] of integer;
    fi, fo : text;
    
begin
    assign(fi, 'input.inp'); reset(fi);
    assign(fo, 'output.out'); rewrite(fo);
    while not(eof(fi)) do begin
        l1 := 1; c := 0;
        writeln();
        while not(eoLn(fi)) do begin
            read(fi, arr[l1]);
            write(arr[l1], ' ');
            inc(l1);
        end;
        n := l1 - 1;

        for l1 := 1 to n do 
            for l2 := l1+1 to n do 
                for l3 := l2+1 to n do begin
                    if arr[l1]+arr[l2]+arr[l3] = 0 then continue 
                    else if (arr[l1]*arr[l2]*arr[l3] mod arr[l1]+arr[l2]+arr[l3]) = 0 then
                        inc(c);
                end;
        write(fo, c);
        readln(fi);
    end;
    close(fi);
    close(fo);
end.
