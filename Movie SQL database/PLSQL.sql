set SERVEROUTPUT ON 
DECLARE
	nomActeur casting.nom%TYPE;
	nomFilm film_serie.nom%TYPE;
    compt INTEGER := 0;
	CURSOR film_curs IS
	SELECT film_serie.nom, casting.nom FROM (film_serie INNER JOIN filmCasting ON film_serie.id_filmSerie = filmCasting.id_filmSerie) INNER JOIN casting ON filmCasting.id_cast = casting.id_cast;

BEGIN
	OPEN film_curs;
    DBMS_OUTPUT.PUT_LINE('Les films réalisés par Christopher Nolan:');
	LOOP
		FETCH film_curs INTO nomFilm, nomActeur;
        EXIT WHEN film_curs%NOTFOUND;
		IF nomActeur = 'Christopher Nolan' THEN
            DBMS_OUTPUT.PUT_LINE(nomFilm);
			compt := compt+1;
		END IF;
	END LOOP;
    DBMS_OUTPUT.PUT_LINE('Pour un total de ' || compt || ' films.');
    CLOSE film_curs;
		
END;
/

CREATE OR REPLACE TRIGGER trig_count
AFTER DELETE OR INSERT on film_serie

DECLARE
Compt2 INTEGER;
BEGIN
	IF INSERTING THEN
		DBMS_OUTPUT.PUT_LINE('Insertion');
		SELECT COUNT(id_filmSerie) INTO compt2 FROM film_serie;
		DBMS_OUTPUT.PUT_LINE('La table a maintenant ' || compt2|| ' valeurs');
	END IF;
	IF DELETING THEN
		DBMS_OUTPUT.PUT_LINE('Suppression');
		SELECT COUNT(id_filmSerie) INTO compt2 FROM film_serie; 
		DBMS_OUTPUT.PUT_LINE('La table a maintenant ' || compt2|| ' valeurs');
	END IF;
END;
/

