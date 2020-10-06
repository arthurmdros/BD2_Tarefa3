Select Nome
From Funcionario
WHERE Salario > (Select Salario
From Funcionario
Where codDepto = (Select codigo
From Departamento
Where Codigo=5));