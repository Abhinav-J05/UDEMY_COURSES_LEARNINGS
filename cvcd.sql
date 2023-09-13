--- DATA TYPES IN SQL ---

CREATE TABLE table_dates (
	id serial primary key,
	employee_name varchar(100) NOT null,
	hire_date DATE NOT Null,
	add_date DATE DEFAULT CURRENT_DATE
	
);

--- inserting data ---

INSERT INTO table_dates (employee_name, hire_date)
VALUES ('abhinav', '2023-01-10'),
	   ('Abhinav', '2024-02-10')
	   
	   
select * from table_dates



