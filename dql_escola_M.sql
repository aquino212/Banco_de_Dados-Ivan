USE db_escola_M;

SELECT nome FROM tb_escola;

--SELECT TOP limita aquantidade de registros
SELECT TOP 3 nome FROM tb_aluno;

--EXIBIR SOMENTE OS 3 REGISTROS  DO MAIS RECENTE PARA O MENOS RECENTE
SELECT TOP 3 nome
FROM tb_aluno
ORDER BY id DESC;

--EXIBIR SOMENTE O NOME DA TURMA DA MANHÃ
SELECT * FROM tb_turma

SELECT serie
FROM tb_turma
WHERE periodo = 'manhã';

--EXIBE A PROVA DO PROFESSOR Marcos
SELECT * FROM tb_prova
WHERE nome_professor = 'Marcos';

--EXIBE QUANTOS ALUNOS TEM 
SELECT COUNT(cpf) AS qtd_total_alunos FROM tb_aluno;

--EXIBE QUANTOS ALUNOS ESTÃO ATRELADOS A PROVA QUE PERTENCE A UMA MATERIA
SELECT COUNT(id_aluno) AS qtd_alunos_na_materia
FROM tb_prova
WHERE materia = 'matematica';

--EXIBE A DATA DE NASCIMENTO MAIS VELHA
SELECT MIN(data_nasc) FROM tb_aluno;

--EXIBE A DATA DE NASCIMENTO MAIS NOVA
SELECT MAX(data_nasc) FROM tb_aluno;

--EXIBE A DATA DE NASCIMENTO E O NOME DO ALUNO MAIS VELHO
SELECT nome, datanasc
FROM tb_aluno
WHERE data_nasc = (SELECT MIN (data_nasc)FROM tb_aluno);

--EXIBE A DATA DE NASCIMENTO MAIS NOVA
SELECT MAX(data_nasc) FROM tb_aluno;

--SOMA OS ID's DAS TURMAS CADASTRADAS
SELECT SUM(id) AS total FROM tb_turma;

--MEDIA DE NOTAS DE PROVA 
SELECT AVG(nota) AS media FROM tb_prova;

SELECT * FROM tb_prova;

--EXIBE OS ID's DOS MAIS NOVOS
SELECT MAX(data_nasc) AS mais_novo, id
FROM tb_aluno
GROUP BY id
ORDER BY mais_novo DESC;