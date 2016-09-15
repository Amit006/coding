declare
emp_dept emp.deptno%type;
emp_salary emp.salary%type;
cursor info1 is select deptno,sum(salary) from emp group by deptno;
emp_rec emp%rowtype;				
begin
open info1;
if info1%isopen then 
loop
	fetch info1 into emp_dept,emp_salary;
	dbms_output.put_line('department:'||emp_dept||'salary'||emp_salary);
end loop;
end if;
end;
/