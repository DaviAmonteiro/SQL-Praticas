
INNER JOIN 

```
USE sakila;

SELECT *

FROM customer

JOIN payment ON customer.customer_id = payment.payment_id;
```

# 📌 O que esse código faz?

Ele **junta (relaciona)** duas tabelas diferentes (`customer` e `payment`) para exibir, em uma única visualização, os dados do cliente ao lado dos dados de pagamento


# 🔍 Explicação Linha por Linha

1. **`USE sakila;`**
    
    - **O que faz:** Seleciona o banco de dados `sakila` para executar os comandos seguintes.
        
2. **`SELECT *`**
    
    - **O que faz:** Solicita a exibição de **todas as colunas** trazidas pelo relacionamento das duas tabelas.
        
3. **`FROM customer`**
    
    - **O que faz:** Define a tabela `customer` (Clientes) como a **tabela principal (da esquerda)** da consulta.
        
4. **`JOIN payment`** (ou `INNER JOIN`)
    
    - **O que faz:** Conecta a tabela `customer` com a tabela `payment` (Pagamentos).
        
    - _Regra:_ Ele só traz as linhas que possuem correspondência em **ambas** as tabelas.
        
5. **`ON customer.customer_id = payment.payment_id`**
    
    - **O que faz:** Define a **regra de ligação** entre as tabelas.
        
    - **Atenção (Ponto Importante):**
        
        - Nesse exemplo específico, ele está comparando o ID do cliente (`customer.customer_id`) com o ID do pagamento (`payment.payment_id`).
            
        - _Na prática no mundo real:_ O correto para associar os pagamentos de um cliente seria ligar `customer.customer_id = payment.customer_id` (relacionando o cliente da tabela de clientes com a chave estrangeira do cliente na tabela de pagamentos).



# 🤓 O QUE É  UM "ALIAS"?  

```
USE sakila;

SELECT

     cus.customer_id,  

     cus.first_name,

     cus.last_name,

     pay.rental_id,

     pay.amount

FROM customer cus

JOIN payment pay ON cus.customer_id = pay.payment_id;
```

No código acima, conseguimos abreviar os chamados das tabelas usando o ALIAS, que vem logo após no: `FROM customer` ==cus==

==cus== seria um ALIAS (Abreviação) para `customer`, deixando o código mais limpo e organizado, facilitando a digitação e leitura do próprio.


## Leitura Adicional: Union

O operador UNION combina os resultados de duas ou mais queries em um único result set, retornando todas as linhas pertencentes a todas as queries envolvidas na execução. Para utilizar o UNION, o número e a ordem das colunas precisam ser idênticos em todas as queries e os data types precisam ser compatíveis.

O operador UNION, por default, executa o equivalente a um SELECT DISTINCT no result set final. Em outras palavras, ele combina o resultado de execução das duas queries e então executa um SELECT DISTINCT a fim de eliminar as linhas duplicadas. Este processo é executado mesmo que não hajam registros duplicados.

(Empilha linhas verticalmente, consolidando resultados múltiplos.)

**Usos comuns:** Relatórios unificados, categorização de status (ex: compras ativas + compras arquivadas), listas de contatos gerais.