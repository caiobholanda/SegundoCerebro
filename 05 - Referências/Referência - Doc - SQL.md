---
tipo: referencia
fonte: doc
autor: PostgreSQL Global Development Group
url: https://www.postgresql.org/docs/current/
criado: 2026-05-11
atualizado: 2026-05-11
tags: [referencia, dev, sql, banco-de-dados, programacao]
---

# Referência - Doc - SQL (PostgreSQL)

## 🔗 Fonte
- **PostgreSQL Docs**: https://www.postgresql.org/docs/current/
- **Window Functions**: https://www.postgresql.org/docs/current/tutorial-window.html
- **SQL Syntax**: https://www.postgresql.org/docs/current/sql-commands.html

> A maioria dos exemplos é compatível com MySQL/SQLite, exceto onde marcado.

---

## 1. DDL — Definição de Estrutura

```sql
-- Criar tabela com tipos e constraints
CREATE TABLE usuarios (
  id         SERIAL PRIMARY KEY,          -- auto-incremento
  email      VARCHAR(255) UNIQUE NOT NULL,
  nome       TEXT NOT NULL,
  idade      INTEGER CHECK (idade >= 0),
  score      DECIMAL(10, 2) DEFAULT 0.00,
  ativo      BOOLEAN DEFAULT TRUE,
  criado_em  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Chave estrangeira
CREATE TABLE pedidos (
  id         SERIAL PRIMARY KEY,
  usuario_id INTEGER NOT NULL REFERENCES usuarios(id) ON DELETE CASCADE,
  total      DECIMAL(10, 2) NOT NULL,
  criado_em  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Alterar tabela
ALTER TABLE usuarios ADD COLUMN telefone VARCHAR(20);
ALTER TABLE usuarios DROP COLUMN telefone;
ALTER TABLE usuarios ALTER COLUMN nome SET NOT NULL;
ALTER TABLE usuarios RENAME COLUMN nome TO nome_completo;
ALTER TABLE usuarios ADD CONSTRAINT chk_idade CHECK (idade BETWEEN 0 AND 150);

-- Remover tabela
DROP TABLE IF EXISTS pedidos;
DROP TABLE IF EXISTS pedidos CASCADE; -- remove dependentes também

-- Índices
CREATE INDEX idx_usuarios_email ON usuarios(email);
CREATE UNIQUE INDEX idx_usuarios_email_unico ON usuarios(email);
CREATE INDEX idx_pedidos_usuario ON pedidos(usuario_id);
CREATE INDEX idx_pedidos_total_desc ON pedidos(total DESC); -- índice com direção
```

**Tipos comuns:**
| Tipo | Uso |
|---|---|
| `SERIAL` / `BIGSERIAL` | Auto-incremento (PostgreSQL) |
| `INTEGER` / `BIGINT` | Inteiros |
| `DECIMAL(p,s)` / `NUMERIC(p,s)` | Decimal exato (dinheiro) |
| `REAL` / `DOUBLE PRECISION` | Ponto flutuante |
| `VARCHAR(n)` | String tamanho variável com limite |
| `TEXT` | String sem limite |
| `BOOLEAN` | true/false |
| `DATE` | Apenas data |
| `TIMESTAMP` | Data e hora |
| `TIMESTAMPTZ` | Data e hora com fuso (recomendado) |
| `JSON` / `JSONB` | JSON (JSONB = indexável, mais rápido) |
| `UUID` | Identificador único universal |

---

## 2. DML — Manipulação de Dados

```sql
-- INSERT
INSERT INTO usuarios (email, nome, idade)
VALUES ('alice@exemplo.com', 'Alice', 30);

-- INSERT múltiplas linhas
INSERT INTO usuarios (email, nome, idade) VALUES
  ('bob@exemplo.com', 'Bob', 25),
  ('carol@exemplo.com', 'Carol', 35);

-- INSERT ou UPDATE (upsert)
INSERT INTO usuarios (email, nome)
VALUES ('alice@exemplo.com', 'Alice Atualizada')
ON CONFLICT (email) DO UPDATE SET nome = EXCLUDED.nome;

-- Retornar dados inseridos
INSERT INTO usuarios (email, nome) VALUES ('x@y.com', 'X')
RETURNING id, criado_em;

-- UPDATE
UPDATE usuarios
SET idade = 31, ativo = FALSE
WHERE email = 'alice@exemplo.com';

-- UPDATE com RETURNING
UPDATE usuarios SET score = score + 10 WHERE ativo = TRUE
RETURNING id, nome, score;

-- DELETE
DELETE FROM usuarios WHERE ativo = FALSE;

-- DELETE com subquery
DELETE FROM pedidos
WHERE usuario_id IN (SELECT id FROM usuarios WHERE ativo = FALSE);

-- SELECT básico
SELECT id, nome, email FROM usuarios WHERE idade > 25 ORDER BY nome ASC;
SELECT * FROM usuarios;
SELECT DISTINCT departamento FROM funcionarios;
```

