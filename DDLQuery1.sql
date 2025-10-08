-- DDL
-- Criar o banco de dados
CREATE DATABASE db_devconnect;
GO

--Usar o banco
USE db_devconnect;

--Tabela Usuario
CREATE TABLE tb_usuario (
    id              INT IDENTITY(1,1) PRIMARY KEY,
    nome_completo   NVARCHAR(255) NOT NULL,
    nome_usuario    NVARCHAR(50)  UNIQUE NOT NULL,
    email           NVARCHAR(255) UNIQUE NOT NULL,
    senha           NVARCHAR(50)  NOT NULL,
    foto_perfil_url NVARCHAR(150) NULL
);

--Tabela Publicacao
CREATE TABLE tb_publicacao (
    id              INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario      INT NOT NULL REFERENCES tb_usuario(id),
    conteudo        NVARCHAR(MAX) NOT NULL,
    data_publicacao DATETIME
);

--Tabela Curtida
CREATE TABLE tb_curtida (
    id_usuario    INT NOT NULL REFERENCES tb_usuario(id),
    id_publicacao INT NOT NULL REFERENCES tb_publicacao(id),
    data_curtida  DATETIME,
    PRIMARY KEY (id_usuario, id_publicacao)
);

--Tabela Comentario
CREATE TABLE tb_comentario (
    id              INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario      INT NOT NULL REFERENCES tb_usuario(id),
    id_publicacao   INT NOT NULL REFERENCES tb_publicacao(id),
    conteudo        NVARCHAR(500) NOT NULL,
    data_comentario DATETIME
);

--
Tabela Seguidor (intermediária)
CREATE TABLE tb_seguidor (
    id_usuario_seguir  INT NOT NULL REFERENCES tb_usuario(id),
    id_usuario_seguido INT NOT NULL REFERENCES tb_usuario(id),
    PRIMARY KEY (id_usuario_seguir, id_usuario_seguido)
);
