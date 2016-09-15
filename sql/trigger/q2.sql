CREATE TABLE Emp2(empno NUMBER(10),emp_name VARCHAR2(20),salary NUMBER(20));
alter TABLE Emp2 MODIFY (empno varchar2(20));
SELECT * FROM Emp2;
CREATE or REPLACE TRIGGER emp_protocol
 BEFORE INSERT on Emp2
  REFERENCING new as new_row
  FOR EACH ROW
  DECLARE
    len NUMBER(10);
    var1 VARCHAR2(6);
    var2 VARCHAR2(8);
  BEGIN
    len:=length(:new_row.empno);
    var1:='E';
    if (:new_row.empno not LIKE 'E_____' ) THEN
      IF (len < 6) THEN
        :new_row.empno:= concat(var1,:new_row.empno);
        END IF;
    end if;
  END;
/



INSERT INTO  Emp2 VALUES ('E009','Debanjali',650000);
insert into Emp2 VALUES ('008','Sandipon ',65200);
SELECT * from Emp2;




