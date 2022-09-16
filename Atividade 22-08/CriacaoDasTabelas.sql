create table estado (
    sigla VARCHAR(2) NOT NULL,
    nome VARCHAR(30) NOT NULL,
    primary key(sigla)
)

create table cidade (
    cod_cidade INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    foreign key(estado) REFERENCES estado(sigla),
    primary key(cod_cidade)
)