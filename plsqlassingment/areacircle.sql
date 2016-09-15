declare
	rad number(10);
	aria number(20);
begin
dbms_output.put_line('Enter the redious');
rad:=&rad;
aria:=3.14*rad*rad;
dbms_output.put_line('aria of circle:='||aria);
end;