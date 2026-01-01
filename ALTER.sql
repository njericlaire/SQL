SELECT * FROM EMPLOYEES
--ADD COLUMN
ALTER TABLE EMPLOYEES
ADD Email varchar(100)

ALTER TABLE EMPLOYEES
ADD Phone varchar(20), COUNTY varchar(20)

--remove columns
ALTER TABLE EMPLOYEES
DROP COLUMN PHONE, COUNTY

--CHANGE DATA TYPE
ALTER TABLE EMPLOYEES
ALTER COLUMN EmpNAME varchar(200)

CREATE TABLE EmpNew(
Empid int,
Empname varchar(100)
)

ALTER TABLE EmpNew
ALTER COLUMN Empid int NOT NULL

--make a table primary key. can only be done if the column is set to null and there is no dublicates
ALTER TABLE EmpNew
Add CONSTRAINT PK_EMPID PRIMARY KEY(Empid)

CREATE TABLE Salaries(
Empid int,
salary money)

--create a foreign key
ALTER TABLE Salaries
ADD constraint Fk_EMP FOREIGN KEY(Empid) REFERENCES EmpNew(Empid)

--drop constraint fk and pk
ALTER TABLE SALARIES
DROP FK_EMP

ALTER TABLE EmpNew
DROP PK_EMPID

