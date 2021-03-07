program kytudt;

var
    k, l1, l2, c : integer;
    s : string;
    b : boolean;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, k);
        readln(f, s);
    close(f);

    assign(f, 'output.out'); rewrite(f);
        for l1 := 1 to length(s) do begin
            if s[l1] = '-' then continue;
            c := 1; 
            for l2 := l1+1 to length(s) do
                if s[l1] = s[l2] then inc(c);
            if c = k then break
            else begin
                for l2 := l1+1 to length(s) do 
                    if s[l2] = s[l1] then s[l2] := '-';
                s[l1] := '-';
            end;
        end;
        if l1 = length(s) then l1 := -1;
        writeln(f, l1);
    close(f);
end.
