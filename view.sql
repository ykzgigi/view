#CRIANDO UMA VIEW
CREATE VIEW VW_LISTA_FUNCIONARIOS AS
SELECT NOME, ESPECIALIDADE
FROM FUNCIONARIO;

#UTILIZANDO A VIEW CRIADA
select * from VW_LISTA_FUNCIONARIOS;


#CRIANDO UMA VIEW PARA LISTAR OS DEPENDENTES
CREATE VIEW VW_LISTA_DEPENDENTES AS
SELECT NOME
FROM DEPENDENTE;

select * from VW_LISTA_DEPENDENTES;


CREATE VIEW VW_FUNCIONARIO_COM_DEPENDENTES AS
SELECT funcionario.nome as fun_nome, dependente.nome as dependente_nome
FROM funcionario
INNER JOIN dependente
on funcionario.cod_fun = dependente.cod_fun
where funcionario.cod_fun = 1;

select * from VW_LISTA_DEPENDENTES;



create view vw_dependente as
select funcionario.nome,dependente.nome as fun,dependente.nome as dependente
from funcionario
right join dependente
on funcionario.cod_fun = dependente.cod_fun
where dependente.nome is null;

select * from vw_dependente;



create view View_Funcionario_Sem_Dependentes as
select funcionario.nome,dependente.nome as fun, dependente.nome as dependente
from Funcionario 
left join dependente 
on funcionario.cod_fun=dependente.cod_fun
where dependente.nome is null ;

select * from  View_Funcionario_Sem_Dependentes;

