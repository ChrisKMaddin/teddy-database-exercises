use codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS '';
SELECT name
FROM albums
WHERE artist = 'Pink Floyd';

SELECT 'The year Sgt. Peppers Lonely Hearts Club Band was released' As '';
SELECT release_date
FROM albums
WHERE artist = 'The Beatles';

SELECT 'The Genre of Nevermind' AS '';
SELECT genre
FROM albums
WHERE name = 'Nevermind';

SELECT 'Which albums were released in the 1990s' AS '';
SELECT *
FROM albums
WHERE release_date BETWEEN 1990 and 1999;

SELECT 'Which albums had less than 20 million certified sales' AS '';
SELECT *
FROM albums
WHERE sales < 20;

SELECT 'All the albums with a genre of "Rock"' AS '';
SELECT *
FROM albums
WHERE genre LIKE '%rock%';
