declare
A number(10);
Sum1 number(20);
Rem1 number(20);
begin
A:=&A;
Sum1:=0;
while(A>0)
	loop
		Rem1:=mod(A,10);
		Sum1:=Sum1+Rem1;
		A:=trunc(A/10);
	end loop;
	dbms_output.put_line(Sum1);
end;