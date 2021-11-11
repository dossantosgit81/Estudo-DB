CREATE DATABASE softblue;

USE softblue;

CREATE TABLE tipo(
	codigo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    tipo VARCHAR(100) NOT NULL DEFAULT '',
    PRIMARY KEY(codigo)
);

CREATE TABLE instrutor(
	codigo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL DEFAULT '',
    telefone VARCHAR(50) NOT NULL DEFAULT '',
	PRIMARY KEY(codigo)
);

CREATE TABLE curso(
	codigo INT UNSIGNED NOT NULL AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL,
    tipo_codigo INT UNSIGNED NOT NULL,
    instrutor_codigo INT UNSIGNED NOT NULL,
    valor DOUBLE NOT NULL DEFAULT '0',
	PRIMARY KEY (codigo),
    CONSTRAINT FK_curso_tipo FOREIGN KEY (tipo_codigo) REFERENCES tipo(codigo),
    CONSTRAINT Fk_curso_instrutor FOREIGN KEY(instrutor_codigo) REFERENCES instrutor(codigo)
);

CREATE TABLE aluno(
	codigo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(255) NOT NULL DEFAULT '',
    email VARCHAR(100) UNIQUE NOT NULL DEFAULT  '',
    PRIMARY KEY(codigo)
);

#CODIGO (PK) | ALUNO (FK)   | DATA       | HORA  

CREATE TABLE pedido(
	codigo INT UNSIGNED NOT NULL AUTO_INCREMENT,
    aluno_codigo INT UNSIGNED,
    data_pedido DATE,
    hora DATETIME,
    PRIMARY KEY(codigo),
    CONSTRAINT FK_pedido_aluno FOREIGN KEY (aluno_codigo) REFERENCES aluno (codigo)
);

#PEDIDO (FK) | CURSO (FK) | VALOR
CREATE TABLE pedido_detalhe(
	pedido_codigo INT UNSIGNED,
    curso_codigo INT UNSIGNED,
    valor DOUBLE,
    CONSTRAINT FK_pedido_detalhe_pedido FOREIGN KEY (pedido_codigo) REFERENCES pedido(codigo),
    CONSTRAINT FK_pedido_detalhe_curso FOREIGN KEY (curso_codigo) REFERENCES curso(codigo)
);


