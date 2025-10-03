--DML

--COLOCANDO PUBLICAÇÕES COLOCANDO DATA
INSERT INTO tb_publicacao (id_usuario, conteudo, data_publicacao)
VALUES
(1, 'Eae, to fazendo meu primeiro post!', '2025-10-03 10:00:00'),
(2, 'Compartilhando uma dica de programação.', '2025-10-03 10:00:00'),
(1, 'Aprendendo SQL Server com a Alexia e o Eduardo!', '2025-10-03 10:00:00');

--COLOCANDO CURTIDAS COM E A DATA
INSERT INTO tb_curtida (id_usuario, id_publicacao, data_curtida)
VALUES
(2, 1, '2025-10-03 10:00:00'),
(3, 1, '2025-10-03 10:00:00'),
(1, 2, '2025-10-03 10:00:00');

--COLOCANDO COMENTÁRIOS COM A DATA 
INSERT INTO tb_comentario (id_usuario, id_publicacao, conteudo, data_comentario)
VALUES
(2, 1, 'Parabéns pelo post!', '2025-10-03 10:00:00'),
(3, 1, 'Muito dahora, Ivan!', '2025-10-03 10:00:00'),
(1, 2, 'Valeu dica, Maria!', '2025-10-03 10:0:00');
