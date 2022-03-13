DROP DATABASE IF EXISTS Juego;
CREATE DATABASE Juego;

USE Juego;

CREATE TABLE jugadores (
    id INT NOT NULL, 
    username VARCHAR(60) NOT NULL,
    password VARCHAR(60) NOT NULL,
    puntos INT NOT NULL,
    victorias INT NOT NULL,
    PRIMARY KEY (id)
)ENGINE=InnoDB;


CREATE TABLE partidas (
    id INT NOT NULL,
    ganador VARCHAR(60),
    fecha VARCHAR(60),
    horafinal VARCHAR(60),
    duracion VARCHAR(60),
    PRIMARY KEY (id)
)ENGINE=InnoDB;


CREATE TABLE participacion (
    jugadorid INT NOT NULL,
    partidaid INT NOT NULL,
    posicion INT NOT NULL,
    puntos INT NOT NULL,
    FOREIGN KEY (jugadorid) REFERENCES jugadores(id),
    FOREIGN KEY (partidaid) REFERENCES partidas(id)
)ENGINE=InnoDB;




INSERT INTO jugadores VALUES (1,'david','david_miro',10,0);
INSERT INTO jugadores VALUES (2,'cesar','cesar_pizarro',14,1);
INSERT INTO jugadores VALUES (3,'ferran','ferran_ortega',1,1);
INSERT INTO jugadores VALUES (4,'pedro','pedro_garcia',17,1);
INSERT INTO jugadores VALUES (5,'carlos','carlos_perez',11,3);



INSERT INTO partidas VALUES (1,'carlos','12/03/2022','13:09','17 minutos y 3 segundos');
INSERT INTO partidas VALUES (2,'ferran','12/03/2022','13:09','19 minutos y 32 segundos');
INSERT INTO partidas VALUES (3,'pedro','12/03/2022','13:09','15 minutos y 12 segundos');
INSERT INTO partidas VALUES (4,'cesar','12/03/2022','13:09','16 minutos y 34 segundos');
INSERT INTO partidas VALUES (5,'david','12/03/2022','13:09','10 minutos y 2 segundos');
INSERT INTO partidas VALUES (6,'carlos','12/03/2022','13:09','21 minutos y 47 segundos');



INSERT INTO participacion  VALUES (1,1,2,4);
INSERT INTO participacion  VALUES (2,1,3,3);
INSERT INTO participacion  VALUES (3,1,5,1);
INSERT INTO participacion  VALUES (4,1,4,4);
INSERT INTO participacion  VALUES (5,1,1,5);
INSERT INTO participacion  VALUES (2,2,1,2);
INSERT INTO participacion  VALUES (3,2,2,1);
INSERT INTO participacion  VALUES (1,3,3,3);
INSERT INTO participacion  VALUES (2,3,4,2);
INSERT INTO participacion  VALUES (3,3,1,5);
INSERT INTO participacion  VALUES (4,3,2,4);
INSERT INTO participacion  VALUES (5,3,5,1);
INSERT INTO participacion  VALUES (1,4,4,1);
INSERT INTO participacion  VALUES (2,4,2,3);
INSERT INTO participacion  VALUES (3,4,3,2);
INSERT INTO participacion  VALUES (4,4,1,4);
INSERT INTO participacion  VALUES (4,5,1,2);
INSERT INTO participacion  VALUES (3,5,2,1);
INSERT INTO participacion  VALUES (3,6,5,1);
INSERT INTO participacion  VALUES (1,6,4,2);
INSERT INTO participacion  VALUES (2,6,2,4);
INSERT INTO participacion  VALUES (5,6,1,5);
INSERT INTO participacion  VALUES (4,6,3,3); 

SELECT *FROM jugadores;

/*Ranking de jugadores segun sus puntos*/
SELECT jugadores.username,jugadores.puntos FROM (jugadores)
ORDER BY puntos DESC;


/*SELECT partidas.id,partidas.ganador FROM jugadores,partidas,participacion
WHERE jugadores.username = 'carlos'
AND jugadores.id = participacion.jugadorid
AND (participacion.posicion = 1 OR participacion.posicion = 2) 
AND participacion.partidaid = partidas.id;*/


