program phone;

var
    t, l, l1, c : integer;
    s, r, temp : string;
    arr : a
    f, fo : text;
    
begin
    assign(f, 'input.inp'); reset(f);
    assign(fo, 'output.out'); rewrite(fo);
        readln(f, t);
        for l := 1 to t do begin
            readln(f, s);
            l1 := 1;
            while s[1] <> ' ' do begin 
                r := r + s[l1];
                delete(s, 1, 1);
            end;
            delete(s, 1, 1); //space delete;
            c := 1;
            for l1 := 1 to length(s) do begin
                if s[l1] = '-' then begin 
                    val(temp, arr[c]);
                    temp := '';
                    inc(c);
                end;
                temp := temp + s[l1];
            end;
            while l1 < length(r) do begin
                temp := r[l1];
                for l2 := 0 to length(r)-l1 do 
                    if r[l1+l2] <> temp then break;
                if l2 > 0 then
                    if l2 = 1 then write(fo, 'double ')
                    else if l2 = 2 then write(fo, 'triple ')
                    else if l2 = 3 then write(fo, 'quad ');
                if temp 
                l1 := l1 + l2;
                inc(l1)
            end;
        end;
    close(f);
    close(fo);
end.
