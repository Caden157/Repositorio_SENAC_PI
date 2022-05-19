CREATE USER 'DBASenior'@'%' IDENTIFIED BY 'MySQL_best_SGBD';

GRANT ALL PRIVILEGES ON ensino_gameficado.* TO 'DBASenior'@'%';

SHOW GRANTS FOR 'DBASenior'@'%';

CREATE USER 'DBAJunior'@'localhost' IDENTIFIED BY 'Variables_areOdd_inMySQL';

GRANT SELECT ON ensino_gameficado.* TO 'DBAJunior'@'localhost';

SHOW GRANTS FOR 'DBAJunior'@'localhost';

FLUSH PRIVILEGES;