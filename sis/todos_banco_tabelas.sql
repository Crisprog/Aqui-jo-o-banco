CREATE DATABASE BDTrigger
GO 
USE BDTrigger
GO
CREATE TABLE Aluno(
	RA int,
	Nome varchar(100), 
);

CREATE TABLE Professor(
	RA int,
	Nome varchar(100), 
);

CREATE TABLE Coodenador(
	RA int,
	Nome varchar(100), 
);


CREATE TABLE Email(
	IdEmail int,
	Destinatario varchar(200),
	Assunto varchar(200),
	Campo varchar(MAX)
);