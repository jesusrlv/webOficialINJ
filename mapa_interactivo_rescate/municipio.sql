-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 21-11-2024 a las 20:32:22
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
(1, 'Apozol', 'Apozol representa el 0.4% de la población total del estado de Zacatecas. Con una superficie de 292.8 km2 y una densidad de población de 21.4 hab./km2, este municipio tiene una edad mediana de 32 años. La mitad de la población tiene 32 años o menos.', 11, 'apozol'),
(2, 'Apulco', 'e', 5, 'apulco'),
(3, 'Atolinga', 'Atolinga', 0, 'atolinga'),
(4, 'Benito Juárez', 'Benito Juárez', 0, 'benitoJuarez'),
(5, 'Calera', 'Calera', 0, 'calera'),
(6, 'Cañitas de Felipe Pescador', 'Cañitas de Felipe Pescador', 0, 'canitasdeFelipePescador'),
(7, 'Concepción del Oro', 'Concepción del Oro', 0, 'concepciondelOro'),
(8, 'Cuauhtémoc', 'Cuauhtémoc', 0, 'ciudadCuauhtemoc'),
(9, 'Chalchihuites', 'Chalchihuites', 0, 'chalchihuites'),
(10, 'Fresnillo', 'Fresnillo', 0, 'fresnillo'),
(11, 'Trinidad García de la Cadena', 'Trinidad García de la Cadena', 0, 'trinidadGarciadelaCadena'),
(12, 'Genaro Codina', 'Genaro Codina', 0, 'genaroCodina'),
(13, 'General Enrique Estrada', 'General Enrique Estrada', 0, 'enriqueEstrada'),
(14, 'General Francisco R. Murguía', 'General Francisco R. Murguía', 0, 'franciscoRMurguia'),
(15, 'El Plateado de Joaquín Amaro', 'El Plateado de Joaquín Amaro', 0, 'joaquinAmaro'),
(16, 'General Pánfilo Natera', 'General Pánfilo Natera', 0, 'generalPanfiloNatera'),
(17, 'Guadalupe', 'Guadalupe', 0, 'guadalupe'),
(18, 'Huanusco', 'Huanusco', 0, 'huanusco'),
(19, 'Jalpa', 'Jalpa', 0, 'jalpa'),
(20, 'Jerez', 'Jerez', 0, 'jerez'),
(21, 'Jiménez del Teul', 'Jiménez del Teul', 0, 'jimenezdelTeul'),
(22, 'Juan Aldama', 'Juan Aldama', 0, 'juanAldama'),
(23, 'Juchipila', 'Juchipila', 0, 'juchipila'),
(24, 'Loreto', 'Loreto', 0, 'loreto'),
(25, 'Luis Moya', 'Luis Moya', 0, 'luisMoya'),
(26, 'Mazapil', 'Mazapil', 12, 'mazapil'),
(27, 'Melchor Ocampo', 'Melchor Ocampo', 0, 'melchorOcampo'),
(28, 'Mezquital del Oro', 'Mezquital del Oro', 0, 'mezquitaldelOro'),
(29, 'Miguel Auza', 'Miguel Auza', 0, 'miguelAuza'),
(30, 'Momax', 'Momax', 0, 'momax'),
(31, 'Monte Escobedo', 'Monte Escobedo', 0, 'monteEscobedo'),
(32, 'Morelos', 'Morelos', 0, 'morelos'),
(33, 'Moyahua de Estrada', 'Moyahua de Estrada', 0, 'moyahua'),
(34, 'Nochistlán de Mejía', 'Nochistlán de Mejía', 0, 'nochistlan'),
(35, 'Noria de Ángeles', 'Noria de Ángeles', 0, 'noriadeAngeles'),
(36, 'Ojocaliente', 'Ojocaliente', 0, 'ojocaliente'),
(37, 'Pánuco', 'Pánuco', 0, 'panuco'),
(38, 'Pinos', 'Pinos', 0, 'pinos'),
(39, 'Río Grande', 'Río Grande', 0, 'rioGrande'),
(40, 'Sain Alto', 'Sain Alto', 0, 'sainAlto'),
(41, 'El Salvador', 'El Salvador', 0, 'elSalvador'),
(42, 'Sombrerete', 'Sombrerete', 0, 'sombrerete'),
(43, 'Susticacán', 'Susticacán', 0, 'susticacan'),
(44, 'Tabasco', 'Tabasco', 0, 'tabasco'),
(45, 'Tepechitlán', 'Tepechitlán', 0, 'tepechitlan'),
(46, 'Tepetongo', 'Tepetongo', 0, 'tepetongo'),
(47, 'Teúl de González Ortega', 'Teúl de González Ortega', 0, 'teuldeGonzalezOrtega'),
(48, 'Tlaltenango de Sánchez Román', 'Tlaltenango de Sánchez Román', 0, 'tlaltenango'),
(49, 'Valparaíso', 'Valparaíso', 0, 'valparaiso'),
(50, 'Vetagrande', 'Vetagrande', 0, 'vetagrande'),
(51, 'Villa de Cos', 'Villa de Cos', 0, 'villadeCos'),
(52, 'Villa García', 'Villa García', 0, 'villaGarcia'),
(53, 'Villa González Ortega', 'Villa González Ortega', 0, 'villaGonzalezOrtega'),
(54, 'Villa Hidalgo', 'Villa Hidalgo', 0, 'villaHidalgo'),
(55, 'Villanueva', 'Villanueva', 0, 'villanueva'),
(56, 'Zacatecas', 'Zacatecas', 0, 'Zacatecas'),
(57, 'Trancoso', 'Trancoso', 0, 'trancoso'),
(58, 'Santa María de la Paz', 'Santa María de la Paz', 0, 'santaMariadelaPaz');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `municipio`
--
ALTER TABLE `municipio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
