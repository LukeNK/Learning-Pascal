program mtbit;

uses math;

var
    n, len, m, t, x, y, l1, l2: integer;
    s, bin, ma, ms : string;
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
            n := n + t*trunc(power(2, length(s)-l2));
        end;
        if n > m then begin m := n; bin := s; end;
        ma := ma + arr[l1][l1];
        ms := ms + arr[l1][len+1-l1];
        n := 0;
        s := '';
        for l2 := 1 to len do begin
            val(arr[l2][l1], t);
            s := s + arr[l2][l1];
            n := n + t*trunc(power(2, len-l2));
        end;
        if n > m then begin m := n; bin := s; end;
    end;

    for l1 := 1 to len do begin
        val(ma[l1], t);
        val(ms[l1], l2);
        x := x + t*trunc(power(2, length(s)-l1));
        y := y + l2*trunc(power(2, length(s)-l1));
    end;
    if x > m then begin m := x; bin := ma; end;
    if y > m then begin m := y; bin := ms; end;

    assign(f, 'output.out'); rewrite(f);
        writeln(f, bin);
    close(f);
end.
