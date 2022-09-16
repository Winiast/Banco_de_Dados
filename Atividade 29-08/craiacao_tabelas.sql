<<<<<<< HEAD:Atividade 29-08/scriptls.sql
CREATE TABLE atividade_estado (
    sigla VARCHAR(2) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    primary key (sigla)
);


CREATE TABLE atividade_cidade (
    codigo INT NOT NULL AUTO_INCREMENT,
    nome INT NOT NULL,
    estado VARCHAR(2) NULL,
    primary key (codigo),
    foreign key (estado) REFERENCES atividade_estado (sigla)
);

CREATE TABLE atividade_departamento (
    codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    localizacao INT NOT NULL,
    primary key (codigo),
    foreign key (localizacao) REFERENCES atividade_cidade (codigo)
);

CREATE TABLE atividade_projeto (
    codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    descricao VARCHAR(255),
    cod_cidade INT NOT NULL,
    cod_departamento INT NOT NULL,
    primary key (codigo),
    foreign key (cod_cidade) REFERENCES atividade_cidade (codigo),
    foreign key (cod_departamento) REFERENCES atividade_departamento (codigo)
);

CREATE TABLE atividade_funcionario (
    cpf VARCHAR(11) NOT NULL,
    datanasc DATE NOT NULL,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45) NOT NULL,
    salario FLOAT NOT NULL,
    sexo CHAR NOT NULL,
    cpf_surpevisor VARCHAR(11) NULL,
    cod_departamento INT NOT NULL,
    primary key (cpf),
    foreign key (cod_departamento) REFERENCES atividade_departamento (codigo)
);

CREATE TABLE atividade_funcionario_projeto (
    cpf_funcionario VARCHAR(11) NOT NULL,
    cod_projeto INT NOT NULL,
    primary key (cpf_funcionario, cod_projeto),
    foreign key (cpf_funcionario) REFERENCES atividade_funcionario (cpf),
    foreign key (cod_projeto) REFERENCES atividade_projeto (codigo)
);

ALTER TABLE atividade_departamento ADD CONSTRAINT fk_gerente foreign key(fk_gerente) REFERENCES atividade_funcionario(cpf);

ALTER TABLE atividade_funcionario ADD CONSTRAINT cpf_surpevisor VARCHAR(11) NULL foreign key(cpf) REFERENCES(atividade_funcionario);
=======
CREATE TABLE atividade_estado (
    sigla VARCHAR(2) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    primary key (sigla)
);


CREATE TABLE atividade_cidade (
    codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    primary key (codigo),
    foreign key (estado) REFERENCES atividade_estado (sigla)
);

CREATE TABLE atividade_departamento (
    codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    localizacao INT NOT NULL,
    cpf_gerente VARCHAR(11) NULL,
    primary key (codigo),
    foreign key (localizacao) REFERENCES atividade_cidade (codigo)
);

CREATE TABLE atividade_projeto (
    codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    descricao VARCHAR(255),
    cod_cidade INT NOT NULL,
    cod_departamento INT NOT NULL,
    primary key (codigo),
    foreign key (cod_cidade) REFERENCES atividade_cidade (codigo),
    foreign key (cod_departamento) REFERENCES atividade_departamento (codigo)
);

CREATE TABLE atividade_funcionario (
    cpf VARCHAR(11) NOT NULL,
    datanasc DATE NOT NULL,
    nome VARCHAR(45) NOT NULL,
    endereco VARCHAR(45) NOT NULL,
    salario FLOAT NOT NULL,
    sexo CHAR NOT NULL,
    cpf_supervisor VARCHAR(11) NULL,
    cod_departamento INT NOT NULL,
    primary key (cpf),
    foreign key (cod_departamento) REFERENCES atividade_departamento (codigo)
);

CREATE TABLE atividade_funcionario_projeto (
    cpf_funcionario VARCHAR(11) NOT NULL,
    cod_projeto INT NOT NULL,
    primary key (cpf_funcionario, cod_projeto),
    foreign key (cpf_funcionario) REFERENCES atividade_funcionario (cpf),
    foreign key (cod_projeto) REFERENCES atividade_projeto (codigo)
);

ALTER TABLE atividade_departamento ADD CONSTRAINT fk_gerente foreign key(cpf_gerente) REFERENCES atividade_funcionario(cpf);

ALTER TABLE atividade_funcionario ADD CONSTRAINT fk_surpevisor foreign key(cpf_supervisor) REFERENCES atividade_funcionario(cpf);

>>>>>>> f2e25a18e8d7b0c369cacdd280bd834e5c8f994f:Atividade 29-08/craiacao_tabelas.sql
