/*PART 1
Difference between DDL and DML in DBMS

DDL:
DDL is Data Definition Language which is used to define data structures. For example: create table, alter table are instructions in SQL.

DML:
DML is Data Manipulation Language which is used to manipulate data itself. For example: insert, update, delete are instructions in SQL
*/
--PART 2
CREATE TABLE vendor_table (
	id SERIAL,
	vendor_name VARCHAR(30),
	vendor_country VARCHAR(30),
	PRIMARY KEY(id)
	);

-- Populate data into vendors table
INSERT INTO vendor_table ( vendor_name, vendor_country) VALUES
    ( 'Carlton', 'Turkey'),
	( 'Cascade Yarns', 'United States'),
	( 'Debbie Bliss', 'United Kingdom'),
	( 'Tahki', 'Greece');

SELECT * FROM vendor_table;