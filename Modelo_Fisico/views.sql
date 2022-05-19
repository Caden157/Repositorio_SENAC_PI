CREATE VIEW ranking AS
SELECT nome, estrelas
FROM usuarios
ORDER BY estrelas desc
LIMIT 10;

SELECT * FROM ranking;