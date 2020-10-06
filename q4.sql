SELECT nome, salario, codDepto
FROM funcionario
WHERE codigo <> ALL (SELECT codGerente FROM departamento ORDER BY codigo); 