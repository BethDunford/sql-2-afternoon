--1.Get all invoices where the unit_price on the invoice_line is greater than $0.99

-- SELECT * FROM invoice i
-- JOIN invoice_line il
-- ON i.invoice_id = il.invoice_id
-- WHERE il.unit_price > .99;

--2. Get the invoice_date, customer first_name and last_name, and total from all invoices

-- SELECT i.invoice_date, c.first_name, c.last_name, i.total
-- FROM invoice i
-- JOIN customer c
-- ON i.customer_id = c.customer_id;

--3. Get the customer first_name and last_name and the support rep's first_name and last_name
--   from all customers
--     Support reps are on the employee table

-- SELECT c.first_name, c.last_name, e.first_name, e.last_name
-- FROM customer c
-- JOIN employee e
-- ON c.support_rep_id = e.employee_id;

--4. Get the album title and the artist name from all albums

-- SELECT al.title, ar.name
-- FROM album al
-- JOIN artist ar
-- ON al.artist_id = ar.artist_id;

--5. Get all playlist_track track_ids where the playlist name is Music

-- SELECT pt.track_id
-- FROM playlist_track pt
-- JOIN playlist pl
-- ON pl.playlist_id = pt.playlist_id
-- WHERE pl.name = 'Music';

--6. Get all track names for playlist_id 5

-- SELECT * from playlist_track;
-- SELECT tr.name
-- FROM track tr
-- JOIN playlist_track pt
-- ON pt.track_id = tr.track_id
-- WHERE pt.playlist_id = 5;

--7. Get all track names and the playlist name that they're on (2 joins)

-- SELECT tr.name, pl.name
-- FROM track tr
-- JOIN playlist_track pt
-- ON tr.track_id = pt.track_id
-- JOIN playlist pl
-- ON pl.playlist_id = pt.playlist_id;

--8. Get all track names and album titles that are the genre Alternative & Punk (2 joins)

SELECT tr.name, al.title
FROM track tr
JOIN genre g
ON tr.genre_id = g.genre_id
JOIN album al
ON al.album_id = tr.album_id
WHERE g.name = 'Alternative & Punk';