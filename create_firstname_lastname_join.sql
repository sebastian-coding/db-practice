SELECT b.title, a.first_name, a.last_name
FROM books b
JOIN authors a ON b.author_id = a.id;