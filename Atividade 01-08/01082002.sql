create table agenda_estado(
    cod_estado int not null AUTO_INCREMENT,
    estado varchar(50) not null,
    primary key(cod_estado)
);

create table agenda_cidade(
    cod_cidade int not null AUTO_INCREMENT,
    cidade varchar(50) not null,
    cod_estado int not null,
    primary key(cod_cidade),
    foreign key(cod_estado) REFERENCES agenda_estado(cod_estado)
);

create table agenda_endereco(
    cod_enderenco int not null AUTO_INCREMENT,
    rua varchar(150) not null,
    bairro varchar(50) not null,
    cep varchar(15) not null,
    cod_cidade int not null,
    primary key(cod_enderenco),
    foreign key(cod_cidade) REFERENCES agenda_cidade(cod_cidade)
);


create table agenda_pessoa(
    cod_pessoa int not null AUTO_INCREMENT,
    nome varchar(200) not null,
    data_nascimento date not null,
    primary key(cod_pessoa)
);

create table agenda_pessoa_endereco(
    cod_pessoa int not null,
    cod_enderenco int not null,
    numero int not null,
    primary key(cod_pessoa, cod_enderenco),
    foreign key(cod_pessoa) REFERENCES agenda_pessoa(cod_pessoa),
    foreign key(cod_enderenco) REFERENCES agenda_endereco(cod_enderenco)
);

create table agenda_email(
    cod_pessoa int not null,
    email varchar(30) not null,
    primary key(email, cod_pessoa),
    foreign key(cod_pessoa) REFERENCES agenda_pessoa(cod_pessoa)
);

create table agenda_telefone(
    cod_pessoa int not null,
    telefone varchar(20) not null,
    primary key(telefone, cod_pessoa),
    foreign key(cod_pessoa) REFERENCES agenda_pessoa(cod_pessoa)
);