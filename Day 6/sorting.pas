program template;

var
    t, n, l, l1, l2, temp : int64;
    b : boolean;
    arr : array [1..100] of integer;
    f, fo : text;
    
begin
    assign(f, 'input.inp'); reset(f);
    assign(fo, 'output.out'); rewrite(fo);
        readln(f, t);
        for l := 1 to t do begin
            readln(f, n);
            for l1 := 1 to n do read(f, arr[l1]);
            for l1 := 1 to n do 
                for l2 := l1+1 to n do begin
                    b := false;
                    if (arr[l1] mod 2 <> 0) and 
                            (arr[l2] mod 2 <> 0) and 
                            (arr[l1] > arr[l2]) then //alex
                        b := true
                    else if (arr[l1] mod 2 = 0) and 
                            (arr[l2] mod 2 = 0) and 
                            (arr[l1] < arr[l2]) then //bob
                        b := true;
                    if b then begin
                        temp := arr[l1];
                        arr[l1] := arr[l2];
                        arr[l2] := temp;
                    end;
                end;
            for l1 := 1 to n do write(fo, arr[l1], ' ');
            writeln(fo);
            readln(f);
        end;
    close(f);
    close(fo);
end.
