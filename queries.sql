

CREATE TABLE actors (
	actor_id SERIAL PRIMARY KEY,
	first_name VARCHAR(150),
	last_name VARCHAR(150) Not NULL,
	gender CHAR(1),
	date_of_birth DATE,
	add_date Date,
	update_date DATE
	
);