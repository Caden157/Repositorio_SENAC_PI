/*
Esta trigger irá ativar com insert na entidade aulas e irá atualizar o registro de duracao do curso com o referente id da tabela cursos.
O tempo de duração de todas as aulas de desse curso, será somado em minutos e registrado na coluna duracao de cursos.
*/
create trigger sum_tempoAula after insert on aulas
for each row
update cursos
set duracao =  (select sum(duracao)
			   from aulas
               where cursos.ID = aulas.fk_Cursos_ID);

/*
Esta trigger irá ativar com insert na entidade exercicios e irá atualizar o registro de estrelas do curso com o referente id da tabela
usuarios. Ela somará as estrelas com base nos acertos de questões.
*/
create trigger sum_estrelas after insert on exercicios
for each row
update usuarios
set estrelas = (select sum(acertos)
				from exercicios
                where usuarios.ID = exercicios.fk_Usuarios_ID);
