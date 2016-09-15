create table emp10(emp_no number(10),emp_name varchar2(10),emp_salary number(20));
	insert into emp10 values(1,'amit',5000);
	insert into emp10 values(2,'sunanda',6000);
	insert into emp10 values(3,'subham',5000);
	insert into emp10 values(4,'anupama',60000);

declare
	empno emp10.emp_no%type;
	emp_rec1 emp10.emp_name%type;
	emp_rec2 emp10.emp_salary% type;
	begin
	    empno:=&empno;
	    select emp_name,emp_salary into emp_rec1,emp_rec2 from emp10 where empno=emp_no;
	    dbms_output.put_line('empno:-'||empno);
	    dbms_output.put_line('emp_name:-  '|| emp_rec1);
	    dbms_output.put_line('emp_salary:-'|| emp_rec2);
	    exception 
	     		when no_data_found then
	     			dbms_output.put_line('no data found');
	 end;
/







