CREATE TABLE atividade (
	codigo INT PRIMARY KEY,
	descricao VARCHAR(140)
) ENGINE=INNODB;

CREATE TABLE departamento (
	codigo INT,
	descricao VARCHAR(140),
	codGerente INT,
   PRIMARY KEY(codigo)
) ENGINE=INNODB;

CREATE TABLE funcionario (
	codigo INT,
	nome VARCHAR(140),
	sexto VARCHAR(2),
	DtNascimento VARCHAR(140),
	salario DOUBLE,
	codDepto INT,
  	FOREIGN KEY (codDepto)
   REFERENCES departamento(codigo)
   ON UPDATE CASCADE ON DELETE RESTRICT,
   PRIMARY KEY(codigo)
) ENGINE=INNODB;


CREATE TABLE projeto (
	codigo INT,
	descricao VARCHAR(140),
	codResponsavel INT,
	dataInicio VARCHAR(140),
	dataFim VARCHAR(140),
	codDepto INT,
  	FOREIGN KEY (codDepto)
   REFERENCES departamento(codigo)
   ON UPDATE CASCADE ON DELETE RESTRICT,
  	FOREIGN KEY (codResponsavel)
   REFERENCES funcionario(codigo)
   ON UPDATE CASCADE ON DELETE RESTRICT,
   PRIMARY KEY(codigo)
) ENGINE=INNODB;

CREATE TABLE AtividadeProjeto (
	codigo INT,
	codProjeto INT,
	codAtividade INT,
	codResponsavel INT,
	dataInicio VARCHAR(140),
	dataFim VARCHAR(140),
  	FOREIGN KEY (codProjeto)
   REFERENCES projeto(codigo)
   ON UPDATE CASCADE ON DELETE RESTRICT,
  	FOREIGN KEY (codAtividade)
   REFERENCES atividade(codigo)
   ON UPDATE CASCADE ON DELETE RESTRICT,
   FOREIGN KEY (codResponsavel)
   REFERENCES funcionario(codigo)
   ON UPDATE CASCADE ON DELETE RESTRICT,
   PRIMARY KEY(codigo)
) ENGINE=INNODB;

ALTER TABLE departamento
ADD FOREIGN KEY (codGerente)
REFERENCES funcionario(codigo)
ON UPDATE CASCADE ON DELETE RESTRICT;
