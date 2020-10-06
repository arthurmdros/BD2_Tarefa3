Select Nome
From Funcionario
Where
DtNascimento < (Select DtNascimento
From Funcionario
Where DtNascimento - DtAtual);