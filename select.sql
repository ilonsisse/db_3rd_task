-- Название и продолжительность самого длительного трека
SELECT name AS track_name, duration
FROM track
WHERE duration = (
    SELECT MAX(duration)
    FROM track
);

-- Название треков, продолжительность которых не менее 3,5 минут
SELECT name AS track_name
FROM track
WHERE duration >= '00:03:30';

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT name AS compilation_name
FROM compilation
WHERE release_year BETWEEN 2018 AND 2020;

-- Исполнители, чьё имя состоит из одного слова
SELECT name, surname
FROM singer
WHERE nickname NOT LIKE '% %'; 

-- Название треков, которые содержат слово «мой» или «my»
SELECT name AS track_name
FROM track
WHERE LOWER(name) LIKE '%мой%' OR LOWER(name) LIKE '%my%';


-- Количество исполнителей в каждом жанре
SELECT g.genre, COUNT(s.singer_nickname) AS count_of_singers
FROM musical_genre g
LEFT JOIN singer_genre s ON g.genre = s.genre
GROUP BY g.genre;

-- Количество треков, вошедших в альбомы 2019–2020 годов
SELECT COUNT(*) AS track_count
FROM track t
JOIN album a ON t.album_id = a.album_id
WHERE a.release_date BETWEEN '2019-01-01' AND '2020-12-31';

-- Средняя продолжительность треков по каждому альбому
SELECT a.name AS album_name, AVG(t.duration) AS average_duration_seconds
FROM album a
JOIN track t ON a.album_id = t.album_id
GROUP BY a.name;

-- Все исполнители, которые не выпустили альбомы в 2020 году
SELECT name, surname
FROM singer
WHERE nickname NOT IN (
    SELECT DISTINCT album_singer.singer_nickname
    FROM album_singer
    JOIN album ON album_singer.album_id = album.album_id
    WHERE album.release_date >= '2020-01-01'
      AND album.release_date <= '2020-12-31'
);

-- Названия сборников, в которых присутствует конкретный исполнитель 
SELECT DISTINCT c.name AS compilation_name
FROM compilation c
JOIN compilation_track ct ON c.compilation_id = ct.compilation_id
JOIN track t ON ct.track_id = t.track_id
JOIN album a ON t.album_id = a.album_id
JOIN album_singer s ON a.album_id = s.album_id
JOIN singer si ON s.singer_nickname = si.nickname
WHERE si.surname = 'Swift';


