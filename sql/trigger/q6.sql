
CREATE or REPLACE TRIGGER UDP on emp
  after insert  update or delete on
  BEGIN
    dbms_output.put_line('This Table is being updated');
  END;
after INSERT on emp
