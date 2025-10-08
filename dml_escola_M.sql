--Comando para usar um banco já criado
USE db_escola_M;

--COMANDO PARA INSERIR UM NOVO REGISTRO
INSERT INTO tb_escola(nome, endereço)
VALUES('Moura Branco', 'Rua Tapajós, 1085 - Olímpico');

SELECT * FROM tb_escola;

--REGISTRO NA TABELAALUNO
INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola)
VALUES
('Ivan', '15023644469', '2007/05/24', '5RPkxjrHEh', 1),
('Dudu', '56162355047', '2009/08/12', '38bllyeZ8I', 1);

INSERT INTO tb_aluno(nome, cpf, data_nasc, matricula, id_escola)
VALUES
('Jamal', '20072355047', '2005/08/12', 'morant12', 1),
('Robs', '16163456047', '2004/08/12', '762blue', 1),
('Matias', '4438272934', '2000/04/12', 'Vampde500', 1);

SELECT * FROM tb_aluno;

--REGISTRO NA TABELA TURMA
INSERT INTO tb_turma(numero_sala, periodo, serie, id_escola)
VALUES
(102, 'Tarde', 1,  1),
(201, 'Manhã', 3, 1),
(202, 'Noite', 2,  1);

SELECT * FROM tb_turma;

--REGISTRO NA TABELA PROVA
INSERT INTO tb_prova(id_aluno, data_aplicacao, disciplina, nota,turma)
VALUES
(2, '2007/05/24', 'matematica', 10, '2_A');

SELECT * FROM tb_prova;

INSERT INTO tb_turma_prova(id_turma, id_prova)
VALUES (1, 2);

SELECT * FROM tb_turma_prova;

UPDATE tb_aluno
SET nome = 'Ivan'
WHERE cpf = '20072355047';

SELECT * FROM tb_aluno;

--COMANDO QUE EXCLUI UM REGISTRO
DELETE FROM tb_aluno
WHERE matricula = '762blue';
SELECT * FROM tb_aluno;

--EXIBE QUANTOS ALUNOS TEM 
SELECT COUNT(cpf) AS qtd_total_alunos FROM tb_aluno;



--select nome from tb_aluno;

