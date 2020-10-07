

CREATE VIEW responsaveis AS
SELECT funcionario.nome AS "Responsável", projeto.descricao AS "Projeto", departamento.descricao AS "Departamento"
FROM projeto LEFT JOIN departamento 
ON projeto.codDepto = departamento.codigo LEFT JOIN funcionario
ON funcionario.codigo = projeto.codResponsavel;

SELECT * FROM responsaveis;