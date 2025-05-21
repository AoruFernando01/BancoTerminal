-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS portfolio_mariadb;
USE portfolio_mariadb;

-- Tabela: clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    idade INT,
    data_cadastro DATE DEFAULT CURRENT_DATE
);

-- Tabela: pedidos
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    produto VARCHAR(100),
    valor DECIMAL(10,2),
    data_pedido DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- Inserindo dados na tabela clientes
INSERT INTO clientes (nome, email, idade)
VALUES
    ('João Silva', 'joao@email.com', 30),
    ('Maria Oliveira', 'maria@email.com', 25),
    ('Carlos Lima', 'carlos@email.com', 40);

-- Inserindo dados na tabela pedidos
INSERT INTO pedidos (cliente_id, produto, valor)
VALUES
    (1, 'Notebook', 3500.00),
    (1, 'Mouse', 150.00),
    (2, 'Teclado', 200.00),
    (3, 'Monitor', 1200.00);

-- Selecionar todos os clientes
SELECT * FROM clientes;

-- Selecionar pedidos com nome do cliente (JOIN)
SELECT p.id, c.nome, p.produto, p.valor
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id;

-- Atualizar idade de um cliente
UPDATE clientes SET idade = 31 WHERE nome = 'João Silva';

-- Deletar um cliente
DELETE FROM clientes WHERE nome = 'Carlos Lima';

-- Consultar pedidos acima de R$ 1000, ordenando por valor
SELECT * FROM pedidos WHERE valor > 1000 ORDER BY valor DESC;
