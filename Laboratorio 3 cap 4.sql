
--**** Laboratório 3 **** 
 
 --A – Utilizando o banco de dados PEDIDOS
 
 --1. Coloque em uso o banco de dados PEDIDOS;
 USE PEDIDOS
 
 --2. Liste os clientes (ID_CLIENTE) do estado de São Paulo (SP). Para essa consulta, utilize a tabela TB_CLIENTE;
 SELECT CODCLI 
      ,CIDADE 
FROM TB_CLIENTE
 WHERE ESTADO ='SP'
 
 --3. Liste os clientes dos estados de Minas Gerais e Rio de Janeiro (MG, RJ);
 SELECT CODCLI
     ,CIDADE 
 FROM TB_CLIENTE
 WHERE ESTADO ='MG' OR ESTADO ='RJ'
 --OU
 SELECT CODCLI
     ,CIDADE
 FROM TB_CLIENTE
 WHERE ESTADO IN ('MG', 'RJ')
 
 
 --4. Liste os clientes dos estados de São Paulo, Minas Gerais e Rio de Janeiro (SP, MG, RJ);
 SELECT CODCLI
     ,CIDADE
 FROM TB_CLIENTE
 WHERE ESTADO IN ('SP', 'MG', 'RJ')
 
 --5. Realize uma pesquisa que retorne o nome do empregado MARCO ANTONIO;
 SELECT * FROM TB_EMPREGADO 
WHERE NOME LIKE 'MARCO ANTONIO%'
--OU
 SELECT * FROM TB_EMPREGADO 
WHERE NOME = 'MARCO ANTONIO'

--6. Liste todos os clientes que tenham NOME começando com B;
 select * from TB_CLIENTE 
where NOME LIKE 'B%'


--7. Liste todos os clientes que tenham NOME terminando com LTDA;
 select * from TB_CLIENTE 
where NOME LIKE '%LTDA'

--8. Liste todos os clientes que tenham NOME contendo BRINDES;
 select * from TB_CLIENTE 
where NOME LIKE '%BRINDES%'


--9. Liste todos os produtos com DESCRICAO começando por CANETA;
 SELECT * FROM TB_PRODUTO
 WHERE DESCRICAO LIKE 'CANETA%'
 
 --10. Liste todos os produtos com DESCRICAO contendo SPECIAL;
SELECT * FROM TB_PRODUTO
 WHERE DESCRICAO LIKE '%SPECIAL%'
 
 
 --11. Liste todos os produtos com DESCRICAO terminando por GOLD;
 SELECT * FROM TB_PRODUTO
 WHERE DESCRICAO LIKE '%GOLD'
 
 --12. Liste todos os clientes que tenham a letra A como segundo caractere do nome;
 select * from TB_CLIENTE 
where NOME LIKE '_A%'

--13. Liste todos os produtos que tenham a letra A com terceiro caractere;
 SELECT * FROM TB_PRODUTO
 WHERE DESCRICAO LIKE '__A%'
 
 --14. Liste todas as cidades que possuam o nome brasil.
 SELECT * FROM TB_CLIENTE
 WHERE CIDADE LIKE'%BRASIL%'
 
 
