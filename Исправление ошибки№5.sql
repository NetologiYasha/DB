CREATE TABLE IF NOT EXISTS music_genres (
id serial PRIMARY KEY,
title varchar(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS intermediate_table (
music_genres_id INTEGER REFERENCES music_genres(id),
performers_id INTEGER REFERENCES Performers(id),
CONSTRAINT pk PRIMARY KEY(music_genres_id, performers_id)
);

CREATE TABLE IF NOT EXISTS performers (
id serial PRIMARY KEY,
Name varchar (40) NOT NULL);

CREATE TABLE IF NOT EXISTS intermediate_table_1 (
performers_id INTEGER REFERENCES Performers(id),
albums_id INTEGER REFERENCES albums(id),
CONSTRAINT bk PRIMARY KEY (performers_id, albums_id)
);

CREATE TABLE IF NOT EXISTS albums (
id serial PRIMARY KEY,
name varchar(40) NOT NULL,
year_of_release INTEGER,
FOREIGN KEY (albums_id) REFERENCES albums(trak_id)
);

CREATE TABLE IF NOT EXISTS trak (
id serial PRIMARY KEY,
title VARCHAR(255) NOT NULL,
trak_duration INT NULL
);

CREATE TABLE IF NOT EXISTS intermediate_table_2 (
trak_id INTEGER NOT NULL REFERENCES trak(id),
collection_id INTEGER NOT NULL REFERENCES collection(id),
CONSTRAINT bk PRIMARY KEY (trak_id, collection_id)
);

CREATE TABLE IF NOT EXISTS collection (
id serial PRIMARY KEY,
name varchar(40) NOT NULL,
year_of_release INTEGER,
);