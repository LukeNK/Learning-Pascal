program numbers;

var
    n, l1, l2 : integer;
    t : cardinal;
    cur : integer = 1;
    s, cs : string;
    arr : array [1..100] of string;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n);
        for l1 := 1 to n do begin
            readln(f, s);
            s := s + '-';
            for l2 := 1 to length(s) do begin
                if (48 <= ord(s[l2])) and (ord(s[l2]) <= 57) then
                    cs := cs + s[l2]
                else if cs <> '' then begin
                    val(cs, t);
                    str(t, arr[cur]);
                    inc(cur);
                    cs := '';
                end;
            end;
        end;
    close(f);

    assign(f, 'output.out'); rewrite(f);    
        for l1 := 1 to cur-1 do begin
            for l2 := l1 to cur-1 do
                if arr[l1] > arr[l2] then begin
                    s := arr[l2];
                    arr[l2] := arr[l1];
                    arr[l1] := s;
                end;
            writeln(f, arr[l1]);
        end;
    close(f);
end.
