alter table emp add(city varcahr2(10));
update table emp set city='kolkata' where empno=1;

declare 
	emp_city varchar2(20);
	cursor info(emp_city varchar2) is select * from emp where city=emp_city;
	emp_rec emp%rowtype;
	begin
	emp_city:='&emp_city';
	for emp_rec in info(emp_city)
	loop
	dbms_output.put_line('employeeno:'||emp_rec.empno||' employeename:-'||emp_rec.empname||' city:-'||emp_rec.city);
	end loop;
	end;
/
	
