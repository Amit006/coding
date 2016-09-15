declare 
	empno_rec emp10%rowtype;
	empno number(10);
begin
   empno:=&empno;
   select * into empno_rec from emp10 where emp_no=empno;
   dbms_output.put_line('empno:=' ||empno_rec.emp_no);
   dbms_output.put_line('emp_name:='|| empno_rec.emp_name);
   dbms_output.put_line('emp_salary:='|| empno_rec.emp_salary);
 end;
/