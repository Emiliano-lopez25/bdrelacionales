-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2025 a las 02:12:25
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `spoti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Ariana Grande', 'Ariana Grande es una cantante y actriz estadounidense conocida por su impresionante rango vocal y su éxito en la música pop. Ha dominado las listas con hits como \"Problem\" y \"Thank U, Next\".'),
(2, 'The Beatles', 'The Beatles fueron una banda icónica británica formada en Liverpool en los años 60. Son considerados una de las bandas más influyentes en la historia de la música y su legado sigue vivo a través de canciones como \"Hey Jude\" y \"Let It Be\".'),
(3, 'Kendrick Lamar', 'Kendrick Lamar es un rapero y compositor estadounidense conocido por su lírica profunda y su habilidad para abordar temas sociales, políticos y personales. Ha sido aclamado por álbumes como \"To Pimp a Butterfly\" y \"DAMN.\"'),
(4, 'Miles Davis', 'Miles Davis fue un trompetista, compositor y líder de banda estadounidense, considerado uno de los músicos de jazz más influyentes. Su álbum \"Kind of Blue\" es una obra maestra del jazz modal.'),
(5, 'Bad Bunny', 'Bad Bunny es un cantante y compositor puertorriqueño, uno de los artistas más importantes del reguetón y la música urbana moderna. Ha popularizado éxitos globales como \"Mía\" y \"YHLQMDLG\", fusionando géneros y llevando el reguetón a una audiencia internacional.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistascanciones`
--

CREATE TABLE `artistascanciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistascanciones`
--

