USE SM_04_BRENDA_GH

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

/*ALTER TABLE  my_contacts
ADD interest3 VARCHAR(50);*/
/*UPDATE my_contacts
SET interest1 = SUBSTRING(interests, 1, (SELECT CHARINDEX(',',interests)-1)) FROM my_contacts;*/
/*UPDATE my_contacts 
SET interests = REPLACE(interests, SUBSTRING(interests, 1, (SELECT CHARINDEX(',',interests))),'') FROM my_contacts;*/
/*ALTER TABLE my_contacts
DROP COLUMN interests;*/

/*ALTER TABLE  my_contacts
ADD seeking1 VARCHAR(50);*/
/*UPDATE my_contacts
SET seeking1 = SUBSTRING(seeking, 1, (SELECT CHARINDEX(',',seeking)-1)) FROM my_contacts;*/
/*UPDATE my_contacts 
SET seeking = REPLACE(seeking, SUBSTRING(seeking, 1, (SELECT CHARINDEX(',',seeking))),'') FROM my_contacts;*/

      --------------------------------------------------------- New tables ---------------------------------------------------------

/*CREATE TABLE interest(
	int_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	interest VARCHAR(50) NOT NULL
);
CREATE TABLE seeking(
	seeking_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	seeking VARCHAR(50) NOT NULL
);
CREATE TABLE profession(
	prof_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	profession VARCHAR(50) NOT NULL
);
CREATE TABLE status(
	status_id INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	status VARCHAR(50) NOT NULL
);*/

/*INSERT INTO interest (interest)
	SELECT interest3 FROM my_contacts
	WHERE interest3 IS NOT NULL
	GROUP BY interest3;*/
/*INSERT INTO profession (profession)
	SELECT profession FROM my_contacts
	GROUP BY profession
	ORDER BY profession;*/
/*INSERT INTO status (status)
	SELECT status FROM my_contacts
	GROUP BY status
	ORDER BY status;*/
/*INSERT INTO seeking (seeking)
	SELECT seeking1 FROM my_contacts
	WHERE seeking1 IS NOT NULL
	GROUP BY seeking1
	ORDER BY seeking1;*/

/*ALTER TABLE my_contacts
DROP COLUMN profession, status, seeking, seeking1, interest1, interest2, interest3;*/

/*ALTER TABLE my_contacts
ADD prof_id INT FOREIGN KEY REFERENCES profession (prof_id);
ALTER TABLE my_contacts
ADD status_id INT FOREIGN KEY REFERENCES status (status_id);
UPDATE my_contacts
SET prof_id = 6, status_id = 3 
WHERE contact_id = 11;*/

/*CREATE TABLE contact_interest(
	contact_id INT NOT NULL FOREIGN KEY REFERENCES my_contacts (contact_id),
	int_id  INT NOT NULL FOREIGN KEY REFERENCES interest (int_id)
);
CREATE TABLE contact_seeking(
	contact_id INT NOT NULL FOREIGN KEY REFERENCES my_contacts (contact_id),
	seeking_id  INT NOT NULL FOREIGN KEY REFERENCES seeking (seeking_id)
);*/

/*INSERT INTO contact_interest VALUES (1,5),(1,14),(2,9),(3,10),(4,8),(4,4),(4,18),(5,4),
	(5,13),(6,7),(7,2),(7,16),(8,3),(9,1),(9,19),(10,7),(10,11),(11,6),(11,15);*
INSERT INTO contact_seeking VALUES (1,11),(1,2),(2,10),(2,3),(3,7),(4,6),(5,4),(6,5),
	(7,2),(8,1),(9,4),(10,2),(11,5)*/

/*SELECT mc.contact_id, mc.first_name, mc.last_name, p.profession 
FROM my_contacts AS mc
INNER JOIN 
profession AS p
ON mc.prof_id = p.prof_id;*/ 

SELECT mc.first_name firstname, mc.phone phone, s.status status
FROM my_contacts mc INNER JOIN status s
ON mc.status_id = s.status_id
WHERE s.status = (SELECT TOP 1 s.status COUNT(s.status) AS mostOften FROM s 
					GROUP BY s.status ORDER BY mostOften DESC);