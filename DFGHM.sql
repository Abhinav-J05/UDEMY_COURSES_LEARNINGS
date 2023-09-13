CREATE EXTENSION IF NOT EXISTS "uuid-ossp"


SELECT uuid_generate_v4();


CREATE TABLE table_uuid(
	product_id UUID DEFAULT uuid_generate_v1(),
	product_name VARCHAR(100) not NULL

);

INSERT INTO table_uuid(product_name)
VALUES ('ABC')

SELECT * FROM table_uuid
