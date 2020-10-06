SELECT nome, DtNascimento
FROM funcionario
WHERE DtNascimento > (SELECT DtNascimento
FROM funcionario
WHERE (DtAtual- DtNascimento = 21) AND codigo <> ALL (SELECT codGerente FROM departamento);  