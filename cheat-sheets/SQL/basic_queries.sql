-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns
-- ==============
--   CREATE DB
-- ==============
create database mof;


-- ==============
--  CREATE TABLE
-- ==============

create table test (
    id serial primary key,
    email text,
    password_digest text,
    meal_ref integer,
    comments text
);


-- ==============
--   ALTER TABLE
-- ==============
alter table table_name add column x text;

alter table table_name rename column x to y;

ALTER TABLE table_name 
DROP COLUMN column_name;


-- ==============
--     READS
-- ==============
select * from table;

select col_1, col_2 from table;

select * from table where birth_year > 1900;

select * from authors where nationality = 'United States of America';

select * from books where publication_date = 1985;

select * from books where publication_date < 1989;

select title from books;

select publication_date from books where title = 'A Dance with Dragons';


select from books where title like '%The%';


-- ==============
--     WRITES
-- ==============
insert into table (col_1, col_2, col_3) values ('X', 'Y', 1234);


-- ==============
--     UPDATE
-- ==============

update table set col_1 = 'X' where id = 1;

update table set col_1 = 'X' where col_1 = 'Y';

update table set col_1 = 'X', col_2 = 'Y' where id = 1;


-- ==============
--     DELETE
-- ==============
delete from table where id = 10;

delete from table where col_1 = 'X';