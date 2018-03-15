USE codeup_test_db;
SELECT name AS 'Pink Floyd Albums' FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date AS 'Sgt. Pepper''s Lonely Hearts Club Band Release' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre AS 'Nevermind Genre' FROM albums WHERE name = 'Nevermind';
SELECT name AS 'Albums Released In The 90''s' FROM albums WHERE release_date > 1889 AND release_date < 2000;
SELECT name AS 'Albums With Less Than 20 Million Certified Sales' FROM albums WHERE sales < 20;
SELECT name AS 'Rock Albums' FROM albums WHERE genre = 'Rock';
