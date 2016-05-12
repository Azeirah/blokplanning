/*
-- Query: SELECT * FROM mydb.Docent_has_Taak
LIMIT 0, 1000

-- Date: 2016-04-22 17:40
*/
INSERT INTO `Docent_has_Taak` (`Docent_id`,`Taak_id`) VALUES (0,0);
/*
-- Query: SELECT * FROM mydb.Taak
LIMIT 0, 1000

-- Date: 2016-04-22 17:40
*/
INSERT INTO `Taak` (`id`,`Vak_id`,`beschrijving`,`duur`) VALUES (0,0,'Project Lift - coordinatie','4');
/*
-- Query: SELECT * FROM mydb.Prototype_taak
LIMIT 0, 1000

-- Date: 2016-04-22 17:41
*/
INSERT INTO `Prototype_taak` (`id`,`beschrijving`,`duur`) VALUES (0,'Contacturen (les, practicum, tutor, etc)','1');
INSERT INTO `Prototype_taak` (`id`,`beschrijving`,`duur`) VALUES (1,'Voorbereiding contactuur (basismateriaal aanwezig)','1');
/*
-- Query: SELECT * FROM mydb.Opleiding
LIMIT 0, 1000

-- Date: 2016-04-22 17:37
*/
INSERT INTO `Opleiding` (`id`,`naam`,`opleidings_code`) VALUES (0,'Embedded Systems','ES');
/*
-- Query: SELECT * FROM mydb.Opleidingstraject
LIMIT 0, 1000

-- Date: 2016-04-22 17:37
*/
INSERT INTO `Opleidingstraject` (`id`,`Opleiding_id`) VALUES (0,0);
/*
-- Query: SELECT * FROM mydb.Blok
LIMIT 0, 1000

-- Date: 2016-04-22 17:37
*/
INSERT INTO `Blok` (`id`,`Schooljaar_id`,`aantal_studenten`,`Opleidingstraject_id`,`blokcode`) VALUES (0,0,15,0,'ES01');
INSERT INTO `Blok` (`id`,`Schooljaar_id`,`aantal_studenten`,`Opleidingstraject_id`,`blokcode`) VALUES (1,0,15,0,'ES02');
/*
-- Query: SELECT * FROM mydb.Schooljaar
LIMIT 0, 1000

-- Date: 2016-04-22 17:38
*/
INSERT INTO `Schooljaar` (`id`,`startdatum`,`einddatum`) VALUES (0,'2015-09-01','2016-07-01');
/*
-- Query: SELECT * FROM mydb.Vak
LIMIT 0, 1000

-- Date: 2016-04-22 17:38
*/
INSERT INTO `Vak` (`id`,`contacturen_per_week`,`EC`,`naam`,`vakcode`,`Blok_id`) VALUES (0,2,1,'Project lift','PROJLIFT',0);
/*
-- Query: SELECT * FROM mydb.Taak
LIMIT 0, 1000

-- Date: 2016-04-22 17:38
*/
INSERT INTO `Taak` (`id`,`Vak_id`,`beschrijving`,`duur`) VALUES (0,0,'coordinatie','4');
/*
-- Query: SELECT * FROM mydb.Docent
LIMIT 0, 1000

-- Date: 2016-04-22 17:38
*/
INSERT INTO `Docent` (`id`,`naam`) VALUES (0,'Thijs van Vliet');
/*
-- Query: SELECT * FROM mydb.Blok_has_Docent
LIMIT 0, 1000

-- Date: 2016-04-22 17:38
*/
INSERT INTO `Blok_has_Docent` (`Blok_id`,`Docent_id`) VALUES (0,0);
/*
-- Query: SELECT * FROM mydb.Schooljaar_has_Docent
LIMIT 0, 1000

-- Date: 2016-04-22 17:40
*/
INSERT INTO `Schooljaar_has_Docent` (`Schooljaar_id`,`Docent_id`) VALUES (0,0);
