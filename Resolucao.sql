-- 1
SELECT 
	Nome, Ano 
FROM Filmes

-- 2
SELECT
	Nome, Ano
FROM Filmes
ORDER BY Ano 

-- 3
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT * FROM Filmes
WHERE Ano = 1997

-- 5
SELECT * FROM Filmes
WHERE Ano > 2000

-- 6
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7
SELECT 
	Ano,
	COUNT(*) Quantidade 
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT 
	PrimeiroNome, 
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'M'

-- 9
SELECT 
	PrimeiroNome, 
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- 10
SELECT
	Filmes.Nome as Filme,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- 11
SELECT
	Filmes.Nome AS Filme,
	Generos.Genero
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

-- 12
SELECT
	Filmes.Nome AS Filme,
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
FROM ElencoFilme
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor

