SELECT * from employee1;

CREATE or REPLACE TRIGGER covert_up
BEFORE INSERT on employee1
  REFERENCING new as new_row
  FOR EACH ROW
  BEGIN
    :new_row.emp_name:=upper(:new_row.emp_name);
  END;
/

INSERT INTO employee1 VALUES (006,22,7000,'Amit nayek');

SELECT * FROM employee1;