create schema bd1;
use bd1;
CREATE TABLE cliente (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sexo ENUM('M', 'F') NOT NULL,
    cidade VARCHAR(100),
    estado VARCHAR(2)
);

CREATE TABLE produto (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    unidade VARCHAR(10),
    preco DECIMAL(10, 2) NOT NULL
);

CREATE TABLE vendas (
    codigo INT PRIMARY KEY AUTO_INCREMENT,
    codigo_cliente INT,
    codigo_produto INT,
    quantidade INT NOT NULL,
    preco_total DECIMAL(10, 2) NOT NULL,
    data DATE,
    hora TIME,
    FOREIGN KEY (codigo_cliente) REFERENCES cliente(codigo),
    FOREIGN KEY (codigo_produto) REFERENCES produto(codigo)
);

INSERT INTO cliente (nome, sexo, cidade, estado)
VALUES 
('Carlos Silva', 'M', 'São Paulo', 'SP'),
('Maria Oliveira', 'F', 'Rio de Janeiro', 'RJ'),
('João Pereira', 'M', 'Belo Horizonte', 'MG'),
('Ana Souza', 'F', 'Curitiba', 'PR');

INSERT INTO produto (nome, unidade, preco)
VALUES 
('Café', 'kg', 25.50),
('Açúcar', 'kg', 4.80),
('Leite', 'litro', 3.50),
('Pão', 'unidade', 1.20);

INSERT INTO vendas (codigo_cliente, codigo_produto, quantidade, preco_total, data, hora)
VALUES 
(1, 1, 2, 51.00, '2024-09-17', '10:30:00'),
(1, 2, 5, 24.00, '2024-09-17', '10:35:00'),
(2, 3, 10, 35.00, '2024-09-16', '14:15:00'),
(2, 4, 20, 24.00, '2024-09-16', '14:20:00'),
(3, 1, 1, 25.50, '2024-09-15', '09:00:00'),
(3, 4, 15, 18.00, '2024-09-15', '09:10:00'),
(4, 2, 8, 38.40, '2024-09-14', '11:45:00'),
(4, 3, 5, 17.50, '2024-09-14', '11:50:00'),
(1, 4, 30, 36.00, '2024-09-13', '16:00:00'),
(2, 1, 3, 76.50, '2024-09-13', '16:15:00');