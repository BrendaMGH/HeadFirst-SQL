--USE SM_04_BRENDA_GH;

/*CREATE TABLE easy_drinks (
  drink_name varchar(16) NOT NULL ,
  main  varchar(20) NOT NULL,
  amount1 decimal(3,1) NOT NULL,
  second varchar(20) NOT NULL,
  amount2 decimal(4,2) NOT NULL,
  directions varchar(250) NOT NULL
);

INSERT INTO easy_drinks (drink_name, main , amount1 , second , amount2 , directions ) VALUES ('Kiss on the Lips',
'cherry juice',2.0,'apricot nectar',7.00,'serve over ice with straw');
INSERT INTO easy_drinks (drink_name, main , amount1 , second , amount2 , directions ) VALUES ('Hot Gold',
'peach nectar',3.0,'orange juice',6.00,'pour hot orange juice in mug and add peach nectar');
INSERT INTO easy_drinks (drink_name, main , amount1 , second , amount2 , directions ) VALUES ('Lone Tree','soda',
1.5,'cherry juice',0.75,'stir with ice, strain into cocktail glass');
INSERT INTO easy_drinks (drink_name, main , amount1 , second , amount2 , directions ) VALUES ('Greyhound','soda',
1.5,'grapefruit juice',5.00,'serve over ice, stir well');
INSERT INTO easy_drinks (drink_name, main , amount1 , second , amount2 , directions ) VALUES ('Indian Summer',
'apple juice',2.0,'hot tea',6.00,'add juice to mug and top off with hot tea');
INSERT INTO easy_drinks (drink_name, main , amount1 , second , amount2 , directions ) VALUES ('Bull Frog',
'iced tea',1.5,'lemonade',5.00,'serve over ice with lime slice');
INSERT INTO easy_drinks (drink_name, main , amount1 , second , amount2 , directions ) VALUES ('Soda and It','soda',
2.0,'grape juice',1.00,'shake in cocktail glass, no ice');
INSERT INTO easy_drinks (drink_name, main , amount1 , second , amount2 , directions ) VALUES ('Blackthorn',
'tonic water',1.5,'pineapple juice',1.00,'stir with ice, strain into cocktail glass with lemon twist');
INSERT INTO easy_drinks (drink_name, main , amount1 , second , amount2 , directions ) VALUES ('Blue Moon','soda',
1.5,'blueberry juice',0.75,'stir with ice, strain into cocktail glass with lemon twist');
INSERT INTO easy_drinks (drink_name, main , amount1 , second , amount2 , directions ) VALUES ('Oh My Gosh',
'peach nectar',1.0,'pineapple juice',1.00,'stir with ice, strain into shot glass');
INSERT INTO easy_drinks (drink_name, main , amount1 , second , amount2 , directions ) VALUES ('Lime Fizz','Sprite',
1.5,'lime juice',0.75,'stir with ice, strain into cocktail glass');
*/

/*SELECT drink_name, main, second FROM dbo.easy_drinks
WHERE main = 'soda';*/

/*CREATE TABLE  drink_info  (
   drink_name  varchar(16) NOT NULL,
   cost  decimal(4,2) NOT NULL,
   carbs  decimal(4,2) NOT NULL,
   color  varchar(20) NOT NULL,
   ice  char(1) NOT NULL,
   calories  int NOT NULL
);

INSERT INTO drink_info VALUES ('Blackthorn', 3, 8.4, 'yellow', 'Y', 33); 
INSERT INTO drink_info VALUES ('Blue Moon', 2.5, 3.2, 'blue', 'Y', 12); 
INSERT INTO drink_info VALUES ('Oh My Gosh', 3.5, 8.6, 'orange', 'Y', 35); 
INSERT INTO drink_info VALUES ('Lime Fizz', 2.5, 5.4, 'green', 'Y', 24); 
INSERT INTO drink_info VALUES ('Kiss on the Lips', 5.5, 42.5, 'purple', 'Y', 171); 
INSERT INTO drink_info VALUES ('Hot Gold', 3.2, 32.1, 'orange', 'N', 135); 
INSERT INTO drink_info VALUES ('Lone Tree', 3.6, 4.2, 'red', 'Y', 17); 
INSERT INTO drink_info VALUES ('Greyhound', 4, 14, 'yellow', 'Y', 50); 
INSERT INTO drink_info VALUES ('Indian Summer', 2.8, 7.2, 'brown', 'N', 30); 
INSERT INTO drink_info VALUES ('Bull Frog', 2.6, 21.5, 'tan', 'Y', 80); 
INSERT INTO drink_info VALUES ('Soda and It', 3.8, 4.7, 'red', 'N', 19);*/ 

SELECT color, ice FROM drink_info 
WHERE drink_name = 'Greyhound' OR drink_name = 'Kiss on the Lips';