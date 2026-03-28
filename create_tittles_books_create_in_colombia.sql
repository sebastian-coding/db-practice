SELECT b.title
FROM books b
JOIN authors a ON b.author_id = a.id
WHERE a.country = 'Colombia';