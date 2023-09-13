--- return statement ---

INSERT INTO customers (first_name)
VALUES ('A J j') RETURNING *;

INSERT INTO customers (first_name)
VALUES ('A J j') RETURNING CUSTOMER_ID



--- UPDATE DATA ----

UPDATE customers
SET email = 'new@gmail.com'
WHERE customer_id = 7

SELECT * FROM customers;


--- USING RETURN IN UPDATE ---

UPDATE customers
SET email = 'hello@gmaul.com'
WHERE customer_id = 3
RETURNING *;



--- DELETE IN TABLE ---
DELETE FROM customers
where customer_id = 3

--  UPSERT ---



-- create sample table

CREATE TABLE t_tags( 
	id serial PRIMARY KEY,
	tag text UNIQUE,
	update_date TIMESTAMP DEFAULT NOW()	
);

-- insert some sample data

INSERT INTO t_tags (tag) values
('Pen'),
('Pencil');

-- Lets view the data

SELECT * FROM t_tags;

-- 2020-12-29 19:13:19.392095

-- Lets insert a record, on conflict do noting

INSERT INTO t_tags (tag) 
VALUES ('Pen')
ON CONFLICT (tag) 
DO 
	NOTHING;


SELECT * FROM t_tags;



-- insert a record, on conflict set new values

INSERT INTO t_tags (tag) 
VALUES ('Pen')
ON CONFLICT (tag) 
DO 
	UPDATE SET
		tag = EXCLUDED.tag || '1',
		update_date = NOW();