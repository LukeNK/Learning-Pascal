program mtbit;

uses math;

var
    n, len, m, t, l1, l2: integer;
    s, bin : string;
    arr : array [1..256] of string;
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);
        readln(f, arr[1]);
        len := length(arr[1]);
        for l1 := 1 to len do readln(f, arr[l1+1]); 
    close(f);
        

    for l1 := 1 to len do begin
        n := 0;
        val(arr[l1], t);
        str(t, s);
        for l2 := 1 to len do begin
            val(s[l2], t);
            n := n + t*trunc(power(2, length(s)));
        end;
        if n > m then begin m := n; bin := s; end;

    assign(f, 'output.out'); rewrite(f);
        writeln(bin);
    close(f);
end.
