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
--     nome ad
-- FROM
--     atividade_departamento ad
-- INNER JOIN atividade_projeto ap ON
--     ad.codigo = ap.cod_departamento;

-- E)
SELECT
    ad.nome
FROM
    tads21_pedro.atividade_departamento ad
INNER JOIN tads21_pedro.atividade_cidade ac ON
    ad.localizacao = ac.codigo
WHERE
    ac.estado='SP';