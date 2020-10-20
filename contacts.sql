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

/*INSERT INTO my_contacts VALUES ('Kenton','Leo','lkenton@starbuzzcoffee.com','M','1974-01-10','Manager','divorced','women','women to date','CA','San Francisco'),
('McGavin','Darrin',' captainlove@headfirsttheater.com','M','1966-01-23','Cruise Ship Captain','single','sailing, fishing, yachting','women for casual relationships','CA','San Diego'),
('Franklin','Joe','joe_franklin@leapinlimos.com','M','1977-04-28','Software Sales','married','fishing, drinking','new job','TX','Dallas'),
('Hamilton','Jamie','dontbother@starbuzzcoffee.com','F','1964-09-10','System Administrator','married','RPG','nothing','NJ','Princeton'),
('Chevrolet','Maurice','bookman4u@objectville.net','M','1962-07-01','Bookshop Owner','married','collecting books, scuba diving','friends','CA','Mountain View'),
('Kroger','Renee','poorrenee@mightygumball.net','F','1976-12-03','Unemployed','divorced','cooking','employment','CA','San Francisco'),
('Mendoza','Angelina','angelina@starbuzzcoffee.com','F','1979-08-19','UNIX Sysadmin','married','acting, dancing','new job','CA','San Francisco'),
('Murphy','Donald','padraic@tikibeanlounge.com','M','1967-01-23','Computer Programmer','committed relationsh','RPG, anime','friends','NY','New York City'),
('Spatner','John','jpoet@objectville.net','M','1963-04-18','Salesman','married','poetry, screenwriting','nothing','NY','Woodstock');*/

SELECT * FROM my_contacts;

      --------------------------------------------------------- interest ---------------------------------------------------------

/*CREATE TABLE interest(
	int_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	interest VARCHAR(50) NOT NULL,
	contact_id INT NOT NULL,
	CONSTRAINT my_contacts_contact_id_fk
	FOREIGN KEY (contact_id)
	REFERENCES my_contacts (contact_id)
);*/

SELECT * FROM interest;



