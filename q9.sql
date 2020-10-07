CREATE VIEW Responsaveis AS 
SELECT DISTINCT funcionario.codigo, funcionario.nome, funcionario.salario
FROM funcionario RIGHT JOIN projeto
ON funcionario.codigo = projeto.codResponsavel;

CREATE VIEW N°_projetos AS 
SELECT funcionario.codigo, COUNT(projeto.codResponsavel) AS "Total"
FROM projeto LEFT JOIN funcionario
ON projeto.codResponsavel = funcionario.codigo;


CREATE VIEW Resultado AS
SELECT Responsaveis.nome AS "Responsável", N°_Projetos.Total AS "Total Projetos", Responsaveis.salario AS "Salário"
FROM Responsaveis LEFT JOIN N°_Projetos
ON Responsaveis.codigo = N°_Projetos.codigo;


SELECT * FROM Resultado;