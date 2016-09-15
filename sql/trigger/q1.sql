 create table Student1(
Stud_id NUMBER(10) not NULL ,Stud_name VARCHAR2(20),Address VARCHAR2(40),Contact_no NUMBER(10),branch VARCHAR2(10)
);
 SELECT * from Student1;
insert INTO Student1 VALUES (001,'Abhisk Das','jongi pur',7216364592,'mca');
insert INTO Student1 VALUES (002,'Abhisker saha','behala',5936214588,'mca');
insert INTO Student1 VALUES (003,'Amit Nayek','kolkta',956423189,'mca');
insert INTO Student1 VALUES (004,'Anis twari','Asamsol',653214789,'mca');
insert INTO Student1 VALUES (005,'anupama sing','Asamsol',986532124,'mca');
insert INTO Student1 VALUES (006,'Subham dey','jargram',9083724431,'mca');
SELECT * from Student1;

CREATE TABLE Student1_backup(Stud_id NUMBER(10),Stud_name VARCHAR2(20),Address VARCHAR2(50),Contact_no NUMBER(10),Branch VARCHAR2(20));

CREATE or REPLACE TRIGGER Student1_backup_log
BEFORE UPDATE on Student1
REFERENCING old AS old_row
for EACH ROW
BEGIN
  INSERT  into Student1_backup VALUES (:old_row.Stud_id,:old_row.Stud_name,:old_row.Address,:old_row.Contact_no,:old_row.branch);
END;
/
UPDATE Student1 SET Stud_id=28 WHERE Stud_name='Subham dey';
 select * from Student1_backup;