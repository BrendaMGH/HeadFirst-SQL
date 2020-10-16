--USE SM_04_BRENDA_GH;

/*CREATE TABLE doughut_list
(
	doughut_name VARCHAR(10),
	doughut_type VARCHAR(10)
);*/

--DROP TABLE Doughut_list

CREATE TABLE doughut_list
(
	doughut_name VARCHAR(10) NOT NULL,
	doughut_type VARCHAR(6) NOT NULL,
	doughut_cost DEC(3,2) NOT NULL DEFAULT 1.00
);
