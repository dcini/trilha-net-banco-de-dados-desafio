/*
select * from Atores
select * from Filmes
select * from Generos
select * from ElencoFilme
select * from FilmesGenero
*/

-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano, duracao from Filmes order by ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, duracao from Filmes  where nome = 'de volta para o futuro'

-- 4 - Buscar os filmes lançados em 1997
select Nome, Ano, duracao from Filmes  where ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select Nome, Ano, duracao from Filmes  where ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, duracao from Filmes  where duracao > 100 and duracao < 150 order by duracao

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select ano, count(*) from Filmes group by ano order by 2 desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
Select id, PrimeiroNome, UltimoNome, Genero from Atores where genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
Select id, PrimeiroNome, UltimoNome, Genero from Atores where genero = 'F' order by PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
select 
	Filmes.Nome, 
	Generos.Genero 
from 
	Filmes
	join FilmesGenero on Filmes.id = FilmesGenero.idfilme
	join Generos on Generos.id = FilmesGenero.idgenero

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select 
	Filmes.Nome, 
	Generos.Genero 
from 
	Filmes
	inner join FilmesGenero on Filmes.id = FilmesGenero.idfilme
	inner join Generos on Generos.id = FilmesGenero.idgenero
where Generos.Genero = 'Misterio'


--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select 
	Filmes.Nome, 
	Atores.PrimeiroNome,
	Atores.UltimoNome,
	ElencoFilme.Papel
from 
	Filmes
	inner join ElencoFilme on Filmes.id = ElencoFilme.idfilme
	inner join Atores on Atores.id = ElencoFilme.idFilme
