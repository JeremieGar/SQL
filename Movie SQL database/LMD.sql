--Question 1:
--Quel film est sorti en 1975 avec comme acteur Jack Nicholson?

SELECT DISTINCT nom FROM film_serie
INNER JOIN fiche ON film_serie.id_filmSerie = fiche.id_filmSerie
WHERE film_serie.id_filmSerie = (SELECT id_filmSerie FROM filmCasting
INNER JOIN casting ON filmCasting.id_cast = casting.id_cast
WHERE casting.nom = 'Jack Nicholson') AND fiche.dateSortie = TO_DATE('1975/11/19', 'yyyy/mm/dd');


--Question 2:
--Quel sont tous les genres que le réalisateur Christopher Nolan a interprété?

SELECT DISTINCT genre.nomgenre FROM 
((genre INNER JOIN filmGenre ON genre.numero_genre = filmGenre.id_genre) INNER JOIN
film_serie ON filmGenre.id_filmSerie = film_serie.id_filmSerie) INNER JOIN 
filmCasting ON film_serie.id_filmSerie = filmCasting.id_filmSerie
WHERE filmCasting.id_cast =(SELECT casting.id_cast FROM casting
WHERE casting.nom = 'Christopher Nolan');


--Question 3:
--Dans quel(s) film(s)/série(s) a participé Al Pacino et quelle est leurs dates de sorties?

SELECT DISTINCT film_serie.nom, fiche.dateSortie FROM
(film_serie INNER JOIN filmCasting ON film_serie.id_filmSerie = filmCasting.id_filmSerie)
INNER JOIN  fiche ON film_serie.id_filmSerie = fiche.id_filmSerie
WHERE filmCasting.id_cast = (SELECT casting.id_cast FROM casting
WHERE casting.nom = 'Al Pacino');


--Question 4:
--Quels sont les films (avec leur synopsis en anglais) qui ont été aimé par l’utilisatrice Lindsay Logan?

SELECT film_serie.nom, fiche.synopsis FROM 
((utilisateur INNER JOIN jaime ON utilisateur.id_utilisateur = jaime.id_utilisateur) INNER JOIN 
film_serie ON jaime.id_filmSerie = film_serie.id_filmSerie) INNER JOIN fiche ON film_serie.id_filmSerie = fiche.id_filmSerie 
WHERE utilisateur.nom = 'Logan' AND utilisateur.prenom = 'Lindsay' AND jaime.coeur = 1 AND fiche.Langue = 'English';


--Question 5:
--Quel sont les genres des films en marque pages de l’utilisateur qui possède le email Rfranklin@gmail.com?

SELECT DISTINCT genre.nomgenre FROM
((genre INNER JOIN filmGenre ON genre.numero_genre = filmGenre.id_genre) INNER JOIN
film_serie ON filmGenre.id_filmSerie = film_serie.id_filmSerie) INNER JOIN
marquePage ON film_serie.id_filmSerie = marquePage.id_filmSerie
WHERE marquePage.id_utilisateur = (SELECT utilisateur.id_utilisateur FROM utilisateur
WHERE utilisateur.email = 'Rfranklin@gmail.com');


--Question 6:
--Quel est la note moyenne du film ‘Parasite’?

SELECT AVG(jaime.rating) FROM film_serie 
INNER JOIN jaime ON film_serie.id_filmSerie = jaime.id_filmSerie
WHERE film_serie.nom = 'Parasite';


--Question 7:
--Quels sont les noms des films qui font partie du genre Guerre?

SELECT film_serie.nom FROM
(film_serie INNER JOIN filmGenre ON film_serie.id_filmSerie = filmGenre.id_filmSerie) 
INNER JOIN Genre ON filmGenre.id_genre = Genre.numero_genre
WHERE Genre.nomgenre = 'Guerre';


--Question 8:
--Quels sont les acteurs qui ont joué dans des films d’Action?

SELECT Casting.nom FROM 
((Casting INNER JOIN filmCasting ON Casting.id_cast = filmCasting.id_cast) INNER JOIN filmGenre ON filmCasting.id_filmSerie = filmGenre.id_filmSerie) INNER JOIN Genre ON filmGenre.id_genre = Genre.numero_genre
WHERE Genre.nomGenre = 'Action' AND Casting.fonction = 'acteur';


--Question 9:
--Quels films sont sortie entre 1990 et 2000?

SELECT DISTINCT film_serie.nom FROM
Film_serie INNER JOIN Fiche ON film_serie.id_filmSerie = fiche.id_filmSerie
WHERE fiche.DateSortie BETWEEN TO_DATE('1990/01/01', 'yyyy/mm/dd') AND TO_DATE('2000/12/31', 'yyyy/mm/dd'); 


--Question 10:
--Afficher le synopsis français de la trilogie “Seigneur des Anneaux”?

SELECT fiche.synopsis FROM 
film_serie INNER JOIN fiche ON film_serie.id_filmSerie = fiche.id_filmSerie
WHERE film_serie.nom LIKE 'The Lord of the Rings%' AND fiche.langue = 'Français';




