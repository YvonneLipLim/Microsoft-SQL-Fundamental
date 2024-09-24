--Schema: a collection of Tables which can be split and grouped according to logic and some table details meta settings can be set on this layer like a blueprint.
CREATE SCHEMA 'new_schema' --Give schema a name

  
--Table: records the metadata of each column, including the data type, default value, comments, etc. 
--Tables are responsible for managing the index, which can improve the search speed for data in the table. 
--It provides relationships definitions with other tables.

CREATE TABLE SalesLT.Employee (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName varchar(50) NOT NULL,
    LastName varchar(50) NOT NULL,
    Title varchar(100) NOT NULL, 
    HireDate DATE NOT NULL DEFAULT GETDATE()
);


--Read Table: Check whether the column settings are as expected or if there is a typo in any of the column names
SHOW FULL COLUMNS FROM `new_schema`.`new_table`;


--Destroy/Remove Table: Remove table in the database
DROP TABLE `new_schema`.`new_table`;


--Clean Table: Reset/clear data state inside the table
TRUNCATE `new_schema`.`new_table`;


--Create Column: Use the AFTER to set the column order which increases readability when viewing the table column setting
ALTER TABLE `new_schema`.`users`
ADD COLUMN `age` INT NULL AFTER `name`;


--Update Column: Generate a new rule and overwrite the original version
ALTER TABLE `new_schema`.`users`
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT, --The first is the existing column name, and the second is the new column name, followed by the new rules for the column.
CHANGE COLUMN `name` `user_name` VARCHAR(45) NOT NULL DEFAULT 'No Name';
