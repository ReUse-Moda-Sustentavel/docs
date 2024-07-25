CREATE DATABASE db_brecho_reuse;

USE db_brecho_reuse;

CREATE TABLE tb_categoria (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    genero VARCHAR(255)
);

CREATE TABLE tb_produto (
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_categoria INT NOT NULL,
    CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id),
    nome VARCHAR(255) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    preco DECIMAL(6,2) NOT NULL, -- 1000,00
    descricao VARCHAR(255),
    foto VARCHAR(500)
);

CREATE TABLE tb_usuario (
	id INT AUTO_INCREMENT PRIMARY KEY,
    conta  VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    senha  VARCHAR(255) NOT NULL,
    foto VARCHAR(500),
    tipo_usuario TEXT NOT NULL
);