declare
rad number(10);
area number(10);
begin
rad:=&rad;
while rad <= 20
loop
area:=3.14*rad*rad;
dbms_output.put_line('aria of circle='|| area);
rad:=rad + 1;
end loop;
end;