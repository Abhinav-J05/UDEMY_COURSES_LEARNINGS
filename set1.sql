
CREATE TABLE directors (
	director_id SERIAL PRIMARY Key,
	first_name VARCHAR(159),
	last_name VARCHAR(150),
	date_of_birth DATE,
	nationality VARCHAR(20),
	add_date DATE,
	update_date date
	
	
);

select * from directors


create table movies (
	movies_id serial primary key,
	movie_name varchar not null,
	movie_length INT,
	movie_lang varchar(20),
	age varchar(10),
	release_date date,
	director_id int references directors (director_id)

);

select * from movies;

-- movies revenue table ---

CREATE TABLE movies_revenue(
	revenue_id SERIAL PRIMARY KEY,
	movie_id INT REFERENCES movies (movies_id),
	revenues_domestic NUMERIC(10,2),
	revenues_international NUMERIC(10,2)
);

-- CREATING A JUNCTION TABLE

CREATE TABLE movies_actors (
	movies_id INT REFERENCES movies (movies_id),
	actor_id INT REFERENCES actors (actor_id),
	PRIMARY KEY (movies_id, actor_id)

);


-- CREATE mydata --

CREATE

-- create customers table

CREATE TABLE customers (
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(150),
	last_name VARCHAR (150),
	
	age INT
);


SELECT * FROM customers

-- I FORGOT TO CREATE ONE COLUMN FOR EMAIL, THEREFOR --

ALTER TABLE customers
ADD COLUMN email VARCHAR(150)

INSERT INTO customers (first_name, last_name, email,age )
VALUES 
	('Aditya', 'Joshi', '1234@gmail.com', 22 ),
	('Ayush', 'Joshi', '56678@gmail.com', 26),
	('Devansh', 'last', '48738@gmail.com', 21);

