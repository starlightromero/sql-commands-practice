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
    ('Santeria', 4)
;
 
INSERT INTO Albums
    (name, artist, year_published)
VALUES
    ('All Killer No Filler', 'Sum41', 2001),
    ('Nimrod', 'Green Day', 1997),
    ('Chocolate Starfish and the Hot Dog Flavored Water', 'Limp Bizkit', 2000),
    ('Sublime', 'Sublime', 1997),
    ('California', 'Blink-182', 2016)
;


/* Queries */

SELECT * FROM Songs;

SELECT * FROM Albums;

/* 
 * TODO: Write a table join query to construct a table of Song Name : Album Name
 */

/*
 * TODO: Find all albums published between 1970 and 1980.
 */

/*
 * TODO: Find all songs on albums published between 1970 and 1980. 
 *(Hint: Use a table join.)
 */
 
/*
 * TODO: Find all songs on albums with names containing 'California'.
 */