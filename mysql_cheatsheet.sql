-- MySQL Cheatsheet
-- Arquivo com comandos essenciais para consulta rápida

-- 1. Comandos Básicos
-- Conectar ao MySQL
-- mysql -u usuario -p

-- Mostrar bancos de dados
SHOW DATABASES;

-- Criar banco de dados
CREATE DATABASE nome_do_banco;

-- Usar banco de dados
USE nome_do_banco;

-- Deletar banco de dados
DROP DATABASE nome_do_banco;

-- 2. Operações com Tabelas
-- Mostrar todas as tabelas
SHOW TABLES;

-- Criar uma nova tabela
CREATE TABLE exemplo_tabela (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    idade INT
);

-- Exibir estrutura da tabela
DESCRIBE exemplo_tabela;

-- Adicionar coluna
ALTER TABLE exemplo_tabela ADD email VARCHAR(100);

-- Remover coluna
ALTER TABLE exemplo_tabela DROP COLUMN email;

-- 3. Manipulação de Dados
-- Inserir dados
INSERT INTO exemplo_tabela (nome, idade) VALUES ('Ana', 25);

-- Consultar dados
SELECT * FROM exemplo_tabela;

-- Atualizar dados
UPDATE exemplo_tabela SET idade = 26 WHERE nome = 'Ana';

-- Deletar dados
DELETE FROM exemplo_tabela WHERE nome = 'Ana';

-- 4. Consultas Avançadas
-- Ordenar resultados
SELECT * FROM exemplo_tabela ORDER BY idade ASC;

-- Limitar o número de resultados
SELECT * FROM exemplo_tabela LIMIT 5;

-- 5. Funções de Agregação
-- Contar registros
SELECT COUNT(*) FROM exemplo_tabela;

-- Calcular média
SELECT AVG(idade) FROM exemplo_tabela;

-- Encontrar valor máximo
SELECT MAX(idade) FROM exemplo_tabela;

-- 6. Junções (JOINS)
-- Exemplo de Inner Join
-- SELECT * FROM tabela1 INNER JOIN tabela2 ON tabela1.coluna = tabela2.coluna;

-- 7. Tópicos Avançados
-- Criar índice
CREATE INDEX idx_nome ON exemplo_tabela (nome);

-- Exemplo de Transação
START TRANSACTION;
INSERT INTO exemplo_tabela (nome, idade) VALUES ('Carlos', 30);
COMMIT;
