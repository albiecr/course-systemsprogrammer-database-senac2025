-- TIRANDO O MODO SEGURO
SET SQL_SAFE_UPDATES = 0;

-- APAGANDO O BANCO DE DADOS SE EXISTIR
DROP DATABASE IF EXISTS DBEXERCICIO12;

-- CRIANDO O BANCO DE DADOS
CREATE DATABASE DBEXERCICIO12;

-- ACESSANDO O BANCO DE DADOS
USE DBEXERCICIO12;

-- CRIANDO AS TABELAS
CREATE TABLE ALUNO (
	IDALUNO INT NOT NULL AUTO_INCREMENT 
    , NOME VARCHAR(120) NOT NULL
    , DTNASC DATE NOT NULL
    , CIDADE VARCHAR(80) NOT NULL
    , PRIMARY KEY (IDALUNO)
);

CREATE TABLE MATRICULA (
	IDMATRICULA INT NOT NULL AUTO_INCREMENT
    , DTMATRICULA DATE NOT NULL
    , CURSO VARCHAR(120) NOT NULL
    , IDALUNO INT NOT NULL
    , PRIMARY KEY (IDMATRICULA)
    , FOREIGN KEY (IDALUNO) REFERENCES ALUNO(IDALUNO)
);

INSERT INTO ALUNO (NOME, DTNASC, CIDADE) VALUES
('MARIA CARVALHO', '1999-02-16', 'FLORIANOPOLIS'),
('JULIO ABREU', '2007-11-07', 'FLORIANOPOLIS'),
('ANA CLARA ARRUDA', '2005-03-30', 'FLORIANOPOLIS'),
('THIAGO SAMPAIO', '2001-12-06', 'SAO JOSE');

INSERT INTO MATRICULA ( IDALUNO, DTMATRICULA, CURSO) VALUES
(1,'2025-04-03', 'ANALISE E DESENVOLVIMENTO DE SISTEMAS'),
(2, '2025-04-02', 'GASTRONOMIA'),
(3, '2025-04-03', 'ADMINISTRACAO'),
(4, '2025-04-08', 'ESTETICA');

SELECT * FROM ALUNO;
SELECT * FROM MATRICULA;
