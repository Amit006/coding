insert into emp8 values(2,'subham','mca',60000);
insert into emp8 values(3,'sunanda','bca',62000);
insert into emp8 values(4,'rahul','btech',65000);
insert into emp8 values(5,'joka','betch',64500);
insert into emp8 values(6,'moka','cevil',69600);


declare
    emp_name emp8.e_name%type;
    emp_dept emp8.e_dept%type;
    emp_salary emp8.e_salary%type;
   cursor info is select * from (select e_name,e_dept,e_salary from emp8 order by e_salary desc) where rownum<=5;
   begin
   open info;
   if info%isopen then 
   loop
     fetch info into emp_name,emp_dept,emp_salary;
     exit when info%notfound;
     dbms_output.put_line('employee name:='||emp_name||'Department'||emp_dept||'salary'||emp_salary);
    end loop;
    end if;
    close info;
  end;
  /

