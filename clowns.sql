--USE SM_04_BRENDA_GH;

/*CREATE TABLE clown_info (
 name varchar(50) default NULL,
 last_seen varchar(50) default NULL,
 appearance varchar(50) default NULL,
 activities varchar(50) default NULL
);

INSERT INTO clown_info VALUES 
('Elsie', 'Cherry Hill Senior Center', 'F, red hair, green dress, huge feet', 'balloons, little car'),
('Pickles', 'Jack Green''s party', 'M, orange hair, blue suit, huge feet','mime'),
('Snuggles' ,'Ball-Mart' ,'F, yellow shirt, baggy red pants', 'horn, umbrella'),
('Mr. Hobo' ,'Party for Eric Gray' ,'M, cigar, black hair, tiny hat','violin'),
('Clarabelle' ,'Belmont Senior Center' ,'F, pink hair, huge flower, blue dress', 'yelling, dancing'),
('Scooter', 'Oakland Hospital' ,'M, blue hair, red suit, huge nose', 'balloons'),
('Zippo' ,'Millstone Mall', 'F, orange suit, baggy pants', 'dancing'),
('Babe', 'Earls Autos' ,'F, all pink and sparkly', 'balancing, little car'),
('Bonzo' ,'','M, in drag, polka dotted dress', 'singing, dancing'),
('Sniffles' ,'Tracy''s', 'M, green and purple suit, pointy nose','');*/

--SELECT * FROM clown_info;

UPDATE clown_info 
SET appearance = 'F, yellow shirt, baggy blue pants'
WHERE name = 'Snuggles';

