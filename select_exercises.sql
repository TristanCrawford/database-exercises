USE codeup_test_db;

SELECT name AS 'Pink Floyd Albums', release_date AS 'Released'
FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date AS 'Sgt. Pepper''s Lonely Hearts Club Band Release' 
FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre AS 'Nevermind Genres' 
FROM albums WHERE name = 'Nevermind';
            
SELECT name AS 'Albums Released In The 90''s', release_date AS 'Released'
FROM albums WHERE release_date BETWEEN 1990 AND 1999 ORDER BY release_date;

SELECT artist AS 'Artist', name AS 'Albums With Less Than 20 Million Certified Sales', sales as 'Sales (Millions)'
FROM albums WHERE sales <= 20;

SELECT artist AS 'Artist', name AS 'Rock Albums'
FROM albums WHERE genre = 'Rock';
