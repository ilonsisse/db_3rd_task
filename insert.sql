INSERT INTO musical_genre (genre, genre_description) VALUES
('Rock', 'Жанр популярной музыки, возникший как "рок-н-ролл" в США в конце 1940-х - начале 1950-х годов.'),
('Pop', 'Жанр популярной музыки, возникший в современной форме в середине 1950-х годов в США и Великобритании.'),
('Jazz', 'Музыкальный жанр, возникший в афроамериканских сообществах Нового Орлеана, США.'),
('Country', 'Жанр популярной музыки, возникший на Юге США в начале 1920-х годов.');


INSERT INTO singer (nickname, name, surname) VALUES
('Imagine Dragons', 'Dan', 'Reynolds'),
('Ariana Grande', 'Ariana', 'Grande'),
('Norah Jones', 'Norah', 'Jones'),
('Billie Eilish', 'Billie', 'Eilish'),
('Taylor Swift', 'Taylor', 'Swift'),
('Sia', 'Sia', '');


INSERT INTO singer_genre (singer_nickname, genre) VALUES
('Imagine Dragons', 'Rock'),
('Ariana Grande', 'Pop'),
('Norah Jones', 'Jazz'),
('Billie Eilish', 'Pop'),
('Taylor Swift', 'Country'),
('Sia', 'Pop');


INSERT INTO album (name, release_date) VALUES
('Evolve', '2017-06-23'),
('Sweetener', '2018-08-17'),
('Pick Me Up Off The Floor', '2020-06-12'),
('Fearless (Taylor''s Version)', '2021-04-09');


INSERT INTO album_singer (album_id, singer_nickname) VALUES
(1, 'Imagine Dragons'),
(2, 'Ariana Grande'),
(3, 'Norah Jones'),
(4, 'Taylor Swift'),
(3, 'Sia');


INSERT INTO track (name, duration, album_id) VALUES
('Believer', '00:03:24', 1),
('Thunder', '00:03:07', 1),
('God is a woman', '00:03:17', 2),
('No Tears Left to Cry', '00:03:26', 2),
('I''m Alive', '00:04:15', 3),
('Were You Watching?', '00:05:17', 3),
('Chandelier', '00:03:36', 3),
('Love Story (Taylor''s Version)', '00:03:56', 4),
('You Belong with Me (Taylor''s Version)', '00:03:52', 4),
('My Love', '00:04:10', 3);


INSERT INTO compilation (name, release_year) VALUES
('Best of 2017', 2017),
('Top Pop Hits 2018', 2018),
('Jazz Favorites 2020', 2020),
('Hits of the Decade', 2021),
('Country Classics', 2023);


INSERT INTO compilation_track (compilation_id, track_id) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 8),
(4, 9);
