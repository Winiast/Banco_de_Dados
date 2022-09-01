-- | TESTES |
SELECT nome FROM atividade_funcionario;
SELECT cpf FROM atividade_funcionario;
SELECT cpf, nome FROM atividade_funcionario;

SELECT nome FROM atividade_funcionario WHERE cpf_surpevisor=atividade_funcionario.cpf;

SELECT nome FROM atividade_funcionario WHERE sexo="M";

SELECT COUNT(cpf_surpevisor) FROM atividade_funcionario WHERE cpf_surpevisor="1";

SELECT nome FROM atividade_funcionario GROUP BY cpf_surpevisor;

-- | FUNCIONANDO |
SELECT nome FROM atividade_departamento WHERE localizacao=7;