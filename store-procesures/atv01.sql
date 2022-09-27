delimiter $$
    drop procedure if exists lista1 $$
    create procedure lista1()
    begin
        SELECT * FROM pessoa p WHERE p.nome LIKE '% Kline';
    end $$
delimiter ;


delimiter $$
    drop procedure if exists lista1 $$
    create procedure lista1()
    begin
        SELECT * FROM pessoa p WHERE p.data_nascimento LIKE '%-12-%';
    end $$
delimiter ;


delimiter $$
    drop procedure if exists lista1 $$
    create procedure lista1()
    begin
        SELECT * FROM pessoa p WHERE p.data_nascimento LIKE '2001-11-15';
    end $$
delimiter ;


delimiter $$
    drop procedure if exists lista1 $$
    create procedure lista1()
    begin
        SELECT * FROM veiculo v WHERE v.ocorrencia = 1;
    end $$
delimiter ;


delimiter $$
    drop procedure if exists lista1 $$
    create procedure lista1()
    begin
        SELECT v.ocorrencia, COUNT(v.ocorrencia) as quantidade FROM veiculo v GROUP BY v.ocorrencia ORDER BY quantidade DESC LIMIT 1;
    end $$
delimiter ;
