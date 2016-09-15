declare
	emp_name emp.empname%type;
	emp_dept emp.deptno%type;
	emp_salary emp.salary%type;
	cursor info is select * from (select empname,salary,deptno from emp order by salary desc) where rownum<=10;
	begin
	open info;
    if info%isopen then 
    loop
       fetch info into emp_name,emp_dept,emp_salary;
       exit when info%notfound;
       dbms_output.put_line('employee Name:'||emp_name||'Department'||emp_dept||'emp_salary'||emp_salary);
     end loop;
    end if;
 close info;
 end;
 /