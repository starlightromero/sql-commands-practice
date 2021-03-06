CREATE TABLE Songs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES Albums(id)
 );

CREATE TABLE Albums (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(70) NOT NULL,
    artist VARCHAR(70) NOT NULL,
    year_published INTEGER NOT NULL
);

INSERT INTO Songs
    (name, album_id)
VALUES
    ('In Too Deep', 1),
    ('Good Riddance (Time of Your Life)', 2),
    ('My Generation', 3),
    ('Santeria', 4),
    ('My Way', 3),
    ('What I Got', 4),
    ('Scar Tissue', 5),
    ('Otherside', 5),
    ('Californication', 5)
;
 
INSERT INTO Albums
    (name, artist, year_published)
VALUES
    ('All Killer No Filler', 'Sum41', 2001),
    ('Nimrod', 'Green Day', 1997),
    ('Chocolate Starfish and the Hot Dog Flavored Water', 'Limp Bizkit', 2000),
    ('Sublime', 'Sublime', 1997),
    ('Californication', 'Red Hot Chili Peppers', 1999)
;


/* Queries */

SELECT * FROM Songs;
SELECT '';

SELECT * FROM Albums;
SELECT '';
 
SELECT Songs.name, Albums.name FROM Songs
JOIN Albums ON Albums.id = Songs.album_id;
SELECT '';
 
SELECT Albums.name FROM Albums
WHERE Albums.year_published < 2000;
SELECT '';
 
SELECT Songs.name FROM Songs
JOIN Albums ON Albums.id = Songs.album_id
WHERE Albums.year_published < 2000;
SELECT '';
 
SELECT Songs.name FROM Songs
JOIN Albums ON Albums.id = Songs.album_id
WHERE Songs.name LIKE '%Cali%';
SELECT '';