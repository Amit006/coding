-- DECLARE
--   roll_no      NUMBER(5);
--   sub1         NUMBER(5);
--   sub2         NUMBER(4);
--   sub3         NUMBER(5);
--   total_number NUMBER(3);
--   per          NUMBER(4);
--   result       VARCHAR2(15);
--   grade        VARCHAR2(15);
--
-- BEGIN
--   roll_no := &roll_no;
--   sub1 := &sub1;
--   sub2 := &sub2;
--   sub3 := &sub3;
--   total_number := sub3 + sub2 + sub1;
--   per := total_number / 3;
--
--   IF (per < 80)
--   THEN
--     grade := 'I';
--     result := 'fist dev';
--   ELSIF (per < 60)
--     THEN
--       grade := 'II';
--       result := 'socend dev';
--   ELSIF (per < 55) AND (per > 45)
--     THEN
--       grade := 'IJ';
--       result := 'third dev';
--   ELSIF (per > 25) AND (per < 30)
--     THEN
--       grade := 'JJ';
--       result := 'forth dev';
--   ELSE
--     grade := 'bad';
--     result := 'fail';
--   END IF;
--
--   dbms_output.put_line('*********OUTPUT************');
--   dbms_output.put_line('Roll_on ' || roll_no);
--   dbms_output.put_line('total_no ' || total_number);
--   dbms_output.put_line('Sub1  ' || sub1);
--   dbms_output.put_line('sub2 ' || sub2);
--   dbms_output.put_line('sub3 ' || sub3);
--   dbms_output.put_line('sub4 ' || grade);
--   dbms_output.put_line('sub5 ' || result);
--
-- END;
-- -- //find 10 odd numbers//
-- CREATE TABLE num (
--   digits NUMBER(10)
-- );
-- DECLARE
--   num  NUMBER(6) := 1;
--   num2 NUMBER(4) := 2;
--
--
-- BEGIN
--   dbms_output.put_line('odd numbers are');
--   FOR i IN 1..10
--   LOOP
--     dbms_output.put_line(num);
--     num := num + num2;
--     INSERT INTO num VALUES (num);
--   END LOOP;
-- END;
--
-- DROP TABLE num;
-- -- prime number programme>
--
-- DECLARE
--   x    NUMBER := 1;
--   flag NUMBER := 0;
--   no   NUMBER;
--   r    NUMBER;
-- BEGIN
--   WHILE x < 10 LOOP
--     flag := 0;
--     no := x - 1;
--     WHILE no > 1 LOOP
--       r := mod(x, no);
--       IF r = 0
--       THEN
--         flag := 1;
--         EXIT;
--       END IF;
--       no := no - 1;
--     END LOOP;
--     IF flag = 0
--     THEN
--       dbms_output.put_line(x);
--     END IF;
--     x := x + 1;
--   END LOOP;
-- END;
-- /
-- -- prme 2
-- DECLARE
--   int_num NUMBER(4):=1;
--   int_num2 NUMBER(6):=0;
--   BEGIN
--    WHILE int_num<10 LOOP
--       WHILE int_num <0 LOOP
--           int_num2:=mod(int_num,10);
-- END LOOP;
-- int_num:=int_num +1;
--    END LOOP;
--
--       WHILE
--    END LOOP;
-- END;

--------------trigger----------------

create table company1(product_id number(4) not null, company_id NUMBER(8) not null,company_short_name  varchar2(30) not null, company_long_name varchar2(60));

create table product_audit(product_id number(4) not null, num_rows number(8) not null);

CREATE OR REPLACE TRIGGER myTrigger
    AFTER INSERT ON company1
    REFERENCING NEW AS new_org
    FOR EACH ROW
   BEGIN
     UPDATE product_audit
     SET num_rows =num_rows+1
      WHERE product_id =:new_org.product_id;
     IF (SQL%NOTFOUND) THEN
       INSERT INTO product_audit VALUES (:new_org.product_id,1);
     END IF;
 END;
/
insert into company1 values(1,1001,'A Inc.','Long Name A Inc.');
insert into company1 values(1,1002,'B Inc.','Long Name B Inc.');
insert into company1 values(1,1003,'C Inc.','Long Name C Inc.');
insert into company1 values(2,1004,'D Inc.','Long Name D Inc.');
insert into company1 values(2,1005,'E Inc.','Long Name E Inc.');
insert into company1 values(2,1006,'F Inc.','Long Name F Inc.');
SELECT  * from company1;
SELECT  * from product_audit;