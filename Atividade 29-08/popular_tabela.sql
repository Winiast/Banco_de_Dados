INSERT INTO atividade_estado(sigla, nome) VALUES ("PR", "PARANA");
INSERT INTO atividade_estado(sigla, nome) VALUES ("SC", "SANTA CATARINA");
INSERT INTO atividade_estado(sigla, nome) VALUES ("SP", "SAO PAULO");

INSERT INTO atividade_cidade(nome, estado) VALUES("CURITIBA", "PR");
INSERT INTO atividade_cidade(nome, estado) VALUES("PONTAL DO PARANA", "PR");
INSERT INTO atividade_cidade(nome, estado) VALUES("MORRETES", "PR");
INSERT INTO atividade_cidade(nome, estado) VALUES("JOINVILE", "SC");
INSERT INTO atividade_cidade(nome, estado) VALUES("SAO FRANCISCO", "SC");   
INSERT INTO atividade_cidade(nome, estado) VALUES("FLORIANOPOLIS", "SC");
INSERT INTO atividade_cidade(nome, estado) VALUES("SAO PAULO", "SP");
INSERT INTO atividade_cidade(nome, estado) VALUES("LINS", "SP");
INSERT INTO atividade_cidade(nome, estado) VALUES("ARARAQUARA", "SP");

INSERT INTO atividade_departamento(nome, localizacao, cpf_gerente) VALUES("ADMINISTRATIVO", 7, null);
INSERT INTO atividade_departamento(nome, localizacao, cpf_gerente) VALUES("FINANCEIRO", 7, null);
INSERT INTO atividade_departamento(nome, localizacao, cpf_gerente) VALUES("RECURSOS HUMANOS", 1, null);
INSERT INTO atividade_departamento(nome, localizacao, cpf_gerente) VALUES("COMPRAS", 1, null);
INSERT INTO atividade_departamento(nome, localizacao, cpf_gerente) VALUES("VENDAS", 1, null);

INSERT INTO atividade_projeto(nome, descricao, cod_cidade, cod_departamento) VALUES("ACAO", "TESTE", 7, 1);
INSERT INTO atividade_projeto(nome, descricao, cod_cidade, cod_departamento) VALUES("ACAO2", "TESTE2", 7, 2);
INSERT INTO atividade_projeto(nome, descricao, cod_cidade, cod_departamento) VALUES("ACAO3", "TESTE3", 5, 2);
INSERT INTO atividade_projeto(nome, descricao, cod_cidade, cod_departamento) VALUES("ACAO4", "TESTE4", 7, 3);
INSERT INTO atividade_projeto(nome, descricao, cod_cidade, cod_departamento) VALUES("ACAO5", "TESTE5", 5, 2);
INSERT INTO atividade_projeto(nome, descricao, cod_cidade, cod_departamento) VALUES("ACAO6", "TESTE6", 7, 1);

INSERT INTO atividade_funcionario(cpf, datanasc, nome, endereco, salario, sexo, cpf_supervisor, cod_departamento) VALUES("1", '1970-01-31', "WAGNER", "IFPR", 12000, "M", null, 1);
INSERT INTO atividade_funcionario(cpf, datanasc, nome, endereco, salario, sexo, cpf_supervisor, cod_departamento) VALUES("2", '1990-01-31', "RODRIGO", "IFPR", 8000, "M", null, 1);
INSERT INTO atividade_funcionario(cpf, datanasc, nome, endereco, salario, sexo, cpf_supervisor, cod_departamento) VALUES("3", '1990-01-10', "ANA", "IFPR", 10000, "F", null, 2);
INSERT INTO atividade_funcionario(cpf, datanasc, nome, endereco, salario, sexo, cpf_supervisor, cod_departamento) VALUES("4", '1960-01-20', "LIGIA", "IFPR", 15000, "F", null, 2);
INSERT INTO atividade_funcionario(cpf, datanasc, nome, endereco, salario, sexo, cpf_supervisor, cod_departamento) VALUES("5", '1960-01-20', "LEONARDO", "IFPR", 15000, "M", null, 2);
INSERT INTO atividade_funcionario(cpf, datanasc, nome, endereco, salario, sexo, cpf_supervisor, cod_departamento) VALUES("6", '1985-01-20', "MARIA", "IFPR", 5000, "F", null, 4);

INSERT INTO atividade_funcionario_projeto(cpf_funcionario, cod_projeto) VALUES(1, 1);
INSERT INTO atividade_funcionario_projeto(cpf_funcionario, cod_projeto) VALUES(2, 1);
INSERT INTO atividade_funcionario_projeto(cpf_funcionario, cod_projeto) VALUES(3, 1);
INSERT INTO atividade_funcionario_projeto(cpf_funcionario, cod_projeto) VALUES(4, 1);
INSERT INTO atividade_funcionario_projeto(cpf_funcionario, cod_projeto) VALUES(1, 2);
INSERT INTO atividade_funcionario_projeto(cpf_funcionario, cod_projeto) VALUES(2, 2);
INSERT INTO atividade_funcionario_projeto(cpf_funcionario, cod_projeto) VALUES(3, 2);
INSERT INTO atividade_funcionario_projeto(cpf_funcionario, cod_projeto) VALUES(4, 2);
INSERT INTO atividade_funcionario_projeto(cpf_funcionario, cod_projeto) VALUES(1, 3);
INSERT INTO atividade_funcionario_projeto(cpf_funcionario, cod_projeto) VALUES(1, 4);

UPDATE atividade_departamento SET cpf_gerente=2 WHERE codigo=2;
UPDATE atividade_departamento SET cpf_gerente=3 WHERE codigo=3;
UPDATE atividade_departamento SET cpf_gerente=4 WHERE codigo=4;
UPDATE atividade_departamento SET cpf_gerente=5 WHERE codigo=5;

UPDATE atividade_funcionario SET cpf_supervisor=1 WHERE cpf=2;
UPDATE atividade_funcionario SET cpf_supervisor=1 WHERE cpf=3;
UPDATE atividade_funcionario SET cpf_supervisor=1 WHERE cpf=4;
UPDATE atividade_funcionario SET cpf_supervisor=2 WHERE cpf=5;