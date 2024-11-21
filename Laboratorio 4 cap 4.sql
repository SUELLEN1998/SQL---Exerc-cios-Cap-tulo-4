
--**** Laboratório 4 **** 

--A – Utilizando novamente o banco de dados PEDIDOS e listando suas tabelas com base em outros critérios

--1. Coloque em uso o banco de dados PEDIDOS;
 use PEDIDOS
 
 --2. Liste todos os pedidos com data de emissão anterior a Jan/2017;
 SELECT *
 FROM TB_PEDIDO
 WHERE DATA_EMISSAO<'2017.1.1'
 --OU
 SELECT *
 FROM TB_PEDIDO
 WHERE YEAR(DATA_EMISSAO)<2017
 
 
 --3. Liste todos os pedidos com data de emissão no primeiro semestre de 2018;
 SELECT *
 FROM TB_PEDIDO
WHERE DATA_EMISSAO>='2018.1.1' AND DATA_EMISSAO<='2018.6.30 23:59:59'

--OU
 SELECT *
 FROM TB_PEDIDO
 WHERE YEAR(DATA_EMISSAO)=2018
 AND MONTH (DATA_EMISSAO)<=6
 
 --4. Liste todos os pedidos com data de emissão em janeiro e junho de 2016;
 SELECT *
 FROM TB_PEDIDO
 WHERE YEAR(DATA_EMISSAO)=2016
 AND MONTH (DATA_EMISSAO) IN (1,6)
 
 --5. Liste todos os pedidos do Vendedor Código 4 em Jan/2017;
 SELECT *
 FROM TB_PEDIDO
 WHERE YEAR(DATA_EMISSAO)=2017
 AND MONTH(DATA_EMISSAO) = 1
 AND CODVEN = 4
 
 --6. Liste os pedidos emitidos em Jan/2017 em uma sexta-feira. 
SELECT *
 FROM TB_PEDIDO
 WHERE YEAR(DATA_EMISSAO)=2017
 AND MONTH(DATA_EMISSAO) = 1
 AND DATEPART(WEEKDAY, DATA_EMISSAO) = 6

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 