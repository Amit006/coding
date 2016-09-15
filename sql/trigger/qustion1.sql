create table books(books_no varchar2(10), title varchar2(30));
insert into books values('mca_900','c_programming');
insert into books values('bca_10','dbms');
insert into books values('bba_200','accounting information');
SELECT * from books;
create table books_deleted_log(books_no varchar2(19),title varchar2(20));



create or replace trigger books_deleted
	BEFORE delete on books
	 REFERENCING  old  as old
	 for each row
  BEGIN
	 insert into books_deleted_log values(:old.books_no,:old.title);
    end;
/

DELETE FROM books WHERE books_no='mca_900';
select * FROM books_deleted_log;