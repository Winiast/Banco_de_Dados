INSERT INTO locadora_veiculos_locadora (cnpj, razao_social, endereco) VALUES ("312457", "94336", "sei la");
INSERT INTO locadora_veiculos_locadora (cnpj, razao_social, endereco) VALUES ("3126757", "947336", "Disney");
INSERT INTO locadora_veiculos_locadora (cnpj, razao_social, endereco) VALUES ("37657457", "947336", "Orlando");
INSERT INTO locadora_veiculos_locadora (cnpj, razao_social, endereco) VALUES ("23512457", "944336", "Acre");
INSERT INTO locadora_veiculos_locadora (cnpj, razao_social, endereco) VALUES ("31562457", "9434536", "Beverly hills");
//

INSERT INTO locadora_veiculos_locadora_telefone (telefone) VALUES ("47687394");
INSERT INTO locadora_veiculos_locadora_telefone (telefone) VALUES ("47635338");
INSERT INTO locadora_veiculos_locadora_telefone (telefone) VALUES ("47685635");
INSERT INTO locadora_veiculos_locadora_telefone (telefone) VALUES ("47634636");
INSERT INTO locadora_veiculos_locadora_telefone (telefone) VALUES ("43657856");


INSERT INTO locadora_veiculos_tipo_veiculo (descricao, porte, tamanho, numero_passageiros, numero_portas, arcondicionado, multimidia, direcao_hidraulica, cambio_automatico, capacidade_carga) VALUES ("Urbano", "Medío", null, null, null, null, null, null, null, null);
INSERT INTO locadora_veiculos_tipo_veiculo (descricao, porte, tamanho, numero_passageiros, numero_portas, arcondicionado, multimidia, direcao_hidraulica, cambio_automatico, capacidade_carga) VALUES ("Flex", "Médio", null, null, null, null, null, null, null, null);
INSERT INTO locadora_veiculos_tipo_veiculo (descricao, porte, tamanho, numero_passageiros, numero_portas, arcondicionado, multimidia, direcao_hidraulica, cambio_automatico, capacidade_carga) VALUES ("Corrida", "Pequeno", null, null, null, null, null, null, null, null);
INSERT INTO locadora_veiculos_tipo_veiculo (descricao, porte, tamanho, numero_passageiros, numero_portas, arcondicionado, multimidia, direcao_hidraulica, cambio_automatico, capacidade_carga) VALUES ("Futurista", "Médio", null, null, null, null, null, null, null, null);
INSERT INTO locadora_veiculos_tipo_veiculo (descricao, porte, tamanho, numero_passageiros, numero_portas, arcondicionado, multimidia, direcao_hidraulica, cambio_automatico, capacidade_carga) VALUES ("Viagem", "Grande", null, null, null, null, null, null, null, null);
//

INSERT INTO locadora_veiculos_marca (descricao) VALUES ("Mazda");
INSERT INTO locadora_veiculos_marca (descricao) VALUES ("Honda");
INSERT INTO locadora_veiculos_marca (descricao) VALUES ("BMW");
INSERT INTO locadora_veiculos_marca (descricao) VALUES ("Tesla");
INSERT INTO locadora_veiculos_marca (descricao) VALUES ("Ferrari");
//

INSERT INTO locadora_veiculos_modelo (codigo_marca, descricao) VALUES (1, "3 Portas");
INSERT INTO locadora_veiculos_modelo (codigo_marca, descricao) VALUES (2, "Trava Eletrica");
INSERT INTO locadora_veiculos_modelo (codigo_marca, descricao) VALUES (3, "Flex");
INSERT INTO locadora_veiculos_modelo (codigo_marca, descricao) VALUES (4, "Sensor de Ré");
INSERT INTO locadora_veiculos_modelo (codigo_marca, descricao) VALUES (5, "Automatico");
//

INSERT INTO locadora_veiculos_veiculo (placa, codigo_modelo, codigo_tipo_veiculo, cnpj_locadora, chassi, numero_motor, status_veiculo, km_atual) VALUES ();
INSERT INTO locadora_veiculos_veiculo (placa, codigo_modelo, codigo_tipo_veiculo, cnpj_locadora, chassi, numero_motor, status_veiculo, km_atual) VALUES ();
INSERT INTO locadora_veiculos_veiculo (placa, codigo_modelo, codigo_tipo_veiculo, cnpj_locadora, chassi, numero_motor, status_veiculo, km_atual) VALUES ();
INSERT INTO locadora_veiculos_veiculo (placa, codigo_modelo, codigo_tipo_veiculo, cnpj_locadora, chassi, numero_motor, status_veiculo, km_atual) VALUES ();
INSERT INTO locadora_veiculos_veiculo (placa, codigo_modelo, codigo_tipo_veiculo, cnpj_locadora, chassi, numero_motor, status_veiculo, km_atual) VALUES ();


