SELECT * from emp;
drop TABLE emp;

CREATE TABLE  EMP(Empno NUMBER(10),Empname VARCHAR2(20),salary NUMBER(15));
SELECT  * FROM EMP;
CREATE TABLE Emp_Backup(Empno number(10),Empame varchar2(20),Date_of_operation date,Type_of_operaation varchar2(20));
SELECT * FROM Emp_Backup;

CREATE or REPLACE TRIGGER UD_operation
after insert or update or DELETE on EMP
  BEGIN
    if
        dbms_output.out_line('Congratulation Table is being Updated');
  END;
after   delete on emp

/

insert into emp VALUES (000,'Abhishek Das',7000);
update