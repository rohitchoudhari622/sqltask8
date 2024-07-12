--TASK DONE BY USING ECOM DATA

select * from sales 

--regularexpression operator(REGEXP)

--1)FIND ALL THE ROW FROM SALES HAVING 2016 IN order_id.

select * from sales where order_id ~ '2016';

--2)GET ALL THE ROWS IS SCOND CLASS IN ship_mode FROM SALES WHERE AS MAKE IT CASE INSENSITIVE.

select * from sales where ship_mode ~* 'second class';

--3)WHAT IS THE QUERY TO GET ALL THE ROWS OF product_id HAVING 'FUR-CH'.

select product_id from sales where product_id ~* 'FUR-CH' 

--4)HOW TO FETCH AGE FROM CUSTOMER TABLE HAVING AGE IS 20.

select * from customer

select age:: varchar from customer where age:: varchar ~ '20' 

--5)DISPLAY AGE OF ROWS WHERE AS FIRST CHARACTER IS BETWEEN 2 AND 5 AND SECOND CHARACTER IS 0 OR 2 OR 3.

select customer_id, segment, age from customer where age::varchar ~* '^[2-5](0|2|3)$';

--6)DISPLAY THE STARTING  THREE CHARACTER FROM SALES IS BETWEEN  0 TO 5, 0 TO 4, AND 0 TO 9.

select sales::varchar from sales where sales::varchar ~* '^[0-5][0-4][0-9]';

--7)DISPLAY THE SALES WHERE  FIRST, SECOND  AND THIRED CHARACTER IS BETWEEN 2 TO 8.

select sales::varchar from sales where sales::varchar ~* '^[2-8]{3}';

--8)WRITE A QUERY TO SHOW THE order_id having US AND YEAR 2016 OR 2017.

select order_id from sales where order_id ~* '^US-201(6|7)';

--9)WRITE A QUERY TO DISPLAY CUSTOMER TABLE HAVING ROWS OF customer_name WITH FIRST LETTER BETWEEN A TO Z AND SECOND IS E OR T OR R.

select customer_name from customer where customer_name ~* '^[a-z](e|t|r)';

--10)WAQ TO DISPLAY THE segment HAVING END LETTER IS E.

select segment from customer where segment ~* 'e$';