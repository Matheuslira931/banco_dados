# banco_dados_1_atv1

### Frist step (creat DB and tables)

-- Create the database
CREATE DATABASE db_vendas;

-- Use the database
USE db_vendas;

-- Create tbproduto table
CREATE TABLE tbproduto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade INT NOT NULL
);

-- Create tbcliente table
CREATE TABLE tbcliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

-- Insert data into tbproduto
INSERT INTO tbproduto (nome, preco, quantidade) VALUES ('Produto A', 10.50, 100);
INSERT INTO tbproduto (nome, preco, quantidade) VALUES ('Produto B', 20.00, 200);
INSERT INTO tbproduto (nome, preco, quantidade) VALUES ('Produto C', 30.75, 150);

-- Insert data into tbcliente
INSERT INTO tbcliente (nome, email, telefone) VALUES ('Cliente A', 'clienteA@example.com', '123456789');
INSERT INTO tbcliente (nome, email, telefone) VALUES ('Cliente B', 'clienteB@example.com', '987654321');
INSERT INTO tbcliente (nome, email, telefone) VALUES ('Cliente C', 'clienteC@example.com', '456789123');

### Second step (update from tbcliente)

-- Update data in tbcliente
UPDATE tbcliente
SET nome = 'Cliente A Atualizado', email = 'clienteA_atualizado@example.com', telefone = '111111111'
WHERE id = 1;

UPDATE tbcliente
SET nome = 'Cliente B Atualizado', email = 'clienteB_atualizado@example.com', telefone = '222222222'
WHERE id = 2;

UPDATE tbcliente
SET nome = 'Cliente C Atualizado', email = 'clienteC_atualizado@example.com', telefone = '333333333'
WHERE id = 3;


### Third step (Delete table tbproduto)
-- Delete data from tbproduto
DELETE FROM tbproduto
WHERE id = 1;


### fourth step (select all tbcliente)
-- Select all records from tbcliente
SELECT * FROM tbcliente;


### fifth step (drop tables and database)
-- Drop tbproduto table
DROP TABLE IF EXISTS tbproduto;

-- Drop tbcliente table
DROP TABLE IF EXISTS tbcliente;

-- Drop the database
DROP DATABASE IF EXISTS db_vendas;
