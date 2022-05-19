ALTER TABLE Certificados ADD CONSTRAINT FK_Certificados_2 
    FOREIGN KEY (fk_Cursos_ID)
    REFERENCES Cursos (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Certificados ADD CONSTRAINT FK_Certificados_3
    FOREIGN KEY (fk_Usuarios_ID)
    REFERENCES Usuarios (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Aulas ADD CONSTRAINT FK_Aulas_2 
    FOREIGN KEY (fk_Cursos_ID)
    REFERENCES Cursos (ID)
    ON DELETE RESTRICT;
    
ALTER TABLE Aulas ADD CONSTRAINT FK_Aulas_3
    FOREIGN KEY (fk_Modulos_ID)
    REFERENCES modulos (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Exercicios ADD CONSTRAINT FK_Exercicios_2
    FOREIGN KEY (fk_Usuarios_ID)
    REFERENCES Usuarios (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Exercicios ADD CONSTRAINT FK_Exercicios_3 
    FOREIGN KEY (fk_Cursos_ID)
    REFERENCES Cursos (ID)
    ON DELETE CASCADE;
 
ALTER TABLE cursos_categorias ADD CONSTRAINT FK_cursos_categorias_1 
    FOREIGN KEY (fk_Cursos_ID)
    REFERENCES Cursos (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE cursos_categorias ADD CONSTRAINT FK_cursos_categorias_2
    FOREIGN KEY (fk_Categorias_ID)
    REFERENCES Categorias (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE usuarios_cursos ADD CONSTRAINT FK_usuarios_cursos_1
    FOREIGN KEY (fk_Usuarios_ID)
    REFERENCES Usuarios (ID)
    ON DELETE SET NULL;
 
ALTER TABLE usuarios_cursos ADD CONSTRAINT FK_usuarios_cursos_2 
    FOREIGN KEY (fk_Cursos_ID)
    REFERENCES Cursos (ID)
    ON DELETE SET NULL;