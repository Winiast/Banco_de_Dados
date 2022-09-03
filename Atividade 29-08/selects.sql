-- A)
SELECT
    af.nome,
    COUNT(af2.cpf_supervisor)
FROM
    atividade_funcionario af
INNER JOIN atividade_funcionario af2 ON
    af.cpf = af2.cpf_supervisor
GROUP BY
    af.cpf

-- B)
SELECT
    af.nome,
    af.datanasc
FROM
    atividade_funcionario af
WHERE
	af.sexo  = 'M'
AND
	(DATEDIFF(NOW(), af.datanasc) /30 / 12) > 40;

-- C)
SELECT
    SUM(af.salario)
FROM
    atividade_funcionario af
INNER JOIN atividade_funcionario_projeto afp ON
    af.cpf = afp.cpf_funcionario
INNER JOIN atividade_projeto ap ON
    afp.cod_projeto = ap.codigo
WHERE
    ap.cod_cidade = 7;

-- D)
-- SELECT
--     ad.nome
-- FROM
--     atividade_departamento ad
-- WHERE
--     MAX(COUNT(ap.cod_departamento))

-- SELECT
--     ad.nome
--     COUNT(ap.cod_departamento)
-- FROM
--     atividade_projeto ap
-- JOIN atividade_departamento ad ON
--     ad.codigo = ap.cod_departamento
-- GROUP BY
--     ad.nome

-- E)
SELECT
    ad.nome
FROM
    tads21_pedro.atividade_departamento ad
INNER JOIN tads21_pedro.atividade_cidade ac ON
    ad.localizacao = ac.codigo
WHERE
    ac.estado='SP';

-- F)
SELECT
    af.nome
FROM
    atividade_funcionario af
INNER JOIN
    atividade_departamento ad ON
    af.cpf = ad.cpf_gerente
WHERE
    af.salario = (SELECT MAX(af.salario) FROM atividade_funcionario af);
    