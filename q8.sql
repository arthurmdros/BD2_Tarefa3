
CREATE VIEW total_projetos AS
SELECT departamento.descricao, COUNT(projeto.codigo) AS "Projetos"
FROM departamento LEFT JOIN projeto
ON departamento.codigo = projeto.codDepto
GROUP BY departamento.descricao;


SELECT * FROM total_projetos;