---

## 3. Operadores WHERE

```sql
-- Comparação
WHERE idade = 30
WHERE idade <> 30   -- diferente
WHERE idade != 30   -- diferente (alternativa)
WHERE idade > 25
WHERE idade < 40
WHERE idade >= 18
WHERE idade <= 65

-- BETWEEN (inclusivo)
WHERE idade BETWEEN 18 AND 30

-- IN / NOT IN
WHERE idade IN (25, 30, 35)
WHERE status NOT IN ('banido', 'suspenso')

-- LIKE / ILIKE
WHERE email LIKE '%@gmail.com'       -- termina com
WHERE nome LIKE 'A%'                 -- começa com A
WHERE nome LIKE '%Silva%'            -- contém
WHERE nome LIKE 'A_ice'              -- A + qualquer char + ice
WHERE nome ILIKE 'alice%'            -- case-insensitive (PostgreSQL)

-- NULL
WHERE telefone IS NULL
WHERE telefone IS NOT NULL

-- Lógicos
WHERE idade > 18 AND ativo = TRUE
WHERE idade < 18 OR idade > 65
WHERE NOT ativo
WHERE (departamento = 'TI' OR departamento = 'Eng') AND ativo = TRUE
```

---

## 4. JOINs

```sql
-- INNER JOIN — apenas linhas que batem nos dois lados
SELECT u.nome, p.total
FROM usuarios u
INNER JOIN pedidos p ON u.id = p.usuario_id;

-- LEFT JOIN — todas as linhas da esquerda, NULLs onde não há correspondência
SELECT u.nome, p.total
FROM usuarios u
LEFT JOIN pedidos p ON u.id = p.usuario_id;
-- Usuários sem pedido aparecem com p.total = NULL

-- RIGHT JOIN — todas da direita, NULLs onde não há correspondência
SELECT u.nome, p.total
FROM usuarios u
RIGHT JOIN pedidos p ON u.id = p.usuario_id;

-- FULL OUTER JOIN — todas as linhas dos dois lados
SELECT u.nome, p.total
FROM usuarios u
FULL OUTER JOIN pedidos p ON u.id = p.usuario_id;

-- CROSS JOIN — produto cartesiano
SELECT u.nome, prod.nome FROM usuarios u CROSS JOIN produtos prod;

-- Self join (ex.: hierarquia de funcionários)
SELECT emp.nome AS funcionario, mgr.nome AS gerente
FROM funcionarios emp
JOIN funcionarios mgr ON emp.gerente_id = mgr.id;

-- JOIN múltiplo
SELECT u.nome, p.total, prod.nome AS produto
FROM usuarios u
JOIN pedidos p ON u.id = p.usuario_id
JOIN itens_pedido ip ON p.id = ip.pedido_id
JOIN produtos prod ON ip.produto_id = prod.id;
```

---

## 5. Funções de Agregação

```sql
SELECT COUNT(*) FROM usuarios;
SELECT COUNT(DISTINCT idade) FROM usuarios;
SELECT SUM(total) FROM pedidos;
SELECT AVG(idade) FROM usuarios;
SELECT MIN(idade), MAX(idade) FROM usuarios;
SELECT ROUND(AVG(total), 2) AS media_pedido FROM pedidos;
```

---

## 6. GROUP BY, HAVING, ORDER BY, LIMIT/OFFSET

