-- TIRANDO DO MODO SEGURO
SET SQL_SAFE_UPDATES = 0;

-- APAGANDO O BANCO DE DADOS SE EXISTIR
DROP DATABASE IF EXISTS DBEXERCICIO07;

-- CRIANDO O BANCO DE DADOS
CREATE DATABASE DBEXERCICIO07;

-- CONECTANTO AO BANCO DE DADOS
USE DBEXERCICIO07;

-- 2. Crie o SCRIPT de criação do banco de dados
CREATE TABLE CARROS (
	IDCARROS INT NOT NULL AUTO_INCREMENT
, MARCA VARCHAR(45) NOT NULL
, MODELO VARCHAR(45) NOT NULL
, ANOFAB INT NOT NULL
, ANOMODEL INT NOT NULL
, PLACA VARCHAR(10) NOT NULL
, COR VARCHAR(10) NOT NULL
, PRIMARY KEY (IDCARROS)
);

-- 3. Insira pelo menos 4 registro (Insert)
INSERT INTO CARROS (MARCA, MODELO, ANOFAB, ANOMODEL, PLACA, COR) VALUES
('GOL', 'GOL 1.6 MT', 2023, 2022, 'BYT4S22', 'BRANCO'),
('RENAULT', 'SANDERO 2.0 2022', 2024, 2022, 'OTM2X22', 'PRETO'),
('HYUNDAI', 'HB20 HATCH COMFORT', 2022, 2020, 'AQG6T75', 'PRATA'),
('BYD', 'BYD DOLPHIN', 2024, 2025, 'HTA9Y32', 'PRETO');

-- 4. Liste os dados da tabela (Select)
SELECT * FROM CARROS;

-- 5. Altere 2 registro usando alguma condição que não seja a PK (Update)
UPDATE CARROS SET ANOFAB = 2025 WHERE MODELO = 'BYD DOLPHIN';

-- 6. Delete 1 registros usando alguma codição que não seja a PK (Delete)
DELETE FROM CARROS WHERE MARCA = 'GOL';
