-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 13-11-2024 a las 23:25:56
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `rescate_espacios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacio`
--

CREATE TABLE `espacio` (
  `id` int(11) NOT NULL,
  `nombre_espacio` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `municipio` int(11) NOT NULL,
  `fecha_intervencion` date NOT NULL,
  `ubicacion` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `beneficiarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `espacio`
--

INSERT INTO `espacio` (`id`, `nombre_espacio`, `municipio`, `fecha_intervencion`, `ubicacion`, `beneficiarios`) VALUES
(1, 'Espacio prueba', 3, '2024-11-01', 'sdsdfasfsfsdfsdfsd', 0),
(2, 'Espacio prueba', 2, '2024-11-01', 'sdsdfasfsfsdfsdfsd', 0),
(3, 'Espacio prueba', 2, '2024-11-01', 'sdsdfasfsfsdfsdfsd', 0),
(4, 'Espacio prueba', 8, '2024-11-01', 'sdsdfasfsfsdfsdfsd', 0),
(5, 'dsds', 11, '2024-11-21', 'dsdsd', 0),
(6, 'dsds', 9, '2024-11-21', 'dsdsd', 0),
(7, 'dsdsd', 3, '2024-11-05', 'ds', 0),
(8, 'dsdsd', 7, '2024-11-05', 'ds', 0),
(9, 's', 1, '2024-11-14', 'ss', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `ruta` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_ext` int(11) NOT NULL,
  `tipo_foto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE `municipio` (
  `id` int(11) NOT NULL,
  `municipio` varchar(50) CHARACTER SET utf8 NOT NULL,
  `info` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `poblacion` int(11) NOT NULL,
  `id_db` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id`, `municipio`, `info`, `poblacion`, `id_db`) VALUES
(1, 'Apozol', 'Apozol representa el 0.4% de la población total del estado de Zacatecas. Con una superficie de 292.8 km2 y una densidad de población de 21.4 hab./km2, este municipio tiene una edad mediana de 32 años. La mitad de la población tiene 32 años o menos.', 0, ''),
(2, 'Apulco', '', 0, ''),
(3, 'Atolinga', '', 0, ''),
(4, 'Benito Juárez', '', 0, ''),
(5, 'Calera', '', 0, ''),
(6, 'Cañitas de Felipe Pescador', '', 0, ''),
(7, 'Concepción del Oro', '', 0, ''),
(8, 'Cuauhtémoc', '', 0, ''),
(9, 'Chalchihuites', '', 0, ''),
(10, 'Fresnillo', '', 0, ''),
(11, 'Trinidad García de la Cadena', '', 0, ''),
(12, 'Genaro Codina', '', 0, ''),
(13, 'General Enrique Estrada', '', 0, ''),
(14, 'General Francisco R. Murguía', '', 0, ''),
(15, 'El Plateado de Joaquín Amaro', '', 0, ''),
(16, 'General Pánfilo Natera', '', 0, ''),
(17, 'Guadalupe', '', 0, ''),
(18, 'Huanusco', '', 0, ''),
(19, 'Jalpa', '', 0, ''),
(20, 'Jerez', '', 0, ''),
(21, 'Jiménez del Teul', '', 0, ''),
(22, 'Juan Aldama', '', 0, ''),
(23, 'Juchipila', '', 0, ''),
(24, 'Loreto', '', 0, ''),
(25, 'Luis Moya', '', 0, ''),
(26, 'Mazapil', '', 0, ''),
(27, 'Melchor Ocampo', '', 0, ''),
(28, 'Mezquital del Oro', '', 0, ''),
(29, 'Miguel Auza', '', 0, ''),
(30, 'Momax', '', 0, ''),
(31, 'Monte Escobedo', '', 0, ''),
(32, 'Morelos', '', 0, ''),
(33, 'Moyahua de Estrada', '', 0, ''),
(34, 'Nochistlán de Mejía', '', 0, ''),
(35, 'Noria de Ángeles', '', 0, ''),
(36, 'Ojocaliente', '', 0, ''),
(37, 'Pánuco', '', 0, ''),
(38, 'Pinos', '', 0, ''),
(39, 'Río Grande', '', 0, ''),
(40, 'Sain Alto', '', 0, ''),
(41, 'El Salvador', '', 0, ''),
(42, 'Sombrerete', '', 0, ''),
(43, 'Susticacán', '', 0, ''),
(44, 'Tabasco', '', 0, ''),
(45, 'Tepechitlán', '', 0, ''),
(46, 'Tepetongo', '', 0, ''),
(47, 'Teúl de González Ortega', '', 0, ''),
(48, 'Tlaltenango de Sánchez Román', '', 0, ''),
(49, 'Valparaíso', '', 0, ''),
(50, 'Vetagrande', '', 0, ''),
(51, 'Villa de Cos', '', 0, ''),
(52, 'Villa García', '', 0, ''),
(53, 'Villa González Ortega', '', 0, ''),
(54, 'Villa Hidalgo', '', 0, ''),
(55, 'Villanueva', '', 0, ''),
(56, 'Zacatecas', '', 0, ''),
(57, 'Trancoso', '', 0, ''),
(58, 'Santa María de la Paz', '', 0, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `espacio`
--
ALTER TABLE `espacio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `espacio`
--
ALTER TABLE `espacio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
