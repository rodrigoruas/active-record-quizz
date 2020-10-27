-- 6. What's the query to get books written before 1985?

SELECT * FROM books
WHERE published_year < 1985;



-- 7. What's the query to get the three most recent
--    books written by Jules Verne?

SELECT * FROM books b
JOIN authors a ON a.id = b.author_id
WHERE a.name = 'Jules Vernes'
ORDER BY b.published_year DESC
LIMIT 3;
