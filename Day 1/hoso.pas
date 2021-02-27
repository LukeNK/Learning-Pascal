program hoso;

var
    n, k : integer;
    f : text;

begin
    assign(f, 'input.inp'); reset(f);
        readln(f, n, k);
    close(f);

    assign(f, 'output.out'); rewrite(f);
        writeln(f, n div k, ' ', n mod k);
    close(f);
end.
