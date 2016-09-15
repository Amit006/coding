declare
a number(3);
b number(3);
begin
a:=&a;
b:=&b;
dbms_output.put_line('(a+b)='|| (a+b));
dbms_output.put_line('(a-b)='|| (a-b));
dbms_output.put_line('(a/b)='|| (a/b));
dbms_output.put_line('(a*b)='|| (a*b));
end;
/