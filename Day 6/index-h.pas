program hindex;

var
    t, l, n, temp, h, l1, l2, l3 : integer;
    arr : array [1..10000] of integer;
    b : boolean;
    fi, fo : text;
    
begin
    assign(fi, 'input.inp'); reset(fi);
    assign(fo, 'output.out'); rewrite(fo);
    readln(fi, t);
    for l := 1 to t do begin
        readln(fi, n);
        for l1 := 1 to n do begin
            read(fi, arr[l1]);
            //need sort cleanup
            for l2 := 1 to l1 do 
                for l3 := l2 to l1 do
                    if arr[l2] < arr[l3] then begin
                        temp := arr[l2];
                        arr[l2] := arr[l3];
                        arr[l3] := temp;
                    end;
            
            b := false;
            for l2 := 1 to n do begin
                b := false;
                for l3 := 1 to l2 do begin
                    writeln(arr[l3], ' ', l2);
                    if arr[l3] < l2 then begin
                        b := true; break;
                    end;
                end;
                if not(b) then h := l2;
            end;
                
            write(fo, h, ' ');
        end;
        writeln(fo);
    end;
    close(fi);
    close(fo);
end.
