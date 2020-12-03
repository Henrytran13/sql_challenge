Drop table people1
-- Create a new table
CREATE TABLE people1 (
  name VARCHAR(30) NOT NULL,
  has_pet BOOLEAN DEFAULT false,
  pet_type VARCHAR(10) NOT NULL,
  pet_name VARCHAR(30),
  pet_age INT
);

-- Query all fields from the table
SELECT *
FROM people1;

-- Insert data into the table
INSERT INTO people1 (name, has_pet, pet_type, pet_name, pet_age)
VALUES ('Jacob', true, 'dog', 'Misty', 10),
  ('Ahmed', true, 'rock', 'Rockington', 100),
  ('Peter', true, 'cat', 'Franklin', 2),
  ('Dave', true, 'dog', 'Queso', 1);

-- Query all rows and columns from the people table
SELECT *
FROM people1;

-- Query only the `pet_name` field
SELECT pet_name
FROM people1;

-- Filter the query to show only dogs under the age of 5
SELECT
	pet_type,
	pet_name,
	pet_age
FROM
	people1
WHERE
	pet_type = 'dog'
	AND pet_age < 5;
