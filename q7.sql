CREATE VIEW total_funcionarios AS
SELECT departamento.descricao, COUNT(funcionario.codigo) AS "Funcionários"
FROM departamento LEFT JOIN funcionario
ON departamento.codigo = funcionario.codDepto
GROUP BY departamento.descricao;


SELECT * FROM total_funcionarios;