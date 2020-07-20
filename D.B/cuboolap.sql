-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-07-2020 a las 17:34:31
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cuboolap`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `app` varchar(25) NOT NULL,
  `apm` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `app`, `apm`) VALUES
(1, 'AMAURI', 'GUADARRAMA', 'MONROY'),
(2, 'HECTOR', 'RODEA', 'FLORES'),
(3, 'DANA', 'CARRANZA', 'VILCHIS'),
(4, 'ERICK', 'HERNANDEZ', 'PEREZ'),
(5, 'MIGUEL', 'SANCHEZ', 'COLIN'),
(6, 'BELEN', 'COYO', 'REYES'),
(7, 'JUAN', 'ESCUTIA', 'HERNANDEZ'),
(8, 'DEMIN', 'FIGARO', 'ESTRADA'),
(9, 'ISSAC', 'AVILA', 'DELL'),
(10, 'ALAN PEDRO', 'MON', 'FIGARO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fecha`
--

CREATE TABLE `fecha` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fecha`
--

INSERT INTO `fecha` (`id`, `fecha`) VALUES
(1, '2020-01-15'),
(2, '2020-02-15'),
(3, '2020-03-15'),
(4, '2020-04-04'),
(5, '2020-05-11'),
(6, '2020-06-10'),
(7, '2020-07-15'),
(8, '2020-08-10'),
(9, '2020-09-10'),
(10, '2020-10-03'),
(11, '2020-11-11'),
(12, '2020-12-15'),
(13, '2021-01-19'),
(14, '2021-02-19'),
(15, '2021-03-11'),
(16, '2021-04-20'),
(17, '2021-05-10'),
(18, '2021-06-19'),
(19, '2021-07-25'),
(20, '2021-08-01'),
(21, '2021-09-19'),
(22, '2021-10-05'),
(23, '2021-11-04'),
(24, '2021-12-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `nombre`, `cantidad`, `precio`) VALUES
(1, 'LAPTOP DELL', 3, 3200),
(2, 'ROUTER HP', 3, 22000),
(3, 'SWITCH CISCO', 2, 2100),
(4, 'BOBINA DE CABLE', 3, 500),
(5, 'ESCALERA 6M', 2, 1200),
(6, 'BELCRO', 10, 60.5),
(7, 'RACK PATCH', 3, 12000),
(8, 'CHAROFIL 3M', 100, 100),
(9, 'AP TP LINK', 4, 1200),
(10, 'AP-CISCO MERAKI', 6, 5000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_fecha` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `id_cliente`, `id_fecha`, `id_producto`, `cantidad`) VALUES
(1, 2, 5, 9, 182),
(2, 7, 3, 7, 3),
(3, 7, 12, 9, 191),
(4, 2, 6, 1, 114),
(5, 9, 9, 1, 42),
(6, 8, 11, 4, 143),
(7, 6, 7, 1, 85),
(8, 3, 15, 6, 38),
(9, 6, 1, 8, 70),
(10, 5, 14, 2, 151),
(11, 6, 4, 8, 148),
(12, 10, 5, 10, 31),
(13, 4, 12, 9, 68),
(14, 7, 13, 9, 28),
(15, 7, 5, 9, 179),
(16, 3, 5, 5, 92),
(17, 3, 10, 5, 33),
(18, 6, 8, 6, 173),
(19, 9, 9, 5, 180),
(20, 2, 2, 9, 22),
(21, 3, 12, 6, 168),
(22, 10, 14, 2, 188),
(23, 2, 1, 6, 149),
(24, 7, 9, 3, 20),
(25, 3, 3, 2, 72),
(26, 1, 15, 8, 71),
(27, 5, 12, 1, 87),
(28, 8, 12, 6, 88),
(29, 5, 11, 2, 144),
(30, 7, 12, 4, 22),
(31, 10, 11, 2, 193),
(32, 5, 11, 9, 24),
(33, 8, 8, 7, 185),
(34, 9, 5, 10, 43),
(35, 6, 13, 6, 68),
(36, 8, 6, 2, 29),
(37, 1, 8, 7, 194),
(38, 8, 9, 5, 132),
(39, 2, 4, 6, 112),
(40, 7, 11, 5, 103),
(41, 6, 11, 1, 173),
(42, 2, 8, 10, 91),
(43, 10, 12, 10, 125),
(44, 1, 12, 7, 45),
(45, 2, 3, 10, 120),
(46, 2, 4, 4, 117),
(47, 8, 10, 9, 107),
(48, 2, 9, 9, 57),
(49, 8, 13, 4, 36),
(50, 8, 10, 8, 13),
(51, 8, 10, 2, 57),
(52, 8, 2, 10, 137),
(53, 5, 11, 2, 120),
(54, 10, 12, 2, 177),
(55, 8, 13, 1, 176),
(56, 1, 5, 2, 85),
(57, 4, 13, 5, 174),
(58, 8, 9, 6, 10),
(59, 10, 5, 4, 64),
(60, 9, 5, 3, 103),
(61, 3, 3, 3, 196),
(62, 2, 3, 9, 112),
(63, 2, 1, 1, 120),
(64, 4, 15, 3, 189),
(65, 3, 11, 5, 187),
(66, 2, 7, 2, 83),
(67, 5, 14, 3, 146),
(68, 4, 6, 4, 144),
(69, 4, 7, 3, 147),
(70, 8, 7, 5, 122),
(71, 9, 1, 10, 140),
(72, 10, 7, 4, 168),
(73, 6, 7, 4, 75),
(74, 9, 3, 7, 30),
(75, 4, 6, 2, 103),
(76, 2, 5, 3, 60),
(77, 10, 10, 1, 172),
(78, 7, 9, 9, 7),
(79, 10, 14, 8, 34),
(80, 10, 13, 3, 21),
(81, 3, 1, 2, 38),
(82, 10, 12, 1, 53),
(83, 7, 11, 10, 134),
(84, 4, 2, 2, 51),
(85, 8, 10, 8, 73),
(86, 10, 10, 3, 167),
(87, 5, 11, 5, 3),
(88, 4, 1, 1, 150),
(89, 4, 8, 9, 76),
(90, 5, 4, 4, 150),
(91, 4, 14, 6, 41),
(92, 10, 12, 9, 118),
(93, 1, 9, 4, 48),
(94, 7, 8, 5, 2),
(95, 3, 5, 1, 48),
(96, 2, 3, 7, 154),
(97, 9, 13, 4, 189),
(98, 4, 9, 5, 123),
(99, 4, 15, 1, 23),
(100, 10, 5, 5, 59),
(101, 7, 6, 9, 99),
(102, 7, 5, 5, 112),
(103, 6, 13, 5, 167),
(104, 4, 3, 3, 33),
(105, 7, 2, 8, 177),
(106, 7, 12, 5, 170),
(107, 8, 14, 4, 80),
(108, 3, 12, 10, 75),
(109, 7, 1, 2, 25),
(110, 2, 15, 5, 97),
(111, 2, 4, 8, 161),
(112, 9, 1, 7, 186),
(113, 9, 4, 1, 40),
(114, 3, 13, 4, 93),
(115, 6, 12, 7, 12),
(116, 10, 2, 3, 166),
(117, 1, 9, 4, 25),
(118, 10, 8, 3, 157),
(119, 2, 8, 10, 31),
(120, 8, 13, 10, 15),
(121, 5, 3, 2, 179),
(122, 3, 13, 2, 90),
(123, 8, 7, 8, 19),
(124, 1, 4, 6, 132),
(125, 9, 1, 5, 101),
(126, 2, 14, 10, 92),
(127, 5, 10, 10, 175),
(128, 1, 7, 1, 119),
(129, 4, 1, 2, 192),
(130, 6, 10, 8, 163),
(131, 3, 1, 8, 100),
(132, 6, 5, 7, 174),
(133, 10, 5, 4, 51),
(134, 7, 3, 6, 102),
(135, 2, 10, 10, 194),
(136, 7, 15, 2, 97),
(137, 7, 12, 1, 80),
(138, 4, 6, 3, 110),
(139, 3, 8, 6, 57),
(140, 4, 4, 6, 90),
(141, 5, 8, 3, 77),
(142, 6, 5, 10, 187),
(143, 3, 8, 8, 89),
(144, 7, 5, 1, 151),
(145, 4, 6, 9, 43),
(146, 5, 15, 7, 133),
(147, 5, 12, 4, 89),
(148, 7, 2, 5, 81),
(149, 4, 8, 10, 177),
(150, 10, 6, 3, 147);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fecha`
--
ALTER TABLE `fecha`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `fecha`
--
ALTER TABLE `fecha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
