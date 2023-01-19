/*CREATE TABLE film_serie
(
    id_filmSerie INTEGER NOT NULL,
    nom VARCHAR2(50),
    
    CONSTRAINT id_filmSerie_PK PRIMARY KEY (id_filmSerie)
)


CREATE TABLE casting
(
    id_cast INTEGER NOT NULL,
    nom VARCHAR2(30),
    fonction VARCHAR2(20),
    
    CONSTRAINT id_cast_PK PRIMARY KEY (id_cast)
)


CREATE TABLE fiche
(
    id_fiche INTEGER NOT NULL,
    id_filmSerie INTEGER,
    dateSortie DATE,
    synopsis VARCHAR2(350),
    langue VARCHAR2(15),
    
    CONSTRAINT id_fiche_PK PRIMARY KEY (id_fiche),
    CONSTRAINT FK_id_filmSerie FOREIGN KEY (id_filmSerie)
    REFERENCES film_serie(id_filmSerie)
)

CREATE TABLE filmCasting
(
    id_filmSerie INTEGER,
    id_cast INTEGER,
    fonction VARCHAR2(20),
    
    CONSTRAINT FK_id_filmSerie2 FOREIGN KEY (id_filmSerie)
    REFERENCES film_serie(id_filmSerie),
    CONSTRAINT FK_id_cast FOREIGN KEY (id_cast)
    REFERENCES casting(id_cast)
)

CREATE TABLE utilisateur
(
    id_utilisateur INTEGER NOT NULL,
    nom VARCHAR2(15),
    prenom VARCHAR2(15),
    email VARCHAR2(30),
    
    CONSTRAINT id_utilisateur_PK PRIMARY KEY (id_utilisateur)
)

CREATE TABLE genre
(
    numero_genre INTEGER NOT NULL,
    nomgenre VARCHAR2(20),
    
    CONSTRAINT numero_genre_PK PRIMARY KEY (numero_genre)
)

CREATE TABLE marquePage
(
    id_filmSerie INTEGER,
    id_utilisateur INTEGER,
    
    CONSTRAINT FK_id_filmSerie3 FOREIGN KEY (id_filmSerie)
    REFERENCES film_serie(id_filmSerie),
    CONSTRAINT FK_id_utilisateur FOREIGN KEY (id_utilisateur)
    REFERENCES utilisateur(id_utilisateur)
)

CREATE TABLE jaime
(
		id_utilisateur INTEGER NOT NULL,
		id_filmserie INTEGER NOT NULL,
		coeur INTEGER CHECK (coeur IN(0,1)), 
		rating INTEGER CHECK (rating IN(0,1,2,3,4,5)),
		
		CONSTRAINT FK_id_utilsateur2 FOREIGN KEY (id_utilisateur)
		REFERENCES utilisateur(id_utilisateur),
		CONSTRAINT FK_id_filmserie4 FOREIGN KEY (id_filmserie)
		REFERENCES film_serie(id_filmserie)
)

CREATE TABLE filmGenre
(
    id_filmSerie INTEGER,
    id_genre INTEGER,
    
    CONSTRAINT FK_id_filmSerie5 FOREIGN KEY (id_filmSerie)
    REFERENCES film_serie(id_filmSerie),
    CONSTRAINT FK_id_genre FOREIGN KEY (id_genre)
    REFERENCES genre(numero_genre)
)

INSERT ALL 
INTO film_serie (id_filmSerie, nom) VALUES (1, 'The Shawshank Redemption')
INTO film_serie (id_filmSerie, nom) VALUES (2, 'The Godfather')
INTO film_serie (id_filmSerie, nom) VALUES (3, 'The Godfather: Part 2')
INTO film_serie (id_filmSerie, nom) VALUES (4, 'The Dark Knight')
INTO film_serie (id_filmSerie, nom) VALUES (5, 'Schindler’’s List')
INTO film_serie (id_filmSerie, nom) VALUES (6, 'Pulp Fiction')
INTO film_serie (id_filmSerie, nom) VALUES (7, 'The Lord of the Rings: The Return of The King')
INTO film_serie (id_filmSerie, nom) VALUES (8, 'The Lord of the Rings: The Fellowship of the Ring')
INTO film_serie (id_filmSerie, nom) VALUES (9, 'Fight Club')
INTO film_serie (id_filmSerie, nom) VALUES (10, 'Forest Gump')
INTO film_serie (id_filmSerie, nom) VALUES (11, 'Inception')
INTO film_serie (id_filmSerie, nom) VALUES (12, 'Star Wars: Episode V - The Empire Strikes Back')
INTO film_serie (id_filmSerie, nom) VALUES (13, 'The Lord of the Rings: The Two Towers')
INTO film_serie (id_filmSerie, nom) VALUES (14, 'The Matrix')
INTO film_serie (id_filmSerie, nom) VALUES (15, 'Goodfellas')
INTO film_serie (id_filmSerie, nom) VALUES (16, 'One Flew Over the Cuckoo’’s Nest')
INTO film_serie (id_filmSerie, nom) VALUES (17, 'Se7en')
INTO film_serie (id_filmSerie, nom) VALUES (18, 'The Silence of the Lambs')
INTO film_serie (id_filmSerie, nom) VALUES (19, 'It is a Wonderful Life')
INTO film_serie (id_filmSerie, nom) VALUES (20, 'Star Wars')
INTO film_serie (id_filmSerie, nom) VALUES (21, 'Saving Private Ryan')
INTO film_serie (id_filmSerie, nom) VALUES (22, 'The Green Mile')
INTO film_serie (id_filmSerie, nom) VALUES (23, 'Interstellar')
INTO film_serie (id_filmSerie, nom) VALUES (24, 'The Usual Suspects')
INTO film_serie (id_filmSerie, nom) VALUES (25, 'The Lion King')
INTO film_serie (id_filmSerie, nom) VALUES (26, 'Westworld')
INTO film_serie (id_filmSerie, nom) VALUES (27, 'The Walking Dead')
INTO film_serie (id_filmSerie, nom) VALUES (28, 'Tiger King')
INTO film_serie (id_filmSerie, nom) VALUES (29, 'Ozark')
INTO film_serie (id_filmSerie, nom) VALUES (30, 'Star Trek: Picard')
INTO film_serie (id_filmSerie, nom) VALUES (31, 'The Mandalorian')
INTO film_serie (id_filmSerie, nom) VALUES (32, 'Better Call Saul')
INTO film_serie (id_filmSerie, nom) VALUES (33, 'The English Game')
INTO film_serie (id_filmSerie, nom) VALUES (34, 'Game of Thrones')
INTO film_serie (id_filmSerie, nom) VALUES (35, 'The Letter for the King')
INTO film_serie (id_filmSerie, nom) VALUES (36, 'Money Heist')
INTO film_serie (id_filmSerie, nom) VALUES (37, 'All American')
INTO film_serie (id_filmSerie, nom) VALUES (38, 'Grey''s Anatomy')
INTO film_serie (id_filmSerie, nom) VALUES (39, 'Freud')
INTO film_serie (id_filmSerie, nom) VALUES (40, 'Elite')
INTO film_serie (id_filmSerie, nom) VALUES (41, 'Homeland')
INTO film_serie (id_filmSerie, nom) VALUES (42, 'Hunters')
INTO film_serie (id_filmSerie, nom) VALUES (43, 'Peaky Blinders')
INTO film_serie (id_filmSerie, nom) VALUES (44, 'The Office')
INTO film_serie (id_filmSerie, nom) VALUES (45, 'Little Fires Everywhere')
INTO film_serie (id_filmSerie, nom) VALUES (46, 'Altered Carbon')
INTO film_serie (id_filmSerie, nom) VALUES (47, 'Vikings')
INTO film_serie (id_filmSerie, nom) VALUES (48, 'Outlander')
INTO film_serie (id_filmSerie, nom) VALUES (49, 'The Outsider')
INTO film_serie (id_filmSerie, nom) VALUES (50, 'Breaking Bad')
SELECT * FROM dual;

UPDATE film_serie
SET nom = 'Life is Beautiful'
WHERE nom = 'The Green Mile';

UPDATE film_serie
SET nom = 'Parasite'
WHERE nom = 'The Lion King';



INSERT ALL 
INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0101, 1, TO_DATE('1994/10/14', 'yyyy/mm/dd'), 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0102, 1, TO_DATE('1994/10/14', 'yyyy/mm/dd'),'Deux hommes emprisonnés se lient d''amitié aux cours des années. Ils trouvent réconfort et une éventuelle rédemption à travers de bonnes actions', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0201, 2, TO_DATE('1972/03/24', 'yyyy/mm/dd'), 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0202, 2, TO_DATE('1972/03/24', 'yyyy/mm/dd'), 'Le parrain d''une famille de crimes organisés doit transférer le contrôle de son empire clandestin à son fils réticent', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0301, 3, TO_DATE('1974/12/18', 'yyyy/mm/dd'), 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0302, 3, TO_DATE('1974/12/18', 'yyyy/mm/dd'), 'Exposition sur les débuts de Vito Corleone à New York, en 1920. Dans le présent, Michael développe et resserre son emprise sur le syndicat des familles du crimes organisés', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0401, 4, TO_DATE('2008/07/18', 'yyyy/mm/dd'), 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0402, 4, TO_DATE('2008/07/18', 'yyyy/mm/dd'),' Lorsque la menace connue sous le nom de Joker répend le chaos sur les gens de Gotham, Batman doit faire face à ses plus gros défis psychologiques et physiques pour combattre l''injustice.', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0501, 5, TO_DATE('1993/12/25', 'yyyy/mm/dd'), 'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0502, 5, TO_DATE('1993/12/25', 'yyyy/mm/dd'), 'En Pologne, pendant l''occupation allemande de la deuxième Guerre Mondiales, l''industrialist Oskar Schindler devient progressivement concerné à propos des juifs sur le marché du travail après avoir été témoins de leur persécution aux mains des Nazis', 'Français' )

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0601, 6, TO_DATE('1994/10/14', 'yyyy/mm/dd'), 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0602, 6, TO_DATE('1994/10/14', 'yyyy/mm/dd'), 'Les vies de deux tueurs à gages, un boxeur, un bandit et sa femme, et une pair de cambrioleurs s''entremêlent dans quatre récits de violences et rédemptions', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0701, 7, TO_DATE('2003/12/17', 'yyyy/mm/dd'), 'Gandalf and Aragorn lead the World of Men against Sauron''s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0702, 7, TO_DATE('2003/12/17', 'yyyy/mm/dd'), 'Gandalf et Aragorn mènent le Monde des Hommes contre l''armée de Sauron pour permettre à Frodon et Sam d''accomplir leur mission périlleuse; Détruire l''anneau unique', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0801, 8, TO_DATE('2001/12/19', 'yyyy/mm/dd'), 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0802, 8, TO_DATE('2001/12/19', 'yyyy/mm/dd'), 'Un simple Hobbit de la Comté et ses huits compagnions doivent traverser la Terre du Milieu afin de détruire l''anneau unique avant que l''armée de Sauron s''en empare', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0901, 9, TO_DATE('1999/10/15', 'yyyy/mm/dd'), 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (0902, 9, TO_DATE('1999/10/15', 'yyyy/mm/dd'), 'Un fonctionnaire insomniaque et fabricant de savon forment un club de combat illégal qui évolu de manière drastique.', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1001, 10, TO_DATE('1994/07/06', 'yyyy/mm/dd'), 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1002, 10, TO_DATE('1994/07/06', 'yyyy/mm/dd'), 'Les élections de Kennedy et Johnson, les événements du Vietnam, Watergate, et d''autres événements historiques nous somme dévoilés à travers la perspective d''un homme d''Alabama avec un QI de 75. Son seul désir étant d''être réuni avec son amour de jeunesse.', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1101, 11, TO_DATE('2010/07/16', 'yyyy/mm/dd'), 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1102, 11, TO_DATE('2010/07/16', 'yyyy/mm/dd'), 'Un homme vole des secrets corporatifs en utilisant un technologie de partage de rêve qui plante une idée dans le subconscient d''un PDG', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1201, 12, TO_DATE('1980/06/20', 'yyyy/mm/dd'), 'After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader and a bounty hunter named Boba Fett all over the galaxy.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1202, 12, TO_DATE('1980/06/20', 'yyyy/mm/dd'), 'Après que les Rebelles dû encaisser une défaite aux mains de l''Empire sur la planète Hoth, Luke Skywalker commence son entrainement de Jedi avec Yoda, pendant que ses amis sont pourchassés par Darth Vader et un mercenaire du nom de Boba Fett', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1301, 13, TO_DATE('2002/12/18', 'yyyy/mm/dd'), 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron''s new ally, Saruman, and his hordes of Isengard.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1302, 12, TO_DATE('2002/12/18', 'yyyy/mm/dd'), 'Pendant que Frodon et Sam se rapproche du Mordor avec l''aide de Gollum, la communauté, maintenant divisée, doit combattre le nouvel allié de Sauron, Saruman, et sa horde d''Isengard', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1401, 14, TO_DATE('1999/03/31', 'yyyy/mm/dd'), 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1402, 14, TO_DATE('1999/03/31', 'yyyy/mm/dd'), 'Un pirate informatique apprend d''un groupe de rebelles mystérieux à propos de la vraie nature de la réalité et de la guerre contre leurs maitre', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1501, 15, TO_DATE('1990/09/21', 'yyyy/mm/dd'), 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1502, 15, TO_DATE('1990/09/21', 'yyyy/mm/dd'), 'L''histoire de Henry Hill qui essait de cacher sa vie de gangster à sa femme, et ses partenaires de crime, Jimmy Conway et Tommy DeVito, dans syndicat de crimes organisés Italiona-Américain', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1601, 16, TO_DATE('1975/11/19', 'yyyy/mm/dd'), 'A criminal pleads insanity and is admitted to a mental institution, where he rebels against the oppressive nurse and rallies up the scared patients.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1602, 16, TO_DATE('1975/11/19', 'yyyy/mm/dd'), 'Un criminel plaide la folie et est admis dans une asile psychiatrique, où il se rebel contre son infirmière oppressive entraine les autres patients avec lui', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1701, 17, TO_DATE('1995/09/22', 'yyyy/mm/dd'), 'Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1702, 17, TO_DATE('1995/09/22', 'yyyy/mm/dd'), 'Deux détectives, un vétéran et un débutant, doivent chasser un tueur en série qui utilise les sept pêchés capitaux comme motifs pour meurtre.', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1801, 18, TO_DATE('1991/02/14', 'yyyy/mm/dd'), 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1802, 18, TO_DATE('1991/02/14', 'yyyy/mm/dd'), 'Une jeune cadet du F.B.I. doit recevoir l''aide d''un meurtrier cannibal incarcéré afin d''attraper un autre tueur en série.', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1901, 19, TO_DATE('1947/01/07', 'yyyy/mm/dd'), 'An angel is sent from Heaven to help a desperately frustrated businessman by showing him what life would have been like if he had never existed.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (1902, 19, TO_DATE('1947/01/07', 'yyyy/mm/dd'), 'Un ange est envoyé du Paradis pour aider un homme d''affaire furieux à voir la vie sans son existence', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2001, 20, TO_DATE('1977/05/25', 'yyyy/mm/dd'), 'Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a Wookiee and two droids to save the galaxy from the Empire''s world-destroying battle station, while also attempting to rescue Princess Leia from the mysterious Darth Vader.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2002, 20, TO_DATE('1977/05/25', 'yyyy/mm/dd'), 'Luke Skywalker se joint à un chevalier Jedi, un pilote chevronné, un Wookiee et deux androides pour sauver la galaxy d''un vaisseau pouvant détruire des planète, tout en tentant de sauver la Princess Leia du mystérieux Darth Vader', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2101, 21, TO_DATE('1998/07/24', 'yyyy/mm/dd'), 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2102, 21, TO_DATE('1998/07/24', 'yyyy/mm/dd'), 'À la suite du Débarquement de Normandy, un groupe de soldats Américains doivent franchir les lignes enemies afin de sauver un parachutiste dont les frères sont tous mort au front', 'Français')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2201, 22, TO_DATE('1997-12-20', 'yyyy/mm/dd'), 'When an open-minded Jewish librarian and his son become victims of the Holocaust, he uses a perfect mixture of will, humor, and imagination to protect his son from the dangers around their camp.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2202, 22, TO_DATE('1997-12-20', 'yyyy/mm/dd'), 'Lorsqu''un bibliothécaire juif à l''esprit ouvert et son fils deviennent victimes de l''Holocauste, il utilise un mélange parfait de volonté, d''humour et d''imagination pour protéger son fils des dangers qui entourent leur camp.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2301, 23, TO_DATE('2014-11-07', 'yyyy/mm/dd'), 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2302, 23, TO_DATE('2014-11-07', 'yyyy/mm/dd'), 'Une équipe d''explorateurs parcourt un wormhole dans l''espace pour tenter de garantir la survie de l''humanité.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2401, 24, TO_DATE('1995-08-16', 'yyyy/mm/dd'), 'A sole survivor tells of the twisty events leading up to a horrific gun battle on a boat, which began when five criminals met at a seemingly random police lineup.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2402, 24, TO_DATE('1995-08-16', 'yyyy/mm/dd'), 'Un seul survivant raconte les événements sinueux qui ont conduit à une horrible bataille d''armes à feu sur un bateau, qui a commencé lorsque cinq criminels se sont rencontrés dans une formation de police apparemment aléatoire.','Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2501, 25, TO_DATE('2019-11-09', 'yyyy/mm/dd'), 'A poor family, the Kims, con their way into becoming the servants of a rich family, the Parks. But their easy life gets complicated when their deception is threatened with exposure.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2502, 25, TO_DATE('2019-11-09', 'yyyy/mm/dd'), 'Une famille pauvre, les Kims, se trompent un chemin pour devenir les serviteurs d''une famille riche, les Parcs. Mais leur vie facile se complique lorsque leur tromperie est menacée d''exposition.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2601, 26, TO_DATE('2016-09-30', 'yyyy/mm/dd'), 'Set at the intersection of the near future and the reimagined past, explore a world in which every human appetite can be indulged without consequence', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2602, 26, TO_DATE('2016-09-30', 'yyyy/mm/dd'), 'Placé entre un future proche et un passé réimaginé, explorés un monde dans lequel tout appetits humain peuvent etre satisfaits sans consequences', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2701, 27, TO_DATE('2010-10-31', 'yyyy/mm/dd'), 'Sheriff Deputy Rick Grimes wakes up from a coma to learn the world is in ruins, and must lead a group of survivors to stay alive.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2702, 27, TO_DATE('2010-10-31', 'yyyy/mm/dd'), 'Député Shérif Rick Grimes se réveille d''un coma et apprend que le monde est en ruines. Il doit maintenant mener un groupe afin de survivre.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2801, 28, TO_DATE('2020-03-20', 'yyyy/mm/dd'), 'A rivalry between big cat eccentrics takes a dark turn when Joe Exotic, a controversial animal park boss, is caught in a murder-for-hire plot.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2802, 28, TO_DATE('2020-03-20', 'yyyy/mm/dd'), 'Une rivalité entre fans de gros chats devient dangereux quand Joe Exotic, un chef de parc controversé, est trouvé d''être dans un complot de meurtre.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2901, 29, TO_DATE('2017-07-21', 'yyyy/mm/dd'), 'A financial adviser drags his family from Chicago to the Missouri Ozarks, where he must launder money to appease a drug boss.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (2902, 29, TO_DATE('2017-07-21', 'yyyy/mm/dd'), 'Un conseiller financier sort sa famille de Chicago pour aller vivre dans les Ozarks de Missouri, où il doit blanchir de l''argent pour le chef de la mafia.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3001, 30, TO_DATE('2020-01-13', 'yyyy/mm/dd'), 'Follow-up series to Star Trek: The Next Generation (1987) and Star Trek: Nemesis (2002) that centers on Jean-Luc Picard (Sir Patrick Stewart) in the next chapter of his life.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3002, 30, TO_DATE('2020-01-13', 'yyyy/mm/dd'), 'Suivant l''histoire Star Trek: The Next Generation (1987) et Star Trek: Nemesis (2002) qui se centre sur Jean-Luc Picard (Sir Patrick Stewart) durant le prochain chapitre de sa vie', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3101, 31, TO_DATE('2019-11-12' ,'yyyy/mm/dd'), 'The travels of a lone bounty hunter in the outer reaches of the galaxy, far from the authority of the New Republic ', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3102, 31, TO_DATE('2019-11-12' ,'yyyy/mm/dd'), 'L''aventure d''un chasseur de primes dans les tronçons extérieurs de la galaxie, loin de l''autorité de la Nouvelle République', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3201, 32, TO_DATE('2015-02-08', 'yyyy/mm/dd'), 'The trials and tribulations of criminal lawyer Jimmy McGill in the time before he established his strip-mall law office in Albuquerque, New Mexico.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3202, 32, TO_DATE('2015-02-08', 'yyyy/mm/dd'), 'Les difficultés de l''avocat criminel Jimmy McGill dans les temps avant qu''il établit son bureau d''avocat à Albuquerque, New Mexico.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3301, 33, TO_DATE('2020-03-20', 'yyyy/mm/dd'), 'The story of the invention of football and how it quickly rose to become the world''s game by crossing class divides.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3302, 33, TO_DATE('2020-03-20', 'yyyy/mm/dd'), 'L''histoire de l''invention du football et comment sa il a rapidement atteint la popularité en ignorant les divisions de classe.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3401, 34, TO_DATE('2011-04-17', 'yyyy/mm/dd'), 'Nine noble families fight for control over the lands of Westeros, while an ancient enemy returns after being dormant for millennia.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3402, 34, TO_DATE('2011-04-17', 'yyyy/mm/dd'), 'Neuf familles nobles se battent pour le contrôle des régions de Westeros, pendant qu''un ennemie ancien revient après un sommeille durant plusieures décennies.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3501, 35, TO_DATE('2020-03-20', 'yyyy/mm/dd'), 'Tiuri, a teenage squire, answers a call for help that sends him on a perilous mission across the three kingdoms to deliver a secret letter to the King.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3502, 35, TO_DATE('2020-03-20', 'yyyy/mm/dd'), 'Tiuri, un ecuyer adolescent, réponds à un appel d''aide qui l''envoi sur une mission dangereuse à travers les trois royaumes pour livrer un message secret au Roi', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3601, 36, TO_DATE('2017-05-02', 'yyyy/mm/dd'), 'A group of unique robbers assault the Factory of Moneda and Timbre to carry out the most perfect robbery in the history of Spain and take home 2.4 billion euros.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3602, 36, TO_DATE('2017-05-02', 'yyyy/mm/dd'), 'Un groupe de voleurs attaquent la Factory of Moneda and Timbre afin d''exécuter le braquage le plus parfait dans l''histoire de l''Espagne et prendre 2.4 million d''euros', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3701, 37, TO_DATE('2018-10-10', 'yyyy/mm/dd'), 'When a star high school football player from South Central is recruited to play for Beverly Hills High School, two separate worlds collide.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3702, 37, TO_DATE('2018-10-10', 'yyyy/mm/dd'), 'Quand une star de football américain de South Central est recruté pour jouer pour l''école secondaire Beverly Hills, deux mondes se croisent', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3801, 38, TO_DATE('2005-03-27', 'yyyy/mm/dd'), 'A drama centered on the personal and professional lives of five surgical interns and their supervisors.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3802, 38, TO_DATE('2005-03-27', 'yyyy/mm/dd'), 'Un drame centré sur la vie personnelle et professionnelle de cinq stagiaires en chirurgie et de leurs superviseurs', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3901, 39, TO_DATE('2020-02-24', 'yyyy/mm/dd'), 'Young psychoanalyst, Sigmund Freud, investigates a murder conspiracy in 1880''s Vienna.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (3902, 39, TO_DATE('2020-02-24', 'yyyy/mm/dd'), 'Le jeune psychanalyste, Sigmund Freud, enquête sur un complot de meurtre dans la Vienne de 1880.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4001, 40, TO_DATE('2020-02-07', 'yyyy/mm/dd'), 'After their father is murdered under mysterious circumstances, the three Locke siblings and their mother move into their ancestral home, Keyhouse, which they discover is full of magical keys that may be connected to their father''s death.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4002, 40, TO_DATE('2020-02-07', 'yyyy/mm/dd'), 'Après que leur père a été assassiné dans des circonstances mystérieuses, les trois frères et sœurs Locke et leur mère emménagent dans leur maison ancestrale, Keyhouse, qu''ils découvrent est plein de clés magiques qui peuvent être liées à la mort de leur père.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4101, 41, TO_DATE('2011-11-02', 'yyyy/mm/dd'), 'A bipolar CIA operative becomes convinced a prisoner of war has been turned by al-Qaeda and is planning to carry out a terrorist attack on American soil.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4102, 41, TO_DATE('2011-11-02', 'yyyy/mm/dd'), 'Un agent bipolaire de la CIA devient convaincu qu''un prisonnier de guerre a été transformé par Al-Qaïda et prévoit de mener une attaque terroriste sur le sol américain.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4201, 42, TO_DATE('2020-02-21', 'yyyy/mm/dd'), 'In 1977, in New York City, a troubled young Jewish man bent on revenge is taken in by a secret group of Nazi hunters fighting a clandestine war against the cabal of high-ranking Nazi officials in hiding who work to create the Fourth Reich.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4202, 42, TO_DATE('2020-02-21', 'yyyy/mm/dd'), 'Après que leur père a été assassiné dans des circonstances mystérieuses, les trois frères et sœurs Locke et leur mère emménagent dans leur maison ancestrale, Keyhouse, qu''ils découvrent est plein de clés magiques qui peuvent être liées à la mort de leur père.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4301, 43, TO_DATE('2020-09-12', 'yyyy/mm/dd'), 'A gangster family epic set in 1919 Birmingham, England; centered on a gang who sew razor blades in the peaks of their caps, and their fierce boss Tommy Shelby.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4302, 43, TO_DATE('2020-09-12', 'yyyy/mm/dd'), 'Une épopée de famille de gangsters qui s''est déroulée en 1919 à Birmingham, en Angleterre; centrée sur un gang qui coud des lames de rasoir dans les sommets de leurs casquettes, et leur féroce patron Tommy Shelby.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4401, 44, TO_DATE('2005-03-25', 'yyyy/mm/dd'), 'A mockumentary on a group of typical office workers, where the workday consists of ego clashes, inappropriate behavior, and tedium.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4402, 44, TO_DATE('2005-03-25', 'yyyy/mm/dd'), 'Un mockumentary sur un groupe de travailleurs de bureau typiques, où la journée de travail se compose de conflits d''ego, comportement inapproprié, et l''ennui.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4501, 45, TO_DATE('2002-03-18', 'yyyy/mm/dd'), 'Based on Celeste Ng''s 2017 bestseller, "Little Fires Everywhere" follows the intertwined fates of the picture-perfect Richardson family and the enigmatic mother and daughter who upend their lives.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4502, 45, TO_DATE('2002-03-18', 'yyyy/mm/dd'), 'Basé sur le best-seller 2017 de Celeste Ng, "Little Fires Everywhere" suit les destins entrelacés de la famille parfaite image Richardson et la mère et la fille énigmatiques qui bouleversent leur vie.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4601,46, TO_DATE('2018-01-18', 'yyyy/mm/dd'), 'Set in a future where consciousness is digitized and stored, a prisoner returns to life in a new body and must solve a mind-bending murder to win his freedom.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4602,46, TO_DATE('2018-01-18', 'yyyy/mm/dd'), 'Placé dans un futur où la conscience est numérisée et stockée, un prisonnier retourne à la vie dans un nouveau corps et doit résoudre un meurtre tordu pour gagner sa liberté.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4701,47, TO_DATE('2013-03-03', 'yyyy/mm/dd'), 'Vikings transports us to the brutal and mysterious world of Ragnar Lothbrok, a Viking warrior and farmer who yearns to explore and raid the distant shores across the ocean.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4702,47, TO_DATE('2013-03-03', 'yyyy/mm/dd'), 'Les Vikings nous transportent dans le monde brutal et mystérieux de Ragnar Lothbrok, un guerrier viking et fermier qui aspire à explorer et piller les rivages lointains à travers l''océan.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4801,48, TO_DATE('2014-08-14', 'yyyy/mm/dd'), 'An English combat nurse from 1945 is mysteriously swept back in time to 1743.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4802,48, TO_DATE('2014-08-14', 'yyyy/mm/dd'), 'Une infirmière de combat anglaise de 1945 est mystérieusement remontée dans le temps jusqu''en 1743.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4901, 49, TO_DATE('2020-01-12', 'yyyy/mm/dd'), 'Investigators are confounded over an unspeakable crime that''s been committed.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (4902, 49, TO_DATE('2020-01-12', 'yyyy/mm/dd'), 'Les enquêteurs sont déconcertés par un crime innommable qui a été commis.', 'Francais')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (5001, 50, TO_DATE('2008-01-20', 'yyyy/mm/dd'), 'A high school chemistry teacher diagnosed with inoperable lung cancer turns to manufacturing and selling methamphetamine in order to secure his family''s future.', 'English')

INTO fiche (ID_Fiche, ID_FilmSerie, DateSortie, Synopsis, Langue)
VALUES (5002, 50, TO_DATE('2008-01-20', 'yyyy/mm/dd'), 'Un professeur de chimie du secondaire atteint d''un cancer du poumon inopérable se tourne vers la fabrication et la vente de méthamphétamine afin d''assurer l''avenir de sa famille.', 'Francais')
SELECT * FROM dual;


INSERT ALL
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(001, 'Carlson', 'Simon', 'Scarlson@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(002, 'Cassandra', 'Alexander', 'Calexander@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(003, 'Delia', 'Blair', 'Dblair@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(004, 'Brock', 'Veronica', 'Vbrock@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(005, 'Mclaughlin', 'Marion', 'Mmclaughlin@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(006, 'Baker', 'Randal', 'Rbaker@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(007, 'Cook', 'Leona', 'Lcook@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(008, 'Alvarado', 'Joyce', 'Jalvarado@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(009, 'Carpenter', 'Lorraine', 'Lcarptenter@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(010, 'Santos', 'Amelia', 'Asantos@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(011, 'Mcgee', 'Alyssa', 'Amcgee@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(012, 'Becker', 'Alan', 'Abecker@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(013, 'Philips', 'Ellen', 'Ephilips@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(014, 'Bowers', 'Connie', 'Cbowers@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(015, 'Edwards', 'Matthew', 'MEdwards@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(016, 'Peters', 'Lynne', 'Lpeters@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(017, 'Franklin', 'Reginald', 'Rfranklin@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(018, 'Ramirez', 'Eddie', 'ERamirez@gmail.com') 
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(019, 'Bryant', 'James', 'Jbryant@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(020, 'Wright', 'Austin', 'Awright@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(021, 'Morrison', 'Jackie', 'Jmorrison@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(022, 'Elliott', 'Terrence', 'Telliot@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(023, 'Sanders', 'Johnnie', 'Jsanders@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(024, 'Dustin', 'Maritnez', 'Mdustin@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(025, 'Warner', 'Wilfred', 'Wwarner@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(026, 'Norton', 'Erika', 'Enorton@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(027, 'Jimenez', 'Olie', 'Ojimenez@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(028, 'Morales', 'Regina', 'Rmorales@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(029, 'Barton', 'Jackie', 'Jbarton@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(030, 'Colle', 'Mitchelle', 'Mcolle@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(031, 'Pratt', 'Ross', 'Rpratt@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(032, 'Gilbert', 'Sam', 'Sgilbert@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(033, 'Christopher', 'Vargas', 'Vchristopher@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(034, 'Blake', 'Loren', 'Lblake@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(035, 'Stone', 'Brian', 'Bstone@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(036, 'Aubrey', 'Stevens', 'Saubrey@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(037, 'Evans', 'Beckey', 'Bevans@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(038, 'Nichols', 'Bradford', 'Bnichols@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(039, 'Spencer', 'Wilma', 'Wspencer@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(040, 'Gordon', 'Jody', 'JGordon@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(041, 'Abbott', 'Chester', 'Cabbott@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(042, 'Logan', 'Lindsay', 'Llogan@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(043, 'Nunez', 'Veron', 'Vnunez@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(044, 'Hicks', 'May', 'Mhicks@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(045, 'White', 'Jeremiah', 'JWhite@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(046, 'Cooper', 'Dania', 'Dcooper@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(047, 'Mckormick', 'Freda', 'Fmckormick@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(048, 'Maldonado', 'Elvira', 'Emaldonado@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(049, 'Ballard', 'Janis', 'JBallard@gmail.com')
INTO utilisateur(id_utilisateur, nom, prenom, email) VALUES(050, 'Steele', 'Victoria', 'Vsteele@gmail.com') 
SELECT * FROM dual;


INSERT ALL 
INTO Genre (numero_genre, nomgenre) VALUES (401, 'Action')
INTO Genre (numero_genre, nomgenre) VALUES (402, 'Aventure')
INTO Genre (numero_genre, nomgenre) VALUES (403, 'Animation')
INTO Genre (numero_genre, nomgenre) VALUES (404, 'Biographie')
INTO Genre (numero_genre, nomgenre) VALUES (405, 'Comedie')
INTO Genre (numero_genre, nomgenre) VALUES (406, 'Crime')
INTO Genre (numero_genre, nomgenre) VALUES (407, 'Documentaire')
INTO Genre (numero_genre, nomgenre) VALUES (408, 'Drame')
INTO Genre (numero_genre, nomgenre) VALUES (409, 'Famille')
INTO Genre (numero_genre, nomgenre) VALUES (410, 'Fantaisie')
INTO Genre (numero_genre, nomgenre) VALUES (411, 'Game-Show')
INTO Genre (numero_genre, nomgenre) VALUES (412, 'Histoire')
INTO Genre (numero_genre, nomgenre) VALUES (413, 'Horreur') 
INTO Genre (numero_genre, nomgenre) VALUES (414, 'Musique') 
INTO Genre (numero_genre, nomgenre) VALUES (415, 'Musical') 
INTO Genre (numero_genre, nomgenre) VALUES (416, 'Mystere')
INTO Genre (numero_genre, nomgenre) VALUES (417, 'Nouvelles') 
INTO Genre (numero_genre, nomgenre) VALUES (418, 'Tele-Realité') 
INTO Genre (numero_genre, nomgenre) VALUES (419, 'Romantique') 
INTO Genre (numero_genre, nomgenre) VALUES (420, 'Science Fiction')
INTO Genre (numero_genre, nomgenre) VALUES (421, 'Court') 
INTO Genre (numero_genre, nomgenre) VALUES (422, 'Sport') 
INTO Genre (numero_genre, nomgenre) VALUES (423, 'Talk Show')
INTO Genre (numero_genre, nomgenre) VALUES (424, 'Thriller')
INTO Genre (numero_genre, nomgenre) VALUES (425, 'Guerre')
INTO Genre (numero_genre, nomgenre) VALUES (426, 'Western')
SELECT * FROM dual;


INSERT ALL
INTO casting (id_cast, nom, fonction) VALUES (501, 'Morgan Freeman', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (502, 'Tim Robbins', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (503, 'Morgan Freeman', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (504, 'Rod Brennan', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (505, 'Frank Darabont', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (506, 'Al Pacino', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (507, 'Marlon Brando', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (508, 'Jared Carlson', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (509, 'Francis Ford Coppola', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (510, 'Robert DeNiro', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (511, 'Michael V. Gazzo', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (512, 'Christian Bale', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (513, 'Heath Ledger', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (514, 'Christopher Nolan', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (515, 'Jesse Peino', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (516, 'Kevin Costner', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (517, 'Steven Spielberg', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (518, 'David Schumer', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (519, 'Viggo Mortensen', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (520, 'Elijah Wood', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (521, 'Peter Jackson', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (522, 'Andy Serkis', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (523, 'Bruce Willis', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (524, 'John Travolta', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (525, 'Quentin Tarantino', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (526, 'Cliff Booth', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (527, 'Brad Pitt', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (528, 'Edward Norton', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (529, 'David Fincher', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (530, 'Marla Singer', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (531, 'Tom Hanks', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (532, 'Robin Wright', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (533, 'Robert Zemeckis', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (534, 'Tom Hardy', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (535, 'Leonardo DiCaprio', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (536, 'Robert Fischer', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (537, 'Harrison Ford', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (538, 'Carrie Fisher', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (539, 'Han Solo', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (540, 'Keanu Reeves', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (541, 'Hugo Weaving', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (542, 'Lana Wachowski', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (543, 'Lilly Wachowsi', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (544, 'Joe Pesci', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (545, 'Ray Liotta', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (546, 'Martin Scorcese', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (547, 'Henry Hill', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (548, 'Anthony Hopkins', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (550, 'Hannibal Lecter', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (551, 'James Stewart', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (552, 'Frank Capra', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (553, 'George Bailey', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (554, 'Matt Damon', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (555, 'Michael Clarke Duncan', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (556, 'John Coffey', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (557, 'Matthew McConaughey', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (558, 'Anne Hathaway', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (559, 'Kevin Spacey', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (560, 'Benicio Del Toro', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (561, 'Bryan Singer', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (562, 'Milos Forman', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (563, 'Jack Nicholson', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (564, 'Louise Fletcher', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (565, 'R.P. McMurphy', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (566, 'Jonathan Demme', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (567, 'Jon Favreau', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (568, 'Jonathan Nolan', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (569, 'Ed Harris', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (570, 'Evan Rachel Wood', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (571, 'Andrew Lincoln', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (572, 'Norman Reedus', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (573, 'Norman Reedus', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (574, 'Rick Grimes', 'technique')
INTO casting (id_cast, nom, fonction) VALUES (575, 'Joe Exotic', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (576, 'Carole Baskin', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (577, 'Bill Dubuque', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (578, 'Jason Bateman', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (579, 'Laura Linney', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (580, 'Akiva Godlsman', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (581, 'Patrick Stewart', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (582, 'Alison Pill', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (583, 'Pedro Pascal', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (584, 'Carl Weathers', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (585, 'Vince Gilligan', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (586, 'Bob Odenkirk', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (587, 'Jonathan Banks', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (588, 'Edward Holcroft', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (589, 'Kevin Guthries', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (590, 'Tim Fywell', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (591, 'David Benioff', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (592, 'Peter Dinklage', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (593, 'Lena Headey', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (594, 'William Davies', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (595, 'Amir Wilson', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (596, 'Thaddea Graham', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (597, 'Alex Pina', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (598, 'Ursula Corbero', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (599, 'Alvaro Morte', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (600, 'April Blair', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (601, 'Daniel Ezra', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (602, 'Samantha Logan', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (603, 'Shonda Rhimes', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (604, 'Ellen Pompeo', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (605, 'Chandra Wilson', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (606, 'Marvin Kren', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (607, 'Robert Finster', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (608, 'Ella Rumpf', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (609, 'Meredith Averill', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (610, 'Darby Stanchfied', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (611, 'Connor Jessup', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (612, 'Alex Gansa', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (613, 'Clair Danes', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (614, 'Mandy Patinkin', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (615, 'David Weil', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (616, 'Logan Leman', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (617, 'Steven Knight', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (618, 'Cillian Murphy', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (619, 'Paul Anderson', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (620, 'Ricky Gervais', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (621, 'Steve Carell', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (622, 'Jenna Fischer', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (623, 'Liz Tigelaar', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (624, 'Reese Witherspoon', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (625, 'Laeta Kalogridis', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (626, 'Chris Conner', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (627, 'Michael Hirst', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (628, 'Katheryn Winnick', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (629, 'Ronald D. Moore', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (630, 'Caitriona Balfe', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (631, 'Richard Price', 'realisateur')
INTO casting (id_cast, nom, fonction) VALUES (632, 'Ben Mendelsohn', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (633, 'Bryan Cranston', 'acteur')
INTO casting (id_cast, nom, fonction) VALUES (634, 'Aaron Paul', 'acteur')
SELECT * FROM dual;

UPDATE casting
SET nom = 'Stephen King'
WHERE id_cast = 503;

UPDATE casting 
SET fonction = 'écrivain'
WHERE id_cast = 503;

UPDATE casting
SET nom = 'JRR Tolkien'
WHERE id_cast = 573;

UPDATE casting
SET fonction = 'écrivain'
WHERE id_cast = 573;

UPDATE casting
SET nom = 'Liam Neeson'
WHERE nom = 'Kevin Costner';



INSERT ALL
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (1, 006)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (1, 017)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (2, 036)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (3, 044)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (4, 020)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (4, 047)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (5, 049)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (8, 005)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (8, 027)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (8, 017)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (9, 037)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (9, 015)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (10, 045)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (11, 044)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (11, 021)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (12, 008)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (14, 005)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (16, 015)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (18, 042)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (19, 039)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (19, 041)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (20, 001)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (20, 017)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (24, 049)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (25, 050)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (25, 014)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (27, 022)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (27, 043)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (28, 034)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (29, 031)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (31, 028)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (33, 033)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (34, 040)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (37, 030)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (39, 020)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (41, 021)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (42, 049)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (42, 034)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (45, 014)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (46, 017)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (47, 008)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (47, 003)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (48, 019)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (48, 029)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (49, 036)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (49, 047)
INTO marquePage(id_filmSerie, id_utilisateur) VALUES (50, 012)
SELECT * FROM dual;

INSERT ALL
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 001, 25, 1, 4)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 001, 32, 1, 3)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 001, 12, 1, 5)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 001, 50, 1, 5)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 001, 9, 0, 2)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 001, 3, 0, 2)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 014, 32, 0, 1)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 014, 9, 0, 3) 
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 014, 25, 1, 5)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 014, 12,1, 4)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 014, 46, 1, 4)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 014, 3, 1, 3)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 042, 25, 1, 5)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 042, 29, 1, 5)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 042, 43, 1, 5)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 042, 3, 1, 4)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 042, 13, 0, 1)
INTO jaime (id_utilisateur, id_filmserie, coeur, rating) VALUES ( 042, 9, 0, 3)
SELECT * FROM dual;


INSERT ALL
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (1, 501, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (1, 502, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (1, 503, 'ecrivain')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (1, 504, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (1, 505, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (2, 506, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (2, 507, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (2, 508, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (2, 509, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (3, 506, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (3, 510, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (3, 509, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (3, 511, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (4, 512, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (4, 513, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (4, 514, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (4, 515, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (5, 516, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (5, 517, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (5, 518, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (6, 523, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (6, 524, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (6, 525, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (6, 525, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (6, 526, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (7, 519, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (7, 520, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (7, 521, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (7, 522, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (8, 519, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (8, 520, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (8, 521, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (8, 522, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (9, 527, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (9, 528, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (9, 529, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (9, 530, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (10, 531, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (10, 532, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (10, 533, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (10, 539, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (11, 534, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (11, 535, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (11, 514, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (11, 536, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (12, 537, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (12, 538, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (12, 539, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (13, 519, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (13, 520, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (13, 521, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (13, 522, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (14, 540, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (14, 541, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (14, 542, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (14, 543, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (15, 544, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (15, 545, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (15, 546, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (15, 547, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (16, 563, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (16, 564, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (16, 565, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (16, 562, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (17, 501, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (17, 527, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (17, 529, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (17, 526, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (17, 559, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (18, 550, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (18, 548, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (19, 551, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (19, 552, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (19, 553, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (20, 538, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (20, 537, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (20, 539, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (21, 517, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (21, 531, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (21, 554, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (21, 547, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (22, 531, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (22, 555, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (22, 556, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (22, 505, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (22, 503, 'ecrivain')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (22, 505, 'ecrivain')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (23, 514, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (23, 568, 'ecrivain')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (23, 557, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (23, 558, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (23, 536, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (24, 559, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (24, 560, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (24, 561, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (26, 568, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (18, 566, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (26, 569, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (26, 570, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (26, 567, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (27, 571, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (27, 572, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (7, 573, 'ecrivain')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (8, 573, 'ecrivain')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (13, 573, 'ecrivain')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (27, 505, 'ecrivain')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (27, 567, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (28, 575, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (28, 576, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (29, 577, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (29, 578, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (29, 579, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (29, 567, 'technique')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (30, 580, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (30, 581, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (30, 582, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (31, 583, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (31, 584, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (32, 585, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (32, 586, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (32, 587, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (50, 585, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (50, 586, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (50, 587, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (33, 588, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (33, 589, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (33, 590, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (34, 591, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (34, 592, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (34, 593, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (35, 594, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (35, 595, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (35, 596, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (36, 597, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (36, 598, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (36, 599, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (37, 600, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (37, 601, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (37, 602, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (38, 603, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (38, 604, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (38, 605, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (39, 606, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (39, 607, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (39, 608, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (40, 609, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (40, 610, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (40, 611, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (41, 612, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (41, 613, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (41, 614, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (42, 506, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (42, 615, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (42, 616, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (43, 617, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (43, 618, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (43, 619, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (44, 620, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (44, 621, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (44, 622, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (45, 623, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (45, 624, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (46, 625, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (46, 626, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (47, 627, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (47, 628, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (48, 629, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (48, 630, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (49, 631, 'realisateur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (49, 632, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (50, 633, 'acteur')
INTO filmCasting (id_filmSerie, id_cast, fonction) VALUES (50, 634, 'acteur')
SELECT * FROM dual;


INSERT ALL
INTO filmGenre (id_filmSerie, id_genre) VALUES (1, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (1, 406)
INTO filmGenre (id_filmSerie, id_genre) VALUES (2, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (2, 406)
INTO filmGenre (id_filmSerie, id_genre) VALUES (3, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (3, 406)
INTO filmGenre (id_filmSerie, id_genre) VALUES (4, 401)
INTO filmGenre (id_filmSerie, id_genre) VALUES (4, 406)
INTO filmGenre (id_filmSerie, id_genre) VALUES (4, 410)
INTO filmGenre (id_filmSerie, id_genre) VALUES (5, 412)
INTO filmGenre (id_filmSerie, id_genre) VALUES (5, 420)
INTO filmGenre (id_filmSerie, id_genre) VALUES (5, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (6, 406)
INTO filmGenre (id_filmSerie, id_genre) VALUES (7, 410)
INTO filmGenre (id_filmSerie, id_genre) VALUES (7, 425)
INTO filmGenre (id_filmSerie, id_genre) VALUES (7, 402)
INTO filmGenre (id_filmSerie, id_genre) VALUES (8, 410)
INTO filmGenre (id_filmSerie, id_genre) VALUES (8, 425)
INTO filmGenre (id_filmSerie, id_genre) VALUES (8, 402)
INTO filmGenre (id_filmSerie, id_genre) VALUES (9, 405)
INTO filmGenre (id_filmSerie, id_genre) VALUES (10, 405)
INTO filmGenre (id_filmSerie, id_genre) VALUES (10, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (11, 420)
INTO filmGenre (id_filmSerie, id_genre) VALUES (11, 402)
INTO filmGenre (id_filmSerie, id_genre) VALUES (11, 401)
INTO filmGenre (id_filmSerie, id_genre) VALUES (12, 420)
INTO filmGenre (id_filmSerie, id_genre) VALUES (12, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (13, 410)
INTO filmGenre (id_filmSerie, id_genre) VALUES (13, 425)
INTO filmGenre (id_filmSerie, id_genre) VALUES (13, 402)
INTO filmGenre (id_filmSerie, id_genre) VALUES (14, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (14, 420)
INTO filmGenre (id_filmSerie, id_genre) VALUES (14, 401)
INTO filmGenre (id_filmSerie, id_genre) VALUES (15, 406)
INTO filmGenre (id_filmSerie, id_genre) VALUES (15, 404)
INTO filmGenre (id_filmSerie, id_genre) VALUES (16, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (17, 424)
INTO filmGenre (id_filmSerie, id_genre) VALUES (17, 406)
INTO filmGenre (id_filmSerie, id_genre) VALUES (18, 413)
INTO filmGenre (id_filmSerie, id_genre) VALUES (18, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (18, 424)
INTO filmGenre (id_filmSerie, id_genre) VALUES (19, 405)
INTO filmGenre (id_filmSerie, id_genre) VALUES (20, 420)
INTO filmGenre (id_filmSerie, id_genre) VALUES (20, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (21, 425)
INTO filmGenre (id_filmSerie, id_genre) VALUES (21, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (22, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (23, 420)
INTO filmGenre (id_filmSerie, id_genre) VALUES (23, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (24, 406)
INTO filmGenre (id_filmSerie, id_genre) VALUES (25, 410)
INTO filmGenre (id_filmSerie, id_genre) VALUES (25, 403)
INTO filmGenre (id_filmSerie, id_genre) VALUES (26, 410)
INTO filmGenre (id_filmSerie, id_genre) VALUES (26, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (27, 402)
INTO filmGenre (id_filmSerie, id_genre) VALUES (27, 410)
INTO filmGenre (id_filmSerie, id_genre) VALUES (28, 407)
INTO filmGenre (id_filmSerie, id_genre) VALUES (28, 418)
INTO filmGenre (id_filmSerie, id_genre) VALUES (29, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (30, 420)
INTO filmGenre (id_filmSerie, id_genre) VALUES (30, 402)
INTO filmGenre (id_filmSerie, id_genre) VALUES (31, 420)
INTO filmGenre (id_filmSerie, id_genre) VALUES (31, 402)
INTO filmGenre (id_filmSerie, id_genre) VALUES (32, 406)
INTO filmGenre (id_filmSerie, id_genre) VALUES (32, 405)
INTO filmGenre (id_filmSerie, id_genre) VALUES (32, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (33, 412)
INTO filmGenre (id_filmSerie, id_genre) VALUES (33, 422)
INTO filmGenre (id_filmSerie, id_genre) VALUES (34, 410)
INTO filmGenre (id_filmSerie, id_genre) VALUES (34, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (35, 412)
INTO filmGenre (id_filmSerie, id_genre) VALUES (35, 410)
INTO filmGenre (id_filmSerie, id_genre) VALUES (36, 406)
INTO filmGenre (id_filmSerie, id_genre) VALUES (36, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (37, 422)
INTO filmGenre (id_filmSerie, id_genre) VALUES (38, 419)
INTO filmGenre (id_filmSerie, id_genre) VALUES (39, 412)
INTO filmGenre (id_filmSerie, id_genre) VALUES (40, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (41, 424)
INTO filmGenre (id_filmSerie, id_genre) VALUES (42, 410)
INTO filmGenre (id_filmSerie, id_genre) VALUES (43, 406)
INTO filmGenre (id_filmSerie, id_genre) VALUES (44, 405)
INTO filmGenre (id_filmSerie, id_genre) VALUES (45, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (46, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (47, 425)
INTO filmGenre (id_filmSerie, id_genre) VALUES (47, 410)
INTO filmGenre (id_filmSerie, id_genre) VALUES (48, 410)
INTO filmGenre (id_filmSerie, id_genre) VALUES (49, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (50, 408)
INTO filmGenre (id_filmSerie, id_genre) VALUES (50, 406)
SELECT * FROM dual;

UPDATE fiche
SET ID_FilmSerie = 13
WHERE ID_Fiche = 1302;

INSERT INTO film_serie
(id_filmSerie, nom)
VALUES
(51, 'toto');

DELETE FROM film_serie
WHERE film_serie.id_filmSerie = 51;

*/




