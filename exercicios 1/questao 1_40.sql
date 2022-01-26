# 40 - Selecione todas as cidades dos países no qual se fala a língua ‘Dutch’

USE world;

SELECT * FROM country
INNER JOIN countrylanguage
on countrylanguage.CountryCode= Country.Code
inner join City
on city.CountryCode= Country.Code

WHERE countrylanguage.Language = 'Dutch';

