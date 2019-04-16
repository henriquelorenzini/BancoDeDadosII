USE escola;

CREATE TABLE ALUNO(
	id INT(10) AUTO_INCREMENT,
	Nome VARCHAR(200) NOT NULL,
    Turma_id NUMERIC(10),
    PRIMARY KEY (id)
    );
    
    CREATE TABLE TURMA(
    id INT(10) AUTO_INCREMENT,
    Nome VARCHAR(200) NOT NULL,
    PRIMARY KEY (id)
    ); 
    
    
    INSERT INTO TURMA (id,Nome) VALUES (0001, "Turminha da bagunça");
    INSERT INTO TURMA (id,Nome) VALUES (0002, "Turma do Pagode");
    INSERT INTO TURMA (id,Nome) VALUES (0003, "Turma da Mônica");
    
    INSERT INTO ALUNO(id,Nome,Turma_id) VALUES (1111, "Jessica do Amarante", 0001);
    INSERT INTO ALUNO(id,Nome,Turma_id) VALUES (1112, "Henrique Lorenzini", 0001);
    INSERT INTO ALUNO(id,Nome,Turma_id) VALUES (1113, "Bruna Lopes", 0001);
    INSERT INTO ALUNO(id,Nome,Turma_id) VALUES (1114, "Mariah Pedrelli", 0001);
    INSERT INTO ALUNO(id,Nome,Turma_id) VALUES (1115, "Leonardo Fusinato", 0001);
    INSERT INTO ALUNO(id,Nome,Turma_id) VALUES (1116, "Elisa de Oliveira Fuck", 0001);
    INSERT INTO ALUNO(id,Nome,Turma_id) VALUES (1117, "Cintia Fernandes", 0001);
    INSERT INTO ALUNO(id,Nome,Turma_id) VALUES (1118, "Rafael Faccio", 0002);
    INSERT INTO ALUNO(id,Nome,Turma_id) VALUES (1119, "Pedro de Carvalho Isidio Santana", 0002);
    INSERT INTO ALUNO(id,Nome,Turma_id) VALUES (1120, "German Gregorio Ayala", 0002);
    INSERT INTO ALUNO(id,Nome,Turma_id) VALUES (1121, "Luis Momm", 0002);
    INSERT INTO ALUNO(id,Nome,Turma_id) VALUES (1122, "Sarah Hartman", 0002);
    INSERT INTO ALUNO(id,Nome,Turma_id) VALUES (1123, "Grocery Bot", 0002);
    INSERT INTO ALUNO(id,Nome) VALUES (1124, "Joãozinho joão");
    
    

-- 1) Escreva uma consulta que retorne o nome das turmas que não possuem alunos cadastrados em ordem alfabética pelo nome da turma.

	SELECT TURMA.NOME  AS "Nome da turma", 
    ALUNO.NOME AS "Nome do aluno"
	FROM TURMA
	LEFT JOIN ALUNO
	ON TURMA.ID = ALUNO.TURMA_ID
    WHERE ALUNO.NOME IS NULL
    ORDER BY TURMA.NOME;
    
    
 -- 2) Escreva uma consulta que retorne uma lista de alunos e a turma que estão cadastrados. A consulta deve retornar apenas os alunos cadastrados em uma turma.
   
   SELECT ALUNO.NOME AS "Nome do aluno",
    TURMA.NOME AS "Nome da turma"
	FROM ALUNO
	LEFT JOIN TURMA
	ON TURMA.ID = ALUNO.TURMA_ID
    WHERE TURMA.NOME IS NOT NULL;


-- 3) Escreva uma consulta que retorne uma lista de alunos e a turma que estão cadastrados. A consulta deve retornar inclusive os alunos que não se cadastraram em nenhuma turma

    SELECT ALUNO.NOME AS "Nome do aluno",
    TURMA.NOME AS "Nome da turma"
	FROM ALUNO
	LEFT JOIN TURMA
	ON TURMA.ID = ALUNO.TURMA_ID;
    
-- 4) Escreva uma consulta que retorne a quantidade de alunos por turma. Mostre o nome da turma e a quantidade de alunos.
	
    SELECT 
    TURMA.NOME AS "Nome da turma",
	COUNT(ALUNO.NOME) AS "Quantidade de alunos"
    FROM ALUNO
    RIGHT JOIN TURMA
    ON TURMA.ID = ALUNO.TURMA_ID
    GROUP BY (TURMA.NOME);
    
-- 5) Escreva uma consulta que mostre a quantidade de turmas que ainda não possuem alunos cadastrados.
	
    SELECT TURMA.NOME
    FROM TURMA
    LEFT JOIN ALUNO
	ON TURMA.ID = ALUNO.TURMA_ID
	WHERE ALUNO.turma_id IS NULL;
    
-- 6) Escreva uma consulta que retorne o nome dos alunos e o nome das turmas dos alunos que não se cadastraram e das turmas que não possuem alunos.
	    
    SELECT TURMA.NOME "Nome da turma",
    ALUNO.NOME "Nome do Aluno"
    FROM TURMA
    LEFT JOIN ALUNO
    ON ALUNO.turma_id = TURMA.id
    WHERE ALUNO.turma_id is null
    UNION
	SELECT TURMA.NOME "Nome da turma",
    ALUNO.NOME "Nome do Aluno"
    FROM TURMA
    RIGHT JOIN ALUNO
    ON ALUNO.turma_id = TURMA.id
    WHERE ALUNO.turma_id is null;
