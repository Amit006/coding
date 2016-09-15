create table factorial1(num number(20),factnum number(10),area number(10));
declare
a number(4);
b number(5);
factorial12 number(6);
aria number(5,3);
begin
a:=&a;
factorial12:=1;
b:=1;
aria:=3.14*a*a;
for b in 1..a loop
	 factorial12:=factorial12*b;
end loop;
dbms_output.put_line('area of circle: '|| aria);
dbms_output.put_line('factorial od your number is:: '|| factorial12);
insert into factorial1 values(a,factorial12,aria);
end;
/