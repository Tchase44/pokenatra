DROP TABLE IF EXISTS pokemons;
DROP TABLE IF EXISTS trainers;

CREATE TABLE pokemons(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	cp INT,
	poke_type VARCHAR(50),
	img_url TEXT,
);

