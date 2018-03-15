USE codeup_test_db;
SELECT name as 'Albums Released After 1991', release_date FROM albums WHERE release_date > 1991 ORDER BY release_date;
SELECT name as 'Disco Albums' FROM albums WHERE genre = 'Disco';
SELECT name as 'Whitney Houston Albums' FROM albums WHERE artist = 'Whitney Houston';

DELETE FROM albums WHERE release_date > 1991 ORDER BY release_date;
DELETE FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT name as 'Albums Released After 1991', release_date FROM albums WHERE release_date > 1991 ORDER BY release_date;
SELECT name as 'Disco Albums' FROM albums WHERE genre = 'Disco';
SELECT name as 'Whitney Houston Albums' FROM albums WHERE artist = 'Whitney Houston';
