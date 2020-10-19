USE SM_04_BRENDA_GH;

/*CREATE TABLE  movie_table  (
   movie_id  int IDENTITY(83,1) NOT NULL,
   title  varchar(50) NOT NULL,
   rating  varchar(5) NOT NULL,
   category  varchar(10) NOT NULL,
   purchased  date NOT NULL,
  PRIMARY KEY  ( movie_id )
);

INSERT INTO  movie_table  (title, rating, category, purchased) VALUES ('Big Advenure','G','family','2002-03-06');
INSERT INTO  movie_table  (title, rating, category, purchased) VALUES ('Shiny Things, The','PG','drama','2002-03-06');
INSERT INTO  movie_table  (title, rating, category, purchased) VALUES ('End of the Line','R','misc','2001-02-05');
INSERT INTO  movie_table  (title, rating, category, purchased) VALUES ('A Rat named Darcy','G','family','2003-04-19');
INSERT INTO  movie_table  (title, rating, category, purchased) VALUES ('Head First Rules','R','action','2003-04-19');
INSERT INTO  movie_table  (title, rating, category, purchased) VALUES ('Mad Clowns','R','horror','1999-11-20');
INSERT INTO  movie_table  (title, rating, category, purchased) VALUES ('Greg: The Untold Story','PG','action','2001-02-05');
INSERT INTO  movie_table  (title, rating, category, purchased) VALUES ('Potentially Habitable Planet','PG','scifi','2001-02-05');
INSERT INTO  movie_table  (title, rating, category, purchased) VALUES ('Weird Things from Space','PG','scifi','2003-04-19');
INSERT INTO  movie_table  (title, rating, category, purchased) VALUES ('Shark Bait','G','misc','1999-11-20');
INSERT INTO  movie_table  (title, rating, category, purchased) VALUES ('Take it Back','R','comedy','2001-02-05');*/

/*SELECT title, category,purchased FROM movie_table
WHERE category = 'Family'
ORDER BY title;*/

SELECT title, category,purchased FROM movie_table
ORDER BY category, purchased DESC, title;

          ---------------------------------------------------------- exercise ---------------------------------------------------------- 

/*CREATE TABLE exercise
(
	test_chars CHAR(1)
);

INSERT INTO exercise 
VALUES ('A'), ('B'),('C'), ('D'),('a'), ('b'), ('c'), ('d'), ('!'), ('@'),('#'), ('$'),('%'), ('^'), ('&'), ('*'),
('('), (')'),('-'), ('_'),('+'), ('='), ('['), (']'), ('{'), ('}'),(';'), (':'),(''''), ('|'), ('`'), ('~'),
(','), ('.'),('<'), ('>'),('/'), ('?'), (' '), ('1'), ('4'), ('7'), ('2'),('5'),('8'), ('0'), ('6'), (NULL);*/

/*SELECT * FROM exercise
ORDER BY test_chars;*/