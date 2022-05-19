create trigger sum_tempoAula after insert on aulas
for each row
update cursos
set duracao =  (select sum(duracao)
			   from aulas
               where cursos.ID = aulas.fk_Cursos_ID);
               
create trigger sum_estrelas after insert on exercicios
for each row
update usuarios
set estrelas = (select sum(acertos)
				from exercicios
                where usuarios.ID = exercicios.fk_Usuarios_ID);