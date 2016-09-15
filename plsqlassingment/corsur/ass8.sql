

//its 7 code ....
create table emp8(e_id number(10),e_name varchar2(10),e_dept varchar2(10),e_salary number(10));
	insert into emp8 values(1,'amit','mca',50000);

declare
var_row number(10);
begin
update emp8 set e_salary=e_salary+(e_salary*0.2);
if sql%found then
var_row:=sql%rowcount;
	dbms_output.put_line('salary for '||var_row||'employee are updated');
end if;
end;
/