```sql
-- GROUP BY
SELECT departamento, COUNT(*) AS total, AVG(salario) AS media_salario
FROM funcionarios
GROUP BY departamento;

-- HAVING — filtra após o agrupamento (WHERE filtra antes)
SELECT departamento, AVG(salario) AS media
FROM funcionarios
GROUP BY departamento
HAVING AVG(salario) > 5000;

-- ORDER BY (múltiplas colunas)
SELECT * FROM usuarios ORDER BY idade DESC, nome ASC;

-- LIMIT e OFFSET (paginação)
SELECT * FROM usuarios ORDER BY id
LIMIT 10 OFFSET 0;   -- página 1
LIMIT 10 OFFSET 10;  -- página 2
LIMIT 10 OFFSET 20;  -- página 3

-- Dica de paginação: calcular offset
-- OFFSET = (pagina - 1) * itens_por_pagina
```

---

## 7. Subqueries e CTEs

```sql
-- Subquery em WHERE
SELECT nome FROM usuarios
WHERE id IN (SELECT usuario_id FROM pedidos WHERE total > 100);

-- Subquery em FROM (tabela derivada)
SELECT dept, media_sal
FROM (
  SELECT departamento AS dept, AVG(salario) AS media_sal
  FROM funcionarios
  GROUP BY departamento
) AS stats_dept
WHERE media_sal > 6000;

-- Subquery correlacionada
SELECT nome, salario
FROM funcionarios f
WHERE salario > (
  SELECT AVG(salario) FROM funcionarios WHERE departamento = f.departamento
);

-- CTE (Common Table Expression) — WITH
WITH ganhadores_altos AS (
  SELECT * FROM funcionarios WHERE salario > 8000
)
SELECT departamento, COUNT(*) FROM ganhadores_altos GROUP BY departamento;

-- CTE múltipla
WITH
  ativos AS (SELECT * FROM usuarios WHERE ativo = TRUE),
  pedidos_recentes AS (SELECT * FROM pedidos WHERE criado_em > NOW() - INTERVAL '30 days')
SELECT a.nome, COUNT(pr.id) AS pedidos_mes
FROM ativos a
LEFT JOIN pedidos_recentes pr ON a.id = pr.usuario_id
GROUP BY a.nome;

-- CTE recursiva (hierarquia)
WITH RECURSIVE subordinados AS (
  SELECT id, nome, gerente_id FROM funcionarios WHERE id = 1  -- âncora
  UNION ALL
  SELECT f.id, f.nome, f.gerente_id
  FROM funcionarios f
  JOIN subordinados s ON f.gerente_id = s.id              -- recursivo
)
SELECT * FROM subordinados;
```

---

## 8. Window Functions

```sql
-- ROW_NUMBER — número único por partição
SELECT nome, departamento, salario,
       ROW_NUMBER() OVER (PARTITION BY departamento ORDER BY salario DESC) AS pos
FROM funcionarios;

-- RANK — igual para empates, pula números (1, 1, 3...)
SELECT nome, salario,
       RANK() OVER (ORDER BY salario DESC) AS ranking
FROM funcionarios;

-- DENSE_RANK — igual para empates, sem pular (1, 1, 2...)
SELECT nome, salario,
       DENSE_RANK() OVER (ORDER BY salario DESC) AS ranking
FROM funcionarios;

-- LAG — valor de uma linha anterior
SELECT nome, salario, data_contrato,
       LAG(salario, 1) OVER (ORDER BY data_contrato) AS salario_anterior,
       LAG(salario, 2, 0) OVER (ORDER BY data_contrato) AS dois_antes
FROM funcionarios;

-- LEAD — valor de uma linha seguinte
SELECT nome, salario,
       LEAD(salario, 1) OVER (ORDER BY data_contrato) AS proximo_salario
FROM funcionarios;

-- SUM como window function — total acumulado
SELECT nome, salario,
       SUM(salario) OVER (ORDER BY data_contrato
         ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS total_acumulado
FROM funcionarios;

-- Janela nomeada (reutilizável)
SELECT salario,
       SUM(salario) OVER w,
       AVG(salario) OVER w
FROM funcionarios
WINDOW w AS (PARTITION BY departamento ORDER BY salario DESC);
```

---

## 9. Transações

```sql
-- Transação básica
BEGIN;
  UPDATE contas SET saldo = saldo - 500 WHERE id = 1;
  UPDATE contas SET saldo = saldo + 500 WHERE id = 2;
COMMIT;

-- Rollback em caso de erro
BEGIN;
  DELETE FROM pedidos WHERE usuario_id = 99;
  -- Algo deu errado...
ROLLBACK;

-- Savepoint
BEGIN;
  INSERT INTO logs (msg) VALUES ('passo 1');
  SAVEPOINT sp1;
  INSERT INTO logs (msg) VALUES ('passo 2');
  ROLLBACK TO sp1;   -- desfaz passo 2, mantém passo 1
COMMIT;

-- Nível de isolamento
BEGIN ISOLATION LEVEL READ COMMITTED;
BEGIN ISOLATION LEVEL SERIALIZABLE;
```

