SELECT 
    nome, COUNT(cpf_supervisor) AS cpf_supervisor
FROM
    (SELECT nome FROM atividade_funcionario WHERE cpf in ("1", "2")) AS nome,
    (SELECT COUNT(cpf_supervisor) FROM atividade_funcionario WHERE cpf_supervisor in ("1", "2")) AS cpf_supervisor;


-- SELECT cpf, nome, cpf_surpevisor FROM atividade_funcionario;


 -- Retorna os Nomes  com o cpf do supervisor

 SELECT cpf, nome, cpf_surpevisor FROM atividade_funcionario WHERE cpf_surpevisor != '';

 SELECT COUNT(cpf_supervisor) FROM atividade_funcionario;



SELECT nome, COUNT(cpf_surpevisor) FROM atividade_funcionario WHERE cpf_surpevisor != '' GROUP BY nome ;

SELECT nome, COUNT(cpf_surpevisor) FROM atividade_funcionario  GROUP BY nome ;