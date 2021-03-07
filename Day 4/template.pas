program template;

var
    f : text;
    
begin
    assign(f, 'input.inp'); reset(f);

    close(f);

    assign(f, 'output.out'); rewrite(f);

    close(f);
end.