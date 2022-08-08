create table locadora_veiculos_locadora(
	cnpj varchar(20) not null,
	razao_social varchar(100),
	endereco varchar(255),
	primary key(cnpj)
);

create table locadora_veiculos_locadora_telefone(
	telefone varchar(20) not null,
	cnpj varchar(20) not null,
	primary key(telefone, cnpj),
	foreign key(cnpj) REFERENCES locadora_veiculos_locadora(cnpj) 
);

create table locadora_veiculos_tipo_veiculo(
	codigo int not null AUTO_INCREMENT,
	descricao varchar(255) not null,
	porte varchar(45) not null,
	tamanho varchar(45) null,
	numero_passageiros int null,
	numero_portas int null,
	arcondicionado Bit null,
	multimidia Bit null,
	direcao_hidraulica Bit null,
	cambio_automatico Bit null,
	capacidade_carga Bit null,
	primary key(codigo)
);

create table locadora_veiculos_marca(
	codigo int not null AUTO_INCREMENT,
	descricao varchar(100),
	primary key(codigo)
);

create table locadora_veiculos_modelo(
	codigo int not null AUTO_INCREMENT,
	codigo_marca int not null,
	descricao varchar(255) not null,
	primary key(codigo),
	foreign key(codigo_marca) REFERENCES locadora_veiculos_marca(codigo)
);

create table locadora_veiculos_veiculo(
	placa varchar(7) not null,
	codigo_modelo int not null,
	codigo_tipo_Veiculo int not null,
	cnpj_locadora varchar(20) not null,
	chassi varchar(45) not null,
	numero_motor varchar(45) not null,
	status_veiculo varchar(45) not null,
	km_atual varchar(45) not null,
	primary key(placa),
	foreign key(codigo_modelo) REFERENCES locadora_veiculos_modelo(codigo),
    foreign key (codigo_tipo_veiculo) REFERENCES locadora_veiculos_tipo_veiculo(codigo),
    foreign key(cnpj_locadora) REFERENCES locadora_veiculos_locadora(cnpj)
);

create table locadora_veiculos_cliente(
	codigo int not null AUTO_INCREMENT,
	nome varchar(255) not null,
	endereco varchar(255) not null,
	primary key(codigo)
);

create table locadora_veiculos_pessoa_fisica(
	codigo_cliente int not null,
	cpf varchar(15) not null,
	sexo varchar(45) not null,
	data_nascimento Date not null,
	primary key(codigo_cliente),
	foreign key(codigo_cliente) REFERENCES locadora_veiculos_cliente(codigo)
);

create table locadora_veiculos_pessoa_juridica(
	codigo_cliente int not null,
	cnpj varchar(15) not null,
	inscricao_estadual varchar(20) not null,
	primary key(codigo_cliente),
	foreign key(codigo_cliente) REFERENCES locadora_veiculos_cliente(codigo)
);

create table locadora_veiculos_reserva(
	codigo int not null AUTO_INCREMENT,
	codigo_tipo_Veiculo int not null,
	codigo_cliente int not null,
	data_reserva Date not null,
	data_retirada_veiculo Date not null,
	status_reserva varchar(45),
	primary key(codigo),
	foreign key(codigo_tipo_Veiculo) REFERENCES locadora_veiculos_tipo_veiculo(codigo),
	foreign key(codigo_cliente) REFERENCES locadora_veiculos_cliente(codigo)
);

create table locadora_veiculos_aluguel(
	codigo int not null AUTO_INCREMENT,
	placa varchar(7) not null,
	cnpj_locadora_origem varchar(20) not null,
	cnpj_locadora_destino varchar(20) not null,
	codigo_cliente int not null,
	data_aluguel Date not null,
	data_prevista_entrega Date not null,
	data_entrega Date null,
	nome_motorista varchar(255) not null,
	cnh_motorista varchar(2),
	data_validade_cnh Date not null,
	km_rodada int not null,
	valor float null,
	primary key(codigo),
	foreign key(placa) REFERENCES locadora_veiculos_veiculo(placa),
	foreign key(cnpj_locadora_origem) REFERENCES locadora_veiculos_locadora(cnpj),
	foreign key(cnpj_locadora_destino) REFERENCES locadora_veiculos_locadora(cnpj),
	foreign key(codigo_cliente) REFERENCES locadora_veiculos_cliente(codigo)
);
