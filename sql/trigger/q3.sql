create TABLE employee1(emp_no NUMBER(20),enp_name VARCHAR2(20),age NUMBER(4),salary NUMBER(10));

alter TABLE employee1 DROP COLUMN enp_name;
ALTER  TABLE employee1 add(emp_name varchar2(20));
RENAME table.emp_name varchar2(20) to enp_name;
insert into employee1 VALUES (028,'subham day',-20,86000);

CREATE or REPLACE TRIGGER checks_ages
  BEFORE INSERT on employee1
REFERENCING new as new_row
  FOR EACH ROW
  DECLARE
    negative_numbers EXCEPTION ;
  BEGIN
    if (:new_row.age <= 00 ) THEN
      RAISE negative_numbers;
    END IF;
  EXCEPTION
    WHEN negative_numbers THEN

    dbms_output.put_line('SIR YOU ENTER AN NEGATIVE value on age filed  ' ||:new_row.age);
end;
/

SELECT * FROM employee1;
desc employee1;