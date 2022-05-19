DELIMITER $$
CREATE PROCEDURE insertUsuarios (uNome VARCHAR(255), uEmail VARCHAR(255), uSenha VARCHAR(255))
BEGIN
DECLARE checker BOOLEAN DEFAULT FALSE;
DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET checker = TRUE;
START TRANSACTION;
INSERT INTO usuarios
(nome, email, senha)
VALUES
(uNome, uEmail, md5(uSenha));
IF checker = FALSE THEN                                      
	SELECT 'Transação realizada com sucesso!' AS Feedback;
    COMMIT;
ELSE
	SELECT 'Falha na transação!' AS Feedback;
    ROLLBACK;
END IF;
END $$
DELIMITER ;

call insertUsuarios('Antônio Amargurido Alva', 'AntônioAmr5@gmail.com', 'jose123456');
select * from usuarios where id = 1001;

DELIMITER $$
CREATE PROCEDURE exerLista (usr VARCHAR(255))
BEGIN
SELECT u.nome AS 'Usuário', c.nome AS 'Curso', e.nome, e.acertos, e.quant_questoes
FROM exercicios e
INNER JOIN cursos c, usuarios u
WHERE e.fk_Usuarios_ID = (SELECT ID
						  FROM usuarios
						  WHERE nome = usr AND c.ID = e.fk_Cursos_ID AND u.ID = e.fk_Usuarios_ID);
END $$
DELIMITER ;

call exerLista('Tony Burtt');