

CREATE TABLE bdSpotify.`tbGravadora`(
	grav_cod INT,
    grav_nome VARCHAR(50),
    grav_end VARCHAR(50),
    PRIMARY KEY(grav_cod)
);

CREATE TABLE bdSpotify.`tbAlbum`(
	cod_album INT,
    album_grav_cod INT,
    album_nome VARCHAR(30),
    album_valor DOUBLE,
    album_data_lancamento DATE,
    PRIMARY KEY (cod_album),
    FOREIGN KEY(album_grav_cod) REFERENCES tbGravadora(grav_cod)
);

CREATE TABLE bdSpotify.`tbMusica`(
	mus_cod INT,
    mus_nome VARCHAR(20),
    mus_duracao TIME,
    mus_faixa INT,
	PRIMARY KEY (mus_cod)
);

CREATE TABLE bdSpotify.`tbAutor`(
	aut_cod INT,
    aut_nome VARCHAR(60),
    PRIMARY KEY (aut_cod)
);

CREATE TABLE bdSpotify.`tbItemCD`(
	ite_mus_cod INT,
    ite_album_cod INT,
	FOREIGN KEY(ite_mus_cod) REFERENCES tbMusica(mus_cod),
	FOREIGN KEY(ite_album_cod) REFERENCES tbAlbum(cod_album)
);

CREATE TABLE bdSpotify.`tbMusica_Autor`(
	mus_code INT,
    aut_cod INT,
	FOREIGN KEY(mus_code) REFERENCES tbMusica(mus_cod),
	FOREIGN KEY(aut_cod) REFERENCES tbAutor(aut_cod)
);


SELECT * FROM bdSpotify.`tbMusica_Autor`;

INSERT INTO bdSpotify.`tbGravadora`(grav_cod, grav_nome, grav_end)
	VALUES (1, 'Spinefarm Records', 'Rua Pinheiros, 92'),
		(2, 'Republic', 'Rua Maçã Dourada, 52'),
        (3, 'Fueled by Ramen', 'Rua Jaca Seca, 63'),
        (4, 'V2 Records', 'Rua Arnaldo Pereira, 152');
   
INSERT INTO bdSpotify.`tbAlbum`(cod_album, album_grav_cod, album_nome, album_valor, album_data_lancamento)
	VALUES (1, 1, 'Axiom', 35.00, '2015/07/25'),
		(2, 2, 'Folklore', 40.00, '2020/07/24'),
        (3, 3, 'Home of the Strange', 35.00, '2016/08/12'),
        (4, 4, 'Brothers', 30.00, '2010/05/18');

INSERT INTO bdSpotify.`tbMusica`(mus_cod, mus_nome, mus_duracao, mus_faixa)
	VALUES (1, 'Sutton.', '00:03:48', 2),
		 (2, 'betty.', '00:04:54', 14),
         (3, 'Silvertongue', '00:03:17', 8),
         (4, "Next Girl", '00:03:17', 2);

INSERT INTO bdSpotify.`tbAutor`(aut_cod, aut_nome)
	VALUES (1, 'Dead Poet Society'),
		(2, 'Taylor Swift'),
        (3, 'Young the Giant'),
        (4, 'The Black Keys');
        
INSERT INTO bdSpotify.`tbItemCD`(ite_mus_cod, ite_album_cod)
	VALUES (1,1),
		(2,2),
        (3,3),
        (4,4);

INSERT INTO bdSpotify.`tbMusica_Autor`(mus_code, aut_cod)
	VALUES (1,1),
		(2,2),
        (3,3),
        (4,4);