INSERT INTO locadora_veiculos_cliente (nome,endereco) VALUES ("Gustavo", "Rua do Zezinhho 925");
INSERT INTO locadora_veiculos_cliente (nome,endereco) VALUES ("Pedrinho", "Rua do Dirceu 3022");
INSERT INTO locadora_veiculos_cliente (nome,endereco) VALUES ("Andre", "Rua do Campetes 0009");
INSERT INTO locadora_veiculos_cliente (nome,endereco) VALUES ("Bartolome", "Rua do São Sebastiao 4423");
INSERT INTO locadora_veiculos_cliente (nome,endereco) VALUES ("Moacir", "Rua do Tigre 3635");
//

INSERT INTO locadora_veiculos_pessoa_fisica (cpf, sexo, data_nascimento) VALUES ("12332199989", "Masculino", '1979-09-06');
INSERT INTO locadora_veiculos_pessoa_fisica (cpf, sexo, data_nascimento) VALUES ("12332199989", "Feminino", '22-01-2001');
INSERT INTO locadora_veiculos_pessoa_fisica (cpf, sexo, data_nascimento) VALUES ("12332199989", "Masculino", 12-04-1820);
INSERT INTO locadora_veiculos_pessoa_fisica (cpf, sexo, data_nascimento) VALUES ("12332199989", "Feminino", 24-08-1969);
INSERT INTO locadora_veiculos_pessoa_fisica (cpf, sexo, data_nascimento) VALUES ("12332199989", "Femninino" 11-09-2001);


INSERT INTO locadora_veiculos_pessoa_juridica (cnpj, inscricao_estadual) VALUES ("12345678912345", "3881372598269");
INSERT INTO locadora_veiculos_pessoa_juridica (cnpj, inscricao_estadual) VALUES ("98765432198765", "3881083598269");
INSERT INTO locadora_veiculos_pessoa_juridica (cnpj, inscricao_estadual) VALUES ("98765432198700", "3882131598269");
INSERT INTO locadora_veiculos_pessoa_juridica (cnpj, inscricao_estadual) VALUES ("23232323232322", "7532085982269");
INSERT INTO locadora_veiculos_pessoa_juridica (cnpj, inscricao_estadual) VALUES ("69696969696922", "3881089999999");


INSERT INTO locadora_veiculos_reserva (codigo_tipo_veiculo, codigo_cliente, data_reserva, data_retirada_veiculo) VALUES (1, 1, 18/12/2010, 18/12/2010);
INSERT INTO locadora_veiculos_reserva (codigo_tipo_veiculo, codigo_cliente, data_reserva, data_retirada_veiculo) VALUES (2, 2, 25/12/2004, 25/12/2004);
INSERT INTO locadora_veiculos_reserva (codigo_tipo_veiculo, codigo_cliente, data_reserva, data_retirada_veiculo) VALUES (3, 3, 29/03/1965, 29/03/1965);
INSERT INTO locadora_veiculos_reserva (codigo_tipo_veiculo, codigo_cliente, data_reserva, data_retirada_veiculo) VALUES (4, 4, 05/07/1994, 05/07/1994);
INSERT INTO locadora_veiculos_reserva (codigo_tipo_veiculo, codigo_cliente, data_reserva, data_retirada_veiculo) VALUES (5, 5, 16/01/2016, 16/01/2016);


INSERT INTO locadora_veiculos_aluguel (placa, cnpj_locadora_origem, cnpj_locadora_destino, codigo_cliente, data_ ,data_prevista_entrega, data_entrega,nome_motorista,cnh_motorista, data_validade, km_rodada, valor) VALUES ();
INSERT INTO locadora_veiculos_aluguel (placa, cnpj_locadora_origem, cnpj_locadora_destino, codigo_cliente, data_ ,data_prevista_entrega, data_entrega,nome_motorista,cnh_motorista, data_validade, km_rodada, valor) VALUES ();
INSERT INTO locadora_veiculos_aluguel (placa, cnpj_locadora_origem, cnpj_locadora_destino, codigo_cliente, data_ ,data_prevista_entrega, data_entrega,nome_motorista,cnh_motorista, data_validade, km_rodada, valor) VALUES ();
INSERT INTO locadora_veiculos_aluguel (placa, cnpj_locadora_origem, cnpj_locadora_destino, codigo_cliente, data_ ,data_prevista_entrega, data_entrega,nome_motorista,cnh_motorista, data_validade, km_rodada, valor) VALUES ();
INSERT INTO locadora_veiculos_aluguel (placa, cnpj_locadora_origem, cnpj_locadora_destino, codigo_cliente, data_ ,data_prevista_entrega, data_entrega,nome_motorista,cnh_motorista, data_validade, km_rodada, valor) VALUES ();
