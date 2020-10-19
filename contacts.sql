--USE SM_04_BRENDA_GH

/*CREATE TABLE my_contacts
(
	last_name VARCHAR(30),
	first_name VARCHAR(20),
	email VARCHAR(50),
	birthday DATE,
	profession VARCHAR(50),
	location VARCHAR(50),
	status VARCHAR(20),
	interests VARCHAR(100),
	seeking VARCHAR(100)
);*/

--DROP TABLE my_contacts;

/*CREATE TABLE my_contacts
(
	last_name VARCHAR(30),
	first_name VARCHAR(20),
	email VARCHAR(50),
	gender CHAR(1),
	birthday DATE,
	profession VARCHAR(50),
	location VARCHAR(50),
	status VARCHAR(20),
	interests VARCHAR(100),
	seeking VARCHAR(100)
);*/

/*INSERT INTO my_contacts
( last_name,first_name,email,gender,birthday,profession,location,status,interests,seeking)
VALUES
('Anderson','Jillian','jill_anderson@breakneckpizza.com','F','1980-09-05','TEchnical Writer',
'Palo Alto ,CA', 'Single','Kayaking, Reptiles','Relationship,Friends');*/

/*INSERT INTO my_contacts
( first_name,email,profession,location)
VALUES
('Pat','Patpost@breakneckpizza.com','Postal Worker','Princeton ,NJ');*/

/*INSERT INTO my_contacts
VALUES
('Funyon','Steven','steve@onionflavoredrings.com','M','1970-04-01','Punk','Grover''s Mill,NJ',
'Single','Smashing the state','compatriots, guitar players');*/

/*ALTER TABLE my_contacts
ADD contact_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY;*/

/*ALTER TABLE my_contacts
ADD state VARCHAR(2) default NULL; */
/*ALTER TABLE my_contacts
ADD city VARCHAR(50) default NULL;*/

/*UPDATE my_contacts
SET state = RIGHT(location, 2);*/
/*UPDATE my_contacts
SET city = SUBSTRING(location, 1, (SELECT CHARINDEX(',',location)-1)) FROM my_contacts*/

/*ALTER TABLE my_contacts
DROP COLUMN location;*/

SELECT * FROM my_contacts;