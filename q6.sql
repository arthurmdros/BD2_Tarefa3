SELECT descricao
FROM departamento
WHERE
codigo <> ALL (SELECT DISTINCT (codDepto, nome, salario)
FROM funcionario);