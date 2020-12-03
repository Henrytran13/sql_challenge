/*PART 1
Difference Between ALTER and UPDATE Command in SQL

alter-vs-updateALTER and UPDATE are the two modifying commands of SQL. ALTER is used to modify the structure of the relations (Tables) in the database. UPDATE Command is used to modify the data stored in a relation of the database. The basic difference between ALTER and UPDATE Command is that ALTER command is a Data Definition Language command whereas the UPDATE command is a Data Manipulation Language command.
Comparison Chart

BASIS FOR COMPARISON	ALTER	UPDATE
Basic	ALTER command is a Data Definition Language Command.	UPDATE command is a Data Manipulation Language Command.
Purpose	ALTER Command add, delete, modify the attributes of the relations (tables) in the database.	UPDATE Command modifies one or more records in the relations.
Syntax	ALTER TABLE table_name ADD column_name datatype;	UPDATE table_name SET column_name1 = value, column_name2 = value, ...
Values	ALTER Command by default initializes values of all the tuple as NULL.	UPDATE Command sets specified values in the command to the tuples.
Specification	ALTER Command operates on the attribute of a relation.	Update Command operates on the attribute value of a specific tuple in a relation.
*/
--PART 2
--- Rename column, table name is employees
ALTER TABLE employees
RENAME COLUMN department_id TO dept_id;

--- Add a column
ALTER TABLE employees
ADD COLUMN annual_salary INT;

