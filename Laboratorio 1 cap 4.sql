--**** Laboratório 1 **** 

--A – Utilizando o banco de dados PEDIDOS e listando suas tabelas com base em diferentes critérios

--1. Coloque em uso o banco de dados PEDIDOS;
 USE PEDIDOS
 
 -- 2. Liste a tabela TB_PRODUTO, mostrando as colunas ID_PRODUTO, DESCRICAO, PRECO_CUSTO e PRECO_VENDA e calculando o lucro unitário (PRECO_VENDA – PRECO_CUSTO);
 SELECT ID_PRODUTO 
,DESCRICAO 
,PRECO_CUSTO 
,PRECO_VENDA
 ,PRECO_VENDA - PRECO_CUSTO AS [lucro unitário]
 FROM TB_PRODUTO
 
 --3. Liste a tabela TB_PRODUTO, mostrando os campos ID_PRODUTO e DESCRICAO e calculando o valor total investido no estoque daquele produto (QTD_REAL * PRECO_CUSTO);
 
 SELECT ID_PRODUTO 
,DESCRICAO 
,QTD_REAL * PRECO_CUSTO AS [vALOR TOTAL INVESTIDO]
 FROM TB_PRODUTO
 
 --4. Liste a tabela TB_ITENSPEDIDO, mostrando as colunas ID_ PEDIDO, ITEM, ID_PRODUTO, PR_UNITARIO, QUANTIDADE e DESCONTO e calculando o valor de cada item (PR_UNITARIO * QUANTIDADE * (1-DESCONTO/100));
 
 SELECT NUM_PEDIDO  
,NUM_ITEM
 ,ID_PRODUTO 
,PR_UNITARIO 
,QUANTIDADE 
,DESCONTO
 ,PR_UNITARIO * QUANTIDADE * (1-DESCONTO/100) AS [TOTAL ITEM]
 FROM TB_ITENSPEDIDO
 
 
 --5. Liste a tabela TB_PRODUTO, mostrando os campos ID_ PRODUTO, DESCRICAO, PRECO_CUSTO e PRECO_VENDA, calculando o lucro unitário em reais (PRECO_VENDA – PRECO_CUSTO) e o lucro unitário percentual ((100 * (PRECO_VENDA - PRECO_CUSTO) / PRECO_CUSTO)).
 SELECT ID_PRODUTO, 
DESCRICAO, 
PRECO_CUSTO, 
PRECO_VENDA,
 PRECO_VENDA - PRECO_CUSTO AS [lucro unitário],
 (100 * (PRECO_VENDA - PRECO_CUSTO) / PRECO_CUSTO) as [Percentual lucro unitário]
 FROM TB_PRODUTO
 
 --Note que existe uma divisão na instrução. Deve-se garantir que não ocorra divisão por zero, pois isso provoca erro ao executar o comando.
 SELECT ID_PRODUTO, 
DESCRICAO, 
PRECO_CUSTO, 
PRECO_VENDA,
 PRECO_VENDA - PRECO_CUSTO AS [lucro unitário],
 (100 * (PRECO_VENDA - PRECO_CUSTO) / PRECO_CUSTO) as 
[Percentual lucro unitário]
 FROM TB_PRODUTO
 where PRECO_CUSTO>0
 
