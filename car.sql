--USE SM_04_BRENDA_GH;

/*CREATE TABLE  hooptie  (
   color  varchar(20) default NULL,
   year  varchar(4) default NULL,
   make  varchar(20) default NULL,
   mo  varchar(20) default NULL,
   howmuch  float(10) default NULL
);

INSERT INTO  hooptie   VALUES ('silver','1998','Porsche','Boxter',17992.539);
INSERT INTO  hooptie   VALUES (NULL,'2000','Jaguar','XJ',15995.000);
INSERT INTO  hooptie   VALUES ('red','2002','Cadillac','Escalade',40215.898);*/

--ALTER TABLE hooptie
--ADD car_id INT IDENTITY(1,1) not NULL PRIMARY KEY
--ADD VIN VARCHAR(20);

--SP_RENAME 'hooptie.mo','model', 'COLUMN';

--SP_RENAME 'hooptie.howmuch','price', 'COLUMN';

--SP_RENAME 'hooptie', 'car_table';

SELECT car_id,VIN,make, model, color, year, price FROM car_table;