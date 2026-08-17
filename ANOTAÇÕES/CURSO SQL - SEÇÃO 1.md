## Conceitos fundamentais
**Tabelas**
Em tabelas, temos:
 Atributos (colunas)
 Linhas (`tuplas`, `rows`)
 ID (`primary` `key`)
 Dados (data `value`)


**Tabelas relacionais**
Possuem chaves estrangeiras
Chaves estrangeiras estão relacionadas a outras tabelas, Por que?
Para evitar redundância de dados!

EXEMPLOS:
```
USE sakila;

 SELECT actor_id, first_name
 FROM actor
 WHERE actor_id <= 100
 ORDER BY last_name; 
```

**Estrutura dos Comandos:**

- `USE`: Seleciona o banco de dados de trabalho.
    
- `SELECT`: Especifica as **colunas** a serem retornadas.
    
- `FROM`: Especifica a **tabela** de origem dos dados.
    
- `WHERE`: Filtra as **linhas** com base em uma condição.
    
- `ORDER BY`: Ordena o resultado com base na coluna informada.


## 🧮 3. Aliases (`AS`) e Operações Matemáticas

É possível realizar cálculos diretamente no `SELECT` e renomear as colunas resultantes utilizando `AS`


```
USE sakila;

SELECT
    customer_id,
    amount,
    amount - (amount * 0.10) AS discount
FROM payment
WHERE customer_id = 1;
```

**Atenção com Espaços e Caracteres Especiais:** Nomes de aliases que contêm espaços ou símbolos exigem o uso de aspas.

- ❌ **Incorreto:** `AS 10% de desconto` (retorna erro de sintaxe)
    
- ✅ **Correto:** `AS "10% de desconto"` ou `AS '10% de desconto'`



## ⚖️ 4. Operadores Comparativos e Lógicos

### Operadores de Comparação Básicos (`WHERE`)

- `WHERE district = 'Texas';` — Igual
    
- `WHERE district != 'Texas';` — Diferente
    
- `WHERE amount >= 0.99;` — Maior ou igual
    
- `WHERE amount <= 2.99;` — Menor ou igual


### Operadores Lógicos e Filtros Especiais

- **`AND` (E):** Retorna registros onde todas as condições são verdadeiras.


```
SELECT *
 FROM customer
  WHERE address_id = 10 AND customer_id = 6;
```


**`OR` (OU):** Retorna registros onde pelo menos uma condição é verdadeira.


```
SELECT * 
FROM customer
WHERE address_id = 10 OR customer_id = 8;
```


**`IN`:** Filtra registros que correspondem a qualquer valor de uma lista.

```

SELECT *
 FROM address
  WHERE district IN ('Alberta', 'Texas', 'California');
```


**`BETWEEN`:** Filtra valores dentro de um intervalo (inclusive).

```

SELECT *
 FROM payment
  WHERE amount BETWEEN 1.99 AND 3.99;
```


**`LIKE`:** Busca por padrões de texto. O caractere `%` representa qualquer sequência de caracteres.


```
SELECT * 
FROM actor 
WHERE first_name LIKE 'A%'; -(Nomes que começam com a letra A)
```


**`IS NULL`:** Checa a ausência de dados (valores nulos).

```

SELECT * 
FROM address 
WHERE address2 IS NULL;
```


**`LIMIT`:** Restringe a quantidade de registros retornados.


```
SELECT *
FROM customer
LIMIT 10;
```


**`REGEXP`:** Permite consultas avançadas usando Expressões Regulares (Regex).

```

SELECT * 
FROM actor 
WHERE first_name REGEXP '^A|^B'; - Nomes que começam com A ou B
```