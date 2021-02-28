program cau5bis;

var
    t, l1, l2 : integer;
    n, s : string;
    arr : array [1..1000] of integer;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n);
    close(f);

    for l1 := 9 downto 1 do begin
        for l2 := 1 to length(n) do begin
            val(n[l2], t);
            if l1 = t then begin
                s := s + n[l2];
                break;
            end;
        end;
        if length(s) = 5 then break;
    end;

    assign(f, 'output.out'); rewrite(f);
        writeln(f, s);
    close(f);
end.
