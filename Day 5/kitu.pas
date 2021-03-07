var f,f1: text;
    p,code,tg,n,u1,max2,h,v1,v2,u,i,j,dem: Integer;
    a,kq,max,c,b:String;
    k,o:char;
begin
   assign(f,'kitu.inp');
   reset(f);
   readln(f,a);
   i:=1;
   a:='aABbCDcdDEDMDNJeDBDJfDBDBhfhdDEgFhOhdbdDJRBDSNSBSWNDPjdhdbjdjfHRDC';
   while i<>length(a)+1 do
     if a[i]<>upcase(a[i]) then
       delete(a,i,1)
     else
       i:=i+1;
       
   for i:= 65 to 65+Length(a)-1 do
     b:=b+chr(i);
     
   for n:=1 to 2 do
     begin    
      for u:=1 to Length(a) do
        begin
          for i:=u to Length(a) do
            for j:=1 to Length(b) do
              if (a[i]=b[j]) and (j>h) then
                begin
                  kq:=kq+a[i];
                  h:=j;
                  break;
                end;
          if Length(kq)>length(max) then
            max:=kq;
          kq:='';
        end;
       c:=a;
       a:=b;
       b:=c;
     end;
   close(f);


   assign(f,'kitu.out');
   rewrite(f);
   writeln(f,length(a),Length(max),max);
   close(f);
end.
