--SQL

--Inserindo usuários na tabela tb_usuario
INSERT INTO tb_usuario (nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES
('Ivan Aquino', 'ivan_aq', 'ivan@email.com', 'senha123', 'https://exemplo.com/foto_aquino_2k07.jpg'),
('Maria Silva', 'maria_s', 'maria@email.com', 'senha456', 'https://exemplo.com/fotocopia2.jpg'),
('João Pereira', 'joao_p', 'joao@email.com', 'senha789', NULL);

SELECT * FROM tb_usuario


--Inserindo publicações na tabela tb_publicacao
INSERT INTO tb_publicacao (id_usuario, conteudo, data_publicacao)
VALUES
(1, 'Olá, esse é meu primeiro post!', '2025-10-01 10:00:00'),
(2, 'Compartilhando uma dica de programação.', '2025-10-01 10:00:00'),
(1, 'Aprendendo SQL Server é divertido!', '2025-10-02 10:00:00');

SELECT * FROM tb_publicacao;


--Inserindo curtidas na tabela tb_curtida
INSERT INTO tb_curtida (id_usuario, id_publicacao, data_curtida)
VALUES
(2, 1, '2025-10-01 10:00:00'),
(3, 1, '2025-10-01 10:00:00'),
(1, 2, '2025-10-01 10:00:00');

SELECT * FROM tb_curtida;


--Inserindo comentários na tabela tb_comentario
INSERT INTO tb_comentario (id_usuario, id_publicacao, conteudo, data_comentario)
VALUES
(2, 1, 'Parabéns pelo post!', '2025-10-01 10:00:00'),
(3, 1, 'Muito legal, Ivan!', '2025-10-01 10:00:00'),
(1, 2, 'Ótima dica, Maria!', '2025-10-01 10:00:00');

SELECT * FROM tb_comentario;


--Inserindo seguidores na tabela tb_seguidor
INSERT INTO tb_seguidor (id_usuario_seguir, id_usuario_seguido)
VALUES
(2, 1),
(3, 1),
(1, 2);

SELECT * FROM tb_seguidor;
