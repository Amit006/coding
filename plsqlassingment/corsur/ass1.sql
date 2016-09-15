create table emp(empno number(10),empname varchar2(10),salary number(10),deptno number(10));

	insert into emp values(1,'sudipta',200000,10);
	insert into emp values(2,'soumita',250000,13);
	insert into emp values(3,'amit',30000,14);
	insert into emp values(4,'alok',40000,10);

declare 
   cursor emp2_cur is select * from emp;
   emp2_rec emp%rowtype;
   begin
   open emp2_cur;
   loop
   fetch emp2_cur into emp2_rec;
   exit when emp2_cur%notfound;
   dbms_output.put_line(emp2_rec.empname||'employee working in department'||emp2_rec.deptno||'earns Rs.'||emp2_rec.salary);
  end loop;
  close emp2_cur;
  end;
  /