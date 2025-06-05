DROP DATABASE IF EXISTS `movie_db`;
CREATE DATABASE `movie_db`;
USE `movie_db`;

-- Tạo bảng movies
CREATE TABLE movies (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `description` TEXT NOT NULL,
    `duration` INT NOT NULL,
    `poster` CHAR(200)
);

-- Tạo bảng showtimes
CREATE TABLE showtimes (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `movie_id` INT NOT NULL,
    `start_time` TIME NOT NULL,
    `end_time` TIME NOT NULL,
    FOREIGN KEY (`movie_id`) REFERENCES movies(`id`)
);

-- Chèn dữ liệu phim
INSERT INTO movies (`name`, `description`, `duration`, `poster`) VALUES
('Godzilla x Kong: The New Empire', 'Cuộc chiến giữa hai quái vật huyền thoại tiếp tục với những pha hành động mãn nhãn.', 120, 'https://m.media-amazon.com/images/I/61dZ9mCP6lL._AC_UF894,1000_QL80_.jpg'),
('Dune: Part Two', 'Paul Atreides liên minh với người Fremen để trả thù những kẻ đã hủy diệt gia đình mình.', 150, 'https://m.media-amazon.com/images/M/MV5BNTc0YmQxMjEtODI5MC00NjFiLTlkMWUtOGQ5NjFmYWUyZGJhXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg'),
('Kung Fu Panda 4', 'Po trở lại với hành trình mới, đối mặt với kẻ thù nguy hiểm nhất từ trước đến nay.', 95, 'https://upload.wikimedia.org/wikipedia/vi/7/7f/Kung_Fu_Panda_4_poster.jpg'),
('Inside Out 2', 'Những cảm xúc trong đầu Riley tiếp tục cuộc phiêu lưu đầy màu sắc và ý nghĩa.', 100, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLxnnmqHwRgHPU6G_5ThxLs28PJvgqGQaSzw&s'),
('Deadpool & Wolverine', 'Deadpool và Wolverine hợp tác trong một nhiệm vụ điên rồ, hài hước và đầy máu lửa.', 110, 'https://upload.wikimedia.org/wikipedia/vi/4/4c/Deadpool_%26_Wolverine_poster.jpg');

-- Godzilla x Kong (ID 1) – Duration: 120 mins
INSERT INTO showtimes (movie_id, start_time, end_time) VALUES
(1, '09:00:00', '11:00:00'),
(1, '12:00:00', '14:00:00'),
(1, '15:00:00', '17:00:00'),
(1, '18:30:00', '20:30:00');

-- Dune: Part Two (ID 2) – Duration: 150 mins
INSERT INTO showtimes (movie_id, start_time, end_time) VALUES
(2, '10:00:00', '12:30:00'),
(2, '13:30:00', '16:00:00'),
(2, '17:00:00', '19:30:00'),
(2, '20:30:00', '23:00:00');

-- Kung Fu Panda 4 (ID 3) – Duration: 95 mins
INSERT INTO showtimes (movie_id, start_time, end_time) VALUES
(3, '08:00:00', '09:35:00'),
(3, '10:00:00', '11:35:00'),
(3, '13:00:00', '14:35:00');

-- Inside Out 2 (ID 4) – Duration: 100 mins
INSERT INTO showtimes (movie_id, start_time, end_time) VALUES
(4, '09:30:00', '11:10:00'),
(4, '11:45:00', '13:25:00'),
(4, '14:00:00', '15:40:00'),
(4, '16:15:00', '17:55:00'),
(4, '18:30:00', '20:10:00');

-- Deadpool & Wolverine (ID 5) – Duration: 110 mins
INSERT INTO showtimes (movie_id, start_time, end_time) VALUES
(5, '11:00:00', '12:50:00'),
(5, '14:00:00', '15:50:00'),
(5, '17:00:00', '18:50:00'),
(5, '20:00:00', '21:50:00'),
(5, '22:30:00', '00:20:00');
