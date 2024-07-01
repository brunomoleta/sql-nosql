-- Crie uma consulta para cada consulta do exercício anterior que retorne o numero de registros
-- encontrados pela busca

-- lista de filmes

SELECT COUNT(*) as total_filmes
FROM film;

-- todos os atores

SELECT COUNT(*) AS total_artistas
FROM actor;

--  lista de atores que atuaram em filmes com mais de duas horas de
--  duração (120min). Ordene a lista pelo numero de filmes que cada ator participou.

SELECT COUNT(DISTINCT actor.actor_id) as total_artista_filmes_longos
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE film.length >= 120;