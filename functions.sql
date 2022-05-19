CREATE FUNCTION exerLista (usr VARCHAR(255))
RETURNS VARCHAR(255) DETERMINISTIC
RETURN
(SELECT u.nome AS 'Usuário', c.nome AS 'Curso', e.nome, e.acertos, e.quant_questoes
FROM exercicios e
INNER JOIN cursos c, usuarios u
WHERE e.fk_Usuarios_ID = (SELECT ID
						  FROM usuarios
						  WHERE nome = usr AND c.ID = e.fk_Cursos_ID AND u.ID = e.fk_Usuarios_ID))