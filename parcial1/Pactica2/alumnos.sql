-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 02:09:33
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
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Emiliano', 'Lopez Sanchez', '23325061070437', '2008-01-25', 1, 'emiliano.lopez23@cetis107.edu.mx', '6675137288'),
(2, 'hector aaron', 'ortiz serrano', '28742347238748347', '2008-08-23', 1, 'sptmarco16@gmail.com', '6673583222'),
(3, 'Victor manuel', 'diaz gastelum', '23325061070728', '2008-09-28', 1, 'victor.diaz23@cetis107.edu.mx', '66784895957894'),
(4, 'maximo', 'Coronel Aispuro', '23325061070422', '2008-04-12', 1, 'maximo.coronel23@cetis107.edu.mx', '66757854578'),
(5, 'Axel Armando', 'Beltran Lopez', '23325061070317', '2008-05-13', 1, 'axel.beltran@cetis107.edu.mx', '667578235784'),
(6, 'Diengo', 'Dominguez lizarraga', '23325061070579', '2008-11-10', 1, 'diego.dominguez@cetis107.edu.mx', '6676786767'),
(7, 'Firda Sofia', 'Sanchez Valenzuela', '23325061070611', '2008-01-10', 0, 'frida.sanchez23@cetis107.edu.mx', '66778789678'),
(8, 'Angel Gibran', 'Loaiza Garcia', '23325061070694', '2008-08-26', 1, 'angel.loaiza23@cetis107.edu.mx', '667676767679'),
(9, 'Bayron Uriel', 'Estrada Camacho', '23325061070375', '2008-08-13', 1, 'bayron.estrada23@cetis107.edu.mx', '6676786767'),
(10, 'Santiago', 'Lopez Aispuro', '23325061070386', '2008-04-20', 1, 'santiago.aispuro@cetis107.edu.mx', '6676786785678'),
(11, 'Luis Angel ', 'Moya Preciado', '23325061070393', '2008-12-29', 1, 'luis.moya@cetis107.edu.mx', '667787896789'),
(12, 'Paolo Nicholas', 'Valdez Bernal', '23325061070460', '2008-10-30', 1, 'paolo.valdez@cetis107.edu.mx', '66767675678'),
(13, 'mateo', 'ibarra gastelum', '23325061070484', '2008-06-24', 1, 'mateo.ibarra@cetis107.edu.mx', '6675678567'),
(14, 'Oscar Ivan', 'Torres Burgos', '23325061070510', '2008-05-03', 1, 'oscar.torres23@cetis107.edu.mx', '667679678'),
(15, 'Emiliano', 'Ojeda Quintero', '23325061070702', '2008-10-10', 1, 'emiliano.ojeda23@cetis107.edu.mx', '667678578568');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
