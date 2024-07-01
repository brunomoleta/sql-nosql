-- lista de filmes e suas categorias correspondentes

SELECT film.title AS titulo_filme, category.name AS categoria_filme
FROM film
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id;

-- todos os atores com o número filmes que cada ator
-- participou. Ordene a lista pelo numero de filmes, iniciando pelos atores que mais atuaram.

SELECT actor.actor_id AS artista_id, actor.first_name as artista_nome, actor.last_name as artista_sobrenome, COUNT(film_actor.film_id) as numero_filmes
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY artista_id
ORDER BY numero_filmes DESC;

--  lista de atores que atuaram em filmes com mais de duas horas de
--  duração (120min). Ordene a lista pelo numero de filmes que cada ator participou.

SELECT actor.actor_id AS artista_id, actor.first_name AS artista_nome, actor.last_name AS artista_sobrenome, COUNT(*) as numero_filmes
FROM actor
JOIN film_actor ON actor.actor_id = film_actor.actor_id
JOIN film ON film_actor.film_id = film.film_id
WHERE film.length >= 120
GROUP BY actor.actor_id
ORDER BY numero_filmes DESC;