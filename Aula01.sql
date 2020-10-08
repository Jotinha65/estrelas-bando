CREATE DATABASE BANCO;

USE BANCO;

CREATE TABLE cidade
( nome VARCHAR(100),
cep VARCHAR(11) NOT NULL PRIMARY KEY,
numero_habitantes FLOAT,
capital BOOLEAN,
estado VARCHAR(2),
renda_per_capta DECIMAL(10,2),
data_fundacao DATE
);

INSERT INTO cidade (
nome,
cep,
numero_habitantes,
capital,
estado,
renda_per_capta,
data_fundacao)VALUES 
('São Paulo', '01311-000',  12.80000, TRUE, 'SP', 1.200, '1554-01-25'),
('Lomdrina',  '86010-345',   485.000, FALSE, 'PR', 1.200, '1822-09-7'),
('Rio de Janeiro', '20040-001', 6.320000, TRUE, 'RJ', 1.200, '1556-02-1'),
('Uberlândia', '38400-128', 584.102,  FALSE,'MG', 1.200, '1888-08-31');

SELECT * FROM cidade;

DELETE FROM cidade
WHERE cep = '86010-345';

SELECT * FROM cidade;

UPDATE cidade
SET numero_habitantes = numero_habitantes + (numero_habitantes * 0.10)
WHERE cep = '01311-000';

SELECT * FROM cidade;

CREATE TABLE estado(
nome VARCHAR(100),
sigla VARCHAR(2) NOT NULL PRIMARY KEY ); 

INSERT INTO estado (
nome,
sigla ) VALUES
('São Paulo', 'SP'),
('Londrina', 'PR'),
('Rio de Janeiro','RJ'),
('Uberlândia', 'MG');

SELECT * FROM ESTADO;

SELECT A.NOME, B.SIGLA FROM
CIDADE A
INNER JOIN ESTADO B
ON A.ESTADO = B.SIGLA;

describe cidade;

ALTER TABLE cidade
ADD FOREIGN KEY (estado)
REFERENCES estado(sigla);

ALTER TABLE estado ADD regiao VARCHAR(100);

DESCRIBE estado;

DELETE FROM estado WHERE sigla = 'SP';