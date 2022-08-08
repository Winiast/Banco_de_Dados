create table biblioteca_funcionario(
    codigo_funcionario int not null AUTO_INCREMENT,
    nome_funcionario varchar(255) not null,
    endereco_funcionario varchar(255) not null,
    login_funcionario varchar(100) not null,
    funcao_funcionario varchar(45) not null,
    senha_funcionario varchar(255) not null,
    primary key (codigo_funcionario)
);

create table biblioteca_telefone_funcionario(
    telefone varchar(15) not null,
    codigo_funcionario int not null,
    primary key(telefone,codigo_funcionario),
    foreign key(codigo_funcionario) REFERENCES biblioteca_funcionario(codigo_funcionario)
);

create table biblioteca_usuario(
    registro_academico int not null AUTO_INCREMENT,
    nome_usuario varchar(255) not null,
    endereco_usuario varchar (255) null,
    login_usuario varchar(45),
    bloqueio_ativo bit not null,
    data_limite_bloqueio date not null,
    numero_emprestimos_ativos smallint(10) not null,
    primary key(registro_academico)
);

create table biblioteca_telefone_usuario(
    telefone varchar(15) not null,
    registro_academico int not null,
    primary key(telefone, registro_academico),
    foreign key(registro_academico) REFERENCES biblioteca_usuario (registro_academico)
);

create table biblioteca_acervo(
    codigo_acervo int not null AUTO_INCREMENT,
    titulo varchar(255) not null,
    tipo varchar(45) not null,
    status varchar(45) not null,
    primary key(codigo_acervo)
);

create table biblioteca_emprestar(
    registro_academico int not null,
    codigo_funcionario int not null,
    codigo_acervo int not null,
    data_devolucao date null,
    numero_renovacao smallint(10)  not null,
    data_emprestimo date not null,
    data_prevista_devoulacao date not null,
    primary key(registro_academico, codigo_funcionario, codigo_acervo),
    foreign key (registro_academico) REFERENCES biblioteca_usuario(registro_academico),
    foreign key (codigo_funcionario) REFERENCES biblioteca_funcionario(codigo_funcionario),
    foreign key (codigo_acervo) REFERENCES biblioteca_acervo(codigo_acervo)
);

create table biblioteca_reserva(
    registro_academico int not null,
    codigo_acervo int not null,
    data_reserva date not null,
    data_limite_reserva date not null,
    status varchar(45) not null,
    primary key(registro_academico, codigo_acervo),
    foreign key(registro_academico) REFERENCES biblioteca_usuario(registro_academico),
    foreign key(codigo_acervo) REFERENCES biblioteca_acervo(codigo_acervo)
);