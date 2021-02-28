program snn;

var
    x, y, l1, l2 : integer;
    n : string;
    s : char;
    b : boolean;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n);
    close(f);

    for l1 := length(n) downto 1 do begin
        for l2 := l1 to length(n) do begin
            val(n[l1], x);
            val(n[l2], y);
            if x < y then begin
                s := n[l1];
                n[l1] := n[l2];
                n[l2] := s;
                b := true;
                break;
            end;
        end;
        if b then break;
    end;
        
    assign(f, 'output.out'); rewrite(f);
        writeln(f, n);
    close(f);
end.
