create table student(roll number(4),name varchar2(10),marks number(9));
alter table student modify(name varchar2(20));
	insert into student values(1,'ankit',89);
insert into  student values(2,'shyam ranjan',75);
insert into  student values(3,'priti kumari',80);
insert into  student values(4,'gita das',56);

-- oracle triggers progeamme
create or replace trigger display_marks_changes
before delete or insert or update on student
for each row
when (new.marks > 0)
declare 
marks_diff number;
begin
	-- select marks from student where new.marks:= marks;
marks_diff := :new.marks - :old.marks;
dbms_output.put_line('old marks :->'|| :old.salary);
dbms_output.put_line('new marks :->'|| :new.salary);
dbms_output.put_line('marks diffrence :->'|| marks_diff);
end;
/ 
					