---

## 10. Constraints — Referência Rápida

```sql
CREATE TABLE produtos (
  id           SERIAL PRIMARY KEY,                        -- PRIMARY KEY (UNIQUE + NOT NULL)
  sku          VARCHAR(50) UNIQUE NOT NULL,               -- UNIQUE + NOT NULL
  nome         TEXT NOT NULL,                             -- NOT NULL
  preco        DECIMAL(10,2) NOT NULL DEFAULT 0.00,       -- DEFAULT
  estoque      INTEGER CHECK (estoque >= 0),              -- CHECK
  categoria_id INTEGER REFERENCES categorias(id)          -- FOREIGN KEY
    ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT sku_valido CHECK (LENGTH(sku) >= 3)          -- constraint nomeada
);
```

**ON DELETE / ON UPDATE:**
- `CASCADE` — propaga a operação
- `SET NULL` — define como NULL
- `SET DEFAULT` — define como valor padrão
- `RESTRICT` — impede a operação se há dependentes
- `NO ACTION` — similar ao RESTRICT (padrão)

---

## 11. Consultas Úteis

```sql
-- Contar por status com CASE
SELECT
  COUNT(CASE WHEN ativo = TRUE THEN 1 END) AS ativos,
  COUNT(CASE WHEN ativo = FALSE THEN 1 END) AS inativos,
  COUNT(*) AS total
FROM usuarios;

-- Busca por similaridade
SELECT * FROM produtos WHERE nome ILIKE '%celular%';

-- Últimos N registros
SELECT * FROM pedidos ORDER BY criado_em DESC LIMIT 10;

-- Encontrar duplicatas
SELECT email, COUNT(*) AS ocorrencias
FROM usuarios
GROUP BY email
HAVING COUNT(*) > 1;

-- Verificar existência com EXISTS
SELECT * FROM usuarios u
WHERE EXISTS (SELECT 1 FROM pedidos p WHERE p.usuario_id = u.id);

-- COALESCE — valor padrão para NULL
SELECT nome, COALESCE(telefone, 'não informado') AS contato FROM usuarios;

-- NULLIF — retorna NULL se igual ao segundo argumento
SELECT NULLIF(0, 0); -- NULL
SELECT NULLIF(1, 0); -- 1

-- GREATEST / LEAST
SELECT GREATEST(10, 20, 5); -- 20
SELECT LEAST(10, 20, 5);    -- 5

-- Formatação de data/hora (PostgreSQL)
SELECT TO_CHAR(criado_em, 'DD/MM/YYYY HH24:MI') FROM pedidos;
SELECT NOW(), CURRENT_DATE, CURRENT_TIME;
SELECT criado_em + INTERVAL '7 days' FROM pedidos;
SELECT EXTRACT(YEAR FROM criado_em) FROM pedidos;
SELECT DATE_TRUNC('month', criado_em) FROM pedidos; -- trunca para início do mês
```

---

## 12. Índices — Quando Usar

```sql
-- Índice simples (mais comum)
CREATE INDEX idx_email ON usuarios(email);

-- Índice único
CREATE UNIQUE INDEX idx_email_unico ON usuarios(email);

-- Índice composto (ordem importa — use colunas mais seletivas primeiro)
CREATE INDEX idx_dept_sal ON funcionarios(departamento, salario);

-- Índice parcial (só indexa subconjunto)
CREATE INDEX idx_pedidos_ativos ON pedidos(usuario_id) WHERE status = 'ativo';

-- Índice GIN para busca full-text (PostgreSQL)
CREATE INDEX idx_busca ON artigos USING GIN(to_tsvector('portuguese', conteudo));

-- Verificar uso de índices
EXPLAIN ANALYZE SELECT * FROM usuarios WHERE email = 'teste@exemplo.com';
```

## 🔗 Conecta com
- [[Referência - Doc - Python]]
- [[Referência - Doc - Java]]
- [[Referência - Doc - Node.js]]
