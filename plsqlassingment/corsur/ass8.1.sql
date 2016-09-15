create table student12(std_id number(10),std_dept varchar2(20));
	insert into student12 values(109,'mca');
	insert into student12 values(104,'bca');
	insert into student12 values(106,'btech');
insert into student12 values(107,'civil');

declare
s_id  student12.std_id%type;
s_dept student12.std_dept%type;
cursor stu is select std_dept,count(std_id) from student12 group by std_dept;
begin
open stu;
if stu%isopen then
	loop
		fetch stu into s_dept,s_id;
		exit when stu%notfound;
dbms_output.put_line('  '||s_dept||'  '||s_id);
end loop;
end if;
close stu;
end;
/