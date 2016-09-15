create table student (rno number(10),name varchar2(10),std varchar2(10),b_date date,sex varchar2(10));
	insert into student values (1,'soumita','mca','10-dec-93','f');
	insert into student values (1,'taniya','mca','10-jan-93','f');
	insert into student values (1,'sudipta','bca','20-feb-93','m');
	insert into student values (1,'sunanda','bca','14-jun-93','f');
	insert into student values (1,'bcroy','bca','16-apr-93','m');

create table boy_table2(rno number(10),name varchar2(10),std varchar2(10),b_date date);
create table girl_table2(rno number(10),name varchar2(10),std varchar2(10),b_date date);

declare
r_no student.rno%type;
r_name student.name%type;
r_std  student.std%type;
r_date student.b_date%type;
cursor cur is select * from student;
     emp_stu student%rowtype;
begin
open cur;
if cur%isopen then
	loop
			fetch cur into emp_stu;
			exit when cur%notfound;
	if (emp_stu.sex='f')then
		insert into girl_table2 values(emp_stu.rno,emp_stu.name,emp_stu.std,emp_stu.b_date);
	else
	    insert into boy_table2 values(emp_stu.rno,emp_stu.name,emp_stu.std,emp_stu.b_date);
	 end if;
	 end loop;
end if;
end;
/