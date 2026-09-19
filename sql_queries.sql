CREATE TABLE orders_raw(
order_id varchar(20),
customer_name varchar(50),
email varchar(40),
city varchar(20),
order_date varchar(20),
amount varchar(20)
);

-- loaded data by Import/export 

select * from ordered_cleaned

create table ordered_cleaned as 
select * from orders_raw;

-- Data Cleaning

-- Query 1. Detect Duplicate Records

select customer_name, email, city, order_date, amount,
count(*)
from ordered_cleaned
group by customer_name, email, city ,order_date, amount
having count(*)>1;

-- Query 2 - Remove Duplicate Records

delete from ordered_cleaned where order_id not in (

select order_id from (select min(order_id) as order_id
					 from ordered_cleaned
					 group by customer_name, email, city,
					 order_date,amount) as temperory

);

-- Query 3 - find NULL Emails

-- NULL shown in your table is actually text "NULL", not SQL NULL. So I convert "NULL" text into a real SQL NULL.

UPDATE ordered_cleaned
SET email = NULL
WHERE email = 'NULL';


select * from ordered_cleaned
where email is NULL;

-- Replace missing emails

Update ordered_cleaned
set email = 'unknown@email.com'
where email is null;

-- Query 5 detect invalid emails

select * from ordered_cleaned
where email not like '%@%.%';

-- Fix Invalid Emails

update ordered_cleaned
set email = 'rohit@gmail.com'
where order_id = '10';

-- Query 7 fix the extra spaces in Customer Name

update ordered_cleaned
set customer_name = trim(customer_name);

-- Query 8 fix city Spelling mistake

update ordered_cleaned
set city = 'Mumbai'
where city = 'Mum bai';

-- Query 9 remove extra spaces in city
update ordered_cleaned
set city = trim(city);

-- Query 10 - fix date format (yyyy-dd-mm)

update ordered_cleaned
set order_date = to_date(order_date,'YYYY-DD-MM')
where order_date ~ '^[0-9]{4}-';


-- Query 11 - Fix date format(mm-dd-yyyy)

update ordered_cleaned
set order_date = to_date(order_date, 'mm-dd-yyyy')
where order_date ~ '^[0-9]{2}-[1-3][0-9]-[0-9]{4}';

-- Query 12 - fix date format(dd-mm-yyyy)

update ordered_cleaned 
set order_date = to_date(order_date, 'dd-mm-yyyy')
where order_date ~ '^[0-9]{2}-[0-9]{2}-[0-9]{4}';

-- Query 13 - Find missing date
-- NULL shown in your table is actually text "NULL", not SQL NULL. So I convert "NULL" text into a real SQL NULL.


UPDATE ordered_cleaned
SET order_date = NULL
WHERE order_date = 'NULL';


select * 
from ordered_cleaned
where order_date is null;

-- query 14 - replace missing date (2024-01-01)

update ordered_cleaned
set order_date = '2024-01-01'
where order_date is null;

-- Query 15 - fix Negative amount
-- amount is stored as character varying (VARCHAR). all values in amount are numeric text, cast it to a number:

UPDATE ordered_cleaned
SET amount = NULL
WHERE amount = 'NULL';

update ordered_cleaned
set amount = abs(amount :: numeric)
where amount :: numeric < 0;

-- Query 16 fix null amount (with -0)

update ordered_cleaned
set amount = 0 
where amount is null;


SELECT column_name, data_type, character_maximum_length
FROM information_schema.columns
WHERE table_name = 'ordered_cleaned';


ALTER TABLE ordered_cleaned
  ALTER COLUMN order_id   TYPE INTEGER       USING order_id::INTEGER,
  ALTER COLUMN order_date TYPE DATE          USING order_date::DATE,
  ALTER COLUMN amount     TYPE NUMERIC(10,2) USING amount::NUMERIC;






