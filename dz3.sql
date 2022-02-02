CREATE TABLE IF NOT EXISTS artists (
    id SERIAL NOT NULL PRIMARY KEY,
    artist_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS albums (
    id SERIAL NOT NULL PRIMARY KEY,
    album_name VARCHAR(50) NOT NULL,
    release_date INT NOT NULL
);

CREATE TABLE IF NOT EXISTS albums_artists (
    id SERIAL NOT NULL PRIMARY KEY,
    album_id INT REFERENCES albums(id),
    artist_id INT REFERENCES artists(id)
);

CREATE TABLE IF NOT EXISTS genres (
    id SERIAL NOT NULL PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS artists_genres (
    id SERIAL NOT NULL PRIMARY KEY,
    artist_id INT REFERENCES artists(id),
    genre_id INT REFERENCES genres(id)
);

CREATE TABLE IF NOT EXISTS tracks (
    id SERIAL NOT NULL PRIMARY KEY,
    track_name VARCHAR(50) NOT NULL,
    track_duration INT NOT NULL,
    album_id INT REFERENCES albums(id)
);

CREATE TABLE IF NOT EXISTS compilations (
    id SERIAL NOT NULL PRIMARY KEY,
    compilation_name VARCHAR(50) NOT NULL,
    compilation_release_date INT NOT NULL
);

CREATE TABLE IF NOT EXISTS compilations_info (
    id SERIAL NOT NULL PRIMARY KEY,
    compilation_id INT REFERENCES compilations(id),
    track_id INT REFERENCES tracks(id)
);