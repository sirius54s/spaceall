-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2020 a las 14:30:07
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `space`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `licencias`
--

CREATE TABLE `licencias` (
  `id` int(255) NOT NULL,
  `clave` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `licencias`
--

INSERT INTO `licencias` (`id`, `clave`) VALUES
(5, '123-123-123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(255) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `correo` varchar(50) COLLATE utf8_bin NOT NULL,
  `titulo` varchar(100) COLLATE utf8_bin NOT NULL,
  `pregunta` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `nombre`, `correo`, `titulo`, `pregunta`) VALUES
(137, 'xasxas', 'asxas', 'asxasx', 'asxasx');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuestas`
--

CREATE TABLE `respuestas` (
  `id` int(255) NOT NULL,
  `correo` varchar(50) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(50) COLLATE utf8_bin NOT NULL,
  `titulo` varchar(100) COLLATE utf8_bin NOT NULL,
  `pregunta` varchar(255) COLLATE utf8_bin NOT NULL,
  `respuesta` varchar(255) COLLATE utf8_bin NOT NULL,
  `megusta` varchar(255) COLLATE utf8_bin NOT NULL,
  `nomegusta` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `respuestas`
--

INSERT INTO `respuestas` (`id`, `correo`, `nombre`, `titulo`, `pregunta`, `respuesta`, `megusta`, `nomegusta`) VALUES
(1, 'demo@gmail.com', 'maria oba', 'marps', 'pregunta', 'respuesta', '14', '10'),
(5, 'marsiol@gmail.com', 'marisol sexto', 'las estrellas', 'la busqueda de las estrellas se hacen como?', 'buscando con telescopios sr marisol sexto', '12', '14'),
(6, 'asd@gmail.com', 'mario aux', 'el color', 'porque hay colores o que son?', 'porque asi lo es', '19', '17'),
(7, 'asds@gmail.com', 'marisol rojas11111', 'el color', 'el for', 'wasdsd', '6', '1'),
(8, 'mario412@gmail.com', 'mario jose', 'gravedad', 'que es la gravedad', 'la gravedad es el presion que nos mantiene unidos a la tierra', '35', '1'),
(9, 'demo2@gmail.com', 'marisol sexto', '1241242', '4214214', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '29', '3'),
(10, '', '', '', '', 'aaaaaaaaaaaaaa aaaaaaaaa aaaaaaaaaaaaaaaaaaaaaaaaa aaaaaaaaaaaaaaaaaaaaa aaaaaaaaa aaaaaaaa', '52', '10'),
(11, 'yoelreye@gmail.com', 'yoel alberto', 'el sol', 'que es el sol en si?', 'que es el sol?', '4', '4'),
(12, 'sdsds', 'dddddsd', 'd sdsds ', 'dsdsdsds', 'callate mmgv', '1', '0'),
(13, 'sdsds', 'dddddsd', 'd sdsds ', 'dsdsdsds', 'callate mmgv', '0', '0'),
(14, 'sdsds', 'dddddsd', 'd sdsds ', 'dsdsdsds', '', '0', '0'),
(15, 'sdsds', 'dddddsd', 'd sdsds ', 'dsdsdsds', '', '1', '0'),
(16, 'sdsds', 'dddddsd', 'd sdsds ', 'dsdsdsds', 'si', '0', '0'),
(17, 'sdsds', 'dddddsd', 'd sdsds ', 'dsdsdsds', 'ya', '2', '0'),
(18, '', '', '', '', 'que fue', '1', '0'),
(19, 'sdsds', 'dddddsd', 'd sdsds ', 'dsdsdsds', 'nada', '1', '0'),
(20, '', '', '', '', 'asi es', '1', '1'),
(21, 'sdsds', 'dddddsd', 'd sdsds ', 'dsdsdsds', 'quizas si\r\n', '1', '1'),
(22, 'sdsds', 'dddddsd', 'd sdsds ', 'dsdsdsds', 'asi es', '18', '14'),
(23, 'yoelreyeas@gmail.com', 'yoel alberto', 'el sol', 'el calentamiento', 'que fue', '3', '3'),
(24, 'marioasas@gmail.com', 'mario gyzan', 'enviar al txt', 'tus dydas ahira sub', 'tas pendejo', '0', '0'),
(25, 'dsdsds', 'dsds', 'dssssss', 'sss', 'que fue loca', '0', '0'),
(26, 'sdsadsad', 'pendejo', 'sdsddad', 'dadasdsad', 'que fue', '0', '0'),
(27, 'sadasdsad', 'sdsad', 'sadsdas', 'dadasd', 'que es eso', '0', '0'),
(28, 'cristhoferramirez7@gmail.', 'junior', 'cielo', 'que es el cielo', 'el cielo se ve azul gracias a a la admosfera', '0', '1'),
(29, 'adasdasdasd', 'asdasdasdasdas', 'dsadasd', 'sadasd', 'csxsaxxsax', '0', '0'),
(30, 'sadas', 'sdsad', 'dsad', 'sd', 'quue fue', '0', '0'),
(31, 'asxas', 'xasxasxas', 'xxasxasx', 'asxas', 'asxasx', '0', '0'),
(32, 'xasasxas', 'xasxasx', 'xasx', 'asxas', 'xaxasxasx', '0', '0'),
(33, 'xasxas', 'xasxasxas', 'xasxasxas', 'xasxasx', 'xaxsxs', '0', '0'),
(34, '', '', '', '', 'xasxasxasx', '0', '0'),
(35, 'asx', 'sxasx', 'xasxa', 'asxasx', 'asxasxasx', '0', '0'),
(36, 'ssxxxxxxx', 'asdassssss', 'xxxx', 'xxxxxxxxxxxxxxasxas', 'asxasxasx', '0', '0'),
(37, 'dasdasdas', 'dasdas', 'dasda', 'sdasdasd', 'adasdasd', '0', '0'),
(38, 'sadasdas', 'dasdas', 'das', 'dasdasd', 'sdadasdasd', '0', '0'),
(39, '', '', '', '', 'dasdasd', '0', '0'),
(40, 'dasd', 'asdasd', 'asdasd', 'asdasd', 'adssadasd', '0', '0'),
(41, 'dadas', 'dasdasd', 'asdas', 'sdsd', 'dasdsad', '0', '0'),
(42, '', '', '', '', 'asdasdsad', '0', '0'),
(43, 'sdadasd', 'asdsad', 'asdasd', 'asd', 'asdsadsd', '0', '0'),
(44, '', '', '', '', 'dasdasd', '0', '0'),
(45, 'asa', 'asdasd', 'dasdasd', 'asdas', 'salio?', '0', '0'),
(46, 'dasda', 'sdasd', 'sdasd', 'asdasdasd', 'sera?', '0', '0'),
(47, 'xasxasx', 'saxasx', 'xasxasx', 'asxasxas', 'sxsxs', '0', '0'),
(48, 'saxasxsa', 'xasx', 'asxasx', 'asxasxa', 'asxasxasx', '0', '0'),
(49, 'asxasx', 'saxas', 'xasx', 'asxasx', 'asi?\n', '0', '0'),
(50, 'Sdsa', 'dsadas', 'dasdas', 'dasdsad', 'no pasa nada', '0', '0'),
(51, 'asxa', 'asdsax', 'sxasx', 'asxasx', 'asxasx', '0', '0'),
(52, 'asxasx', 'asxasx', 'asxasx', 'asxasx', 'que fue', '0', '0'),
(53, 'cdscds', 'cdscds', 'cdscdscdsc', 'cdscdsc', 'ewdw eededed', '0', '0'),
(54, 'ws', 'wsw', 'sws', 'ss', 'xssxs', '0', '0'),
(55, 'fdfd', 'f', 'fdfdf', 'fdfdf', 'sisa', '0', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `correo` varchar(255) COLLATE utf8_bin NOT NULL,
  `usuario` varchar(50) COLLATE utf8_bin NOT NULL,
  `contrasena` varchar(255) COLLATE utf8_bin NOT NULL,
  `rango` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `correo`, `usuario`, `contrasena`, `rango`) VALUES
(25, 'demo2@gmail.com', 'moderador', '3627909a29c31381a071ec27f7c9ca97726182aed29a7ddd2e54353322cfb30abb9e3a6df2ac2c20fe23436311d678564d0c8d305930575f60e2d3d048184d79', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `licencias`
--
ALTER TABLE `licencias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `clave` (`clave`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `corrreo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `licencias`
--
ALTER TABLE `licencias`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT de la tabla `respuestas`
--
ALTER TABLE `respuestas`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