INSERT INTO `artistascanciones` (`id`, `artista_id`, `canciones_id`) VALUES
(1, 1, 1),
(2, 1, 6),
(3, 1, 7),
(4, 1, 8),
(5, 1, 16),
(6, 1, 17),
(7, 1, 18),
(8, 1, 19),
(9, 1, 20),
(10, 1, 21),
(11, 2, 2),
(12, 2, 9),
(13, 2, 10),
(14, 2, 11),
(15, 2, 22),
(16, 2, 23),
(17, 2, 24),
(18, 2, 25),
(19, 2, 26),
(20, 2, 27),
(21, 3, 3),
(22, 3, 12),
(23, 3, 13),
(24, 3, 14),
(25, 3, 28),
(26, 3, 29),
(27, 3, 30),
(28, 3, 31),
(29, 3, 31),
(30, 3, 32),
(31, 3, 33),
(32, 4, 34),
(33, 4, 35),
(34, 4, 36),
(35, 4, 37),
(36, 4, 38),
(37, 4, 39),
(38, 4, 40),
(39, 4, 41),
(40, 5, 42),
(41, 5, 43),
(42, 5, 44),
(43, 5, 45),
(44, 5, 46),
(45, 5, 47),
(46, 5, 48),
(47, 5, 49),
(48, 5, 50),
(49, 3, 31),
(50, 3, 32),
(51, 3, 33);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Thank U, Next', 1, '00:03:27', '2019-11-03', 1, 'thank u, next.JPG'),
(2, 'Hey Jude', 2, '00:07:11', '1968-08-26', 1, 'Hey Jude.JPG'),
(3, 'HUMBLE', 3, '00:02:57', '2017-03-30', 1, 'HUMBLE.JPG'),
(4, 'So What', 4, '00:09:22', '1959-08-17', 1, 'so what.JPG'),
(5, 'Mía', 5, '00:03:32', '2018-10-11', 1, 'Mia.JPG'),
(6, 'No Tears Left to Cry', 1, '03:25:00', '2018-04-20', 1, 'No Tears Left to Cry.JPG'),
(7, 'Into You', 1, '04:04:00', '2016-05-16', 1, 'Into you.JPG'),
(8, 'Problem', 1, '03:14:00', '2014-04-28', 1, 'Problem.JPG'),
(9, 'Let It Be', 2, '04:03:00', '1970-03-06', 1, 'lei it be.JPG'),
(10, 'Come Together', 2, '04:19:00', '1969-10-06', 1, 'Come together.JPG'),
(11, 'Yesterday', 2, '02:05:00', '1965-08-15', 1, 'yesterday.JPG'),
(12, 'DNA.', 3, '03:06:00', '2017-04-11', 1, 'DNA.'),
(13, 'King Kunta', 3, '03:54:00', '2015-03-23', 1, 'King Kunta.JPG'),
(14, 'Alright', 3, '03:39:00', '2015-03-15', 1, 'Alright'),
(15, 'Freddie Freeloader', 4, '09:46:00', '1959-08-17', 1, 'Freddie Freeloader'),
(16, 'Positions', 1, '00:02:52', '2020-10-23', 1, 'positions.JPG'),
(17, '34+35', 1, '00:02:53', '2020-10-30', 1, '34_35.JPG'),
(18, 'POV', 1, '00:03:09', '2021-03-25', 1, 'pov.JPG'),
(19, 'Save Your Tears (Remix)', 1, '00:03:08', '2021-04-23', 1, 'save_your_tears_remix.JPG'),
(20, 'Just Look Up\r\n', 1, '00:03:36', '2021-12-10', 1, 'just_look_up.JPG'),
(21, 'Meta', 1, '00:03:10', '2022-01-22', 1, 'meta.JPG'),
(22, 'Ballad of John and Yoko', 2, '00:02:59', '1969-05-30', 1, 'ballad_of_john_and_yoko.JPG'),
(23, 'Something', 2, '00:03:03', '1969-10-06', 1, 'something.JPG'),
(24, 'Helter Skelter', 2, '00:04:29', '1968-11-22', 1, 'helter_skelter.JPG'),
(25, 'The End', 2, '00:02:57', '1969-10-06', 1, 'the_end.JPG'),
(26, 'I Want You (She’s So Heavy)', 2, '00:07:47', '1969-09-26', 1, 'i_want_you.JPG'),
(27, 'Revolution', 2, '00:03:24', '1968-08-09', 1, 'revolution.JPG'),
(28, 'LOYALTY. (feat. Rihanna)', 3, '00:03:47', '2017-04-11', 1, 'loyalty.JPG'),
(29, 'All the Stars (with SZA)', 3, '00:03:47', '2018-01-04', 1, 'all_the_stars.JPG\r\n\r\n'),
(30, 'The Heart Part 5\r\n', 3, '00:05:50', '2022-05-08', 1, 'the_heart_part_5.JPG\r\n\r\n'),
(31, 'N95', 3, '00:04:38', '2022-05-13', 1, 'n95.JPG\r\n\r\n'),
(32, 'PRIDE.\r\n', 3, '00:05:49', '2017-04-11', 1, 'pride.JPG\r\n\r\n\r\n'),
(33, 'FEEL', 3, '00:03:43', '2017-04-11', 1, 'feel.JPG\r\n\r\n'),
(34, 'Tutu\r\n', 4, '00:05:11', '1986-08-01', 1, 'tutu.JPG\r\n\r\n'),
(35, 'Time After Time\r\n', 4, '00:04:00', '1985-10-01', 1, 'time_after_time.JPG\r\n\r\n'),
(36, 'Perfect Way\r\n', 4, '00:03:40', '1985-10-01', 1, 'perfect_way.JPG\r\n\r\n'),
(37, 'Backyard Ritual\r\n', 4, '00:04:39', '1986-08-01', 1, 'backyard_ritual.JPG\r\n\r\n'),
(38, 'Human Nature (from Tutu)\r\n', 4, '00:04:48', '1986-08-01', 1, 'human_nature.JPG\r\n\r\n'),
(39, 'Seventh Quadrant\r\n', 4, '00:06:21', '1986-08-01', 1, 'seventh_quadrant.JPG\r\n\r\n'),
(40, 'Agharta Prelude\r\n', 4, '00:03:36', '1975-02-03', 1, 'agharta_prelude.JPG\r\n\r\n'),
(41, 'Pharaoh’s Dance\r\n', 4, '00:20:06', '1970-03-03', 1, 'pharaohs_dance.JPG\r\n\r\n'),
(42, 'Yonaguni', 5, '00:04:33', '2021-06-04', 1, 'yonaguni.JPG\r\n\r\n'),
(43, 'El Último Tour Del Mundo\r\n', 5, '00:03:21', '2020-11-27', 1, 'el_ultimo_tour_del_mundo.JPG\r\n\r\n'),
(44, 'DÁKITI (with Jhay Cortez)\r\n', 5, '00:03:31', '2020-10-30', 1, 'dakiti.JPG\r\n\r\n'),
(45, 'Vete\r\n', 5, '00:03:33', '2019-11-15', 1, 'vete.JPG\r\n\r\n'),
(46, 'La Canción (with J Balvin)\r\n', 5, '00:04:23', '2019-11-09', 1, 'la_cancion.JPG\r\n\r\n'),
(47, 'Pa\' Romperla\r\n', 5, '00:03:17', '2020-11-27', 1, 'pa_romperla.JPG\r\n\r\n'),
(48, 'Bichiyal (with Yaviah)\r\n', 5, '00:03:26', '2020-11-27', 1, 'bichiyal.JPG\r\n\r\n'),
(49, 'Me Fui de Vacilón\r\n', 5, '00:03:26', '2022-02-04', 1, 'me_fui_de_vacilon.JPG\r\n\r\n'),
(50, 'Kany García Remix (feat. Bad Bunny)\r\n', 5, '00:04:00', '2022-03-11', 1, 'kany_garcia_remix.JPG\r\n\r\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `usuario_id`, `canciones_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 26),
(28, 1, 27),
(29, 1, 28),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'Pop'),
(2, 'Rock'),
(3, 'Hip-hop'),
(4, 'Jazz'),
(5, 'Regueton');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'Spotify free', 0),
(2, 'Premium Individual', 129),
(3, 'Premium Duo', 169),
(4, 'Premium Familiar', 199),
(5, 'Premium Estudiantes', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `nombre`, `usuario_id`, `duracion`, `totalcanciones`, `descripcion`, `publico`) VALUES
(1, 'playlis CT', 1, '05:26:00', 10, 'y puros corridos tumbados', 1),
(2, 'Corridos belicos 1', 1, '05:26:00', 10, 'pura belikada', 1),
(3, 'sad boyzz', 1, '05:26:00', 10, 'sad boyzz 4Life', 1),
(4, 'regueton beyako', 1, '05:26:00', 10, 'ea ea ea\r\n', 1),
(5, 'rock viejo', 1, '05:26:00', 10, 'yea yea', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlistcanciones`
--

INSERT INTO `playlistcanciones` (`id`, `playlist_id`, `canciones_id`, `usuario_id`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 6, 1),
(7, 1, 7, 1),
(8, 1, 8, 1),
(9, 1, 9, 1),
(10, 1, 10, 1),
(11, 2, 11, 1),
(12, 2, 12, 1),
(13, 2, 13, 1),
(14, 2, 14, 1),
(15, 2, 15, 1),
(16, 2, 16, 1),
(17, 2, 17, 1),
(18, 2, 18, 1),
(19, 2, 19, 1),
(20, 2, 20, 1),
(21, 3, 21, 1),
(22, 3, 22, 1),
(23, 3, 23, 1),
(24, 3, 24, 1),
(25, 3, 25, 1),
(26, 3, 26, 1),
(27, 3, 27, 1),
(28, 3, 28, 1),
(29, 3, 29, 1),
(30, 3, 30, 1),
(31, 4, 31, 1),
(32, 4, 32, 1),
(33, 4, 33, 1),
(34, 4, 34, 1),
(35, 4, 35, 1),
(36, 4, 36, 1),
(37, 4, 37, 1),
(38, 4, 38, 1),
(39, 4, 39, 1),
(40, 4, 40, 1),
(41, 5, 40, 1),
(42, 5, 41, 1),
(43, 5, 43, 1),
(44, 5, 44, 1),
(45, 5, 45, 1),
(46, 5, 46, 1),
(47, 5, 47, 1),
(48, 5, 48, 1),
(49, 5, 49, 1),
(50, 5, 50, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Emiliano Lopez', 'emilian.lopez23@cetis107.edu.mx', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`),
  ADD KEY `membresia_id_2` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD CONSTRAINT `artistascanciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistascanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
