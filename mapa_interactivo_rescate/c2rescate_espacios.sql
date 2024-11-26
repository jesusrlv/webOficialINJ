-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 26-11-2024 a las 13:25:01
-- Versión del servidor: 10.5.6-MariaDB
-- Versión de PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `c2rescate_espacios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacio`
--

CREATE TABLE IF NOT EXISTS `espacio` (
  `id` int(11) NOT NULL,
  `nombre_espacio` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `municipio` int(11) NOT NULL,
  `fecha_intervencion` date NOT NULL,
  `ubicacion` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `beneficiarios` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `espacio`
--

INSERT INTO `espacio` (`id`, `nombre_espacio`, `municipio`, `fecha_intervencion`, `ubicacion`, `beneficiarios`) VALUES
(1, 'Rehabilitación de la cancha de futbol rápido de pasto sintético en Morelos Zacatecas', 32, '2023-11-01', 'https://maps.app.goo.gl/Na2mW6DLEEtNz6mt5', 1250),
(2, 'Remodelación de la cancha de futbol rápido en el Deportivo Llerena', 42, '2023-11-26', 'https://maps.app.goo.gl/aJXUkMnGxvcW5t43A', 1550),
(3, 'Rehabilitación de cancha de Basquetbol UTZAC', 17, '2023-11-27', 'https://maps.app.goo.gl/aptR56FHZ2Se1xbu6', 1550),
(4, 'Construcción de gradas y aforo para cancha CECYTE de Calera', 5, '2023-11-27', 'https://maps.app.goo.gl/y2mRi9abgSqHCuUu5', 610),
(5, 'Rehabilitación de espacio comedor estudiantil y área de lectura al aire libre', 51, '2023-11-27', 'https://maps.app.goo.gl/6X9TYquSwQrcTSGr9', 97),
(6, 'Rehabilitación de cancha de Basquetbol Unidad Deportiva de Piedra Gorda', 8, '2025-11-27', 'https://maps.app.goo.gl/XhvvphJGbLxyHeX19', 500),
(7, 'Construcción de gradas de concreto', 10, '2023-11-27', 'https://maps.app.goo.gl/oz9tA8NRkUXWVeBF8', 331),
(8, 'Rehabilitación de canchas (CONALEP)', 17, '2023-11-27', 'https://maps.app.goo.gl/a3aRLx9r5jhr4FUeA', 426),
(9, 'Rehabilitación de cancha de basquetbol y frontenis', 45, '2023-11-27', 'https://maps.app.goo.gl/xJKxijYK9aqbTgZKA', 800),
(10, 'Rehabilitación de cancha de futbol', 10, '2023-11-27', 'https://maps.app.goo.gl/vwSMSx5QDfMMEtmD6', 1119),
(11, 'Rehabilitación de Cancha de Futbol Santa Gertrudis (Cancha Azul)', 55, '2023-11-27', 'https://maps.app.goo.gl/Ma2w8W1GDNWWqXVr6', 80),
(12, 'Rehabilitación de Cancha Deportiva, en la comunidad de Chiquihuite', 43, '2023-11-27', 'https://maps.app.goo.gl/BCZdLVVX33jdh9Xz6', 80),
(13, 'Rehabilitación de cancha de futbol rápido colonia Acevedo', 24, '2023-11-27', 'https://maps.app.goo.gl/f3jUAMRQvqGC3Q567', 585),
(14, 'Construcción de Plaza Cívica en el centro EMSaD Ramón López Velarde', 5, '2023-11-27', 'https://maps.app.goo.gl/dMeZjZweovwcLJGG9', 129),
(15, 'Rehabilitación de parque', 34, '2023-11-27', 'https://maps.app.goo.gl/c15Faf3XYrxXq5m1A', 550),
(16, 'Equipamiento de biblioteca escolar EMSAD', 42, '2023-11-27', 'https://maps.app.goo.gl/nuQAXu1otGw3ZNf3A', 50),
(17, 'Rehabilitación de módulos sanitarios CECYTEZ Plateros', 10, '2023-11-27', 'https://maps.app.goo.gl/Xc9kSzqZxFFx8MAB6', 398),
(18, 'Construcción de Cancha de Voleybol CECYTEZ', 50, '2024-11-27', 'https://maps.app.goo.gl/mu6PZLbpaP2DSJVPA', 205),
(19, 'Espacio recreativo Bajo Sombra (Santa Ana)', 38, '2023-11-27', 'https://maps.app.goo.gl/ae1ZaAosDWTpaaBM7', 166),
(20, 'Construcción de gradas de concreto', 38, '2023-11-27', 'https://maps.app.goo.gl/ae1ZaAosDWTpaaBM7', 280),
(21, 'Suministro e instalación de pasto sintético', 23, '2023-11-27', 'https://maps.app.goo.gl/mDwvunhaSxU5abVWA', 467),
(22, 'Iluminación de campo San José', 23, '2023-11-27', 'https://maps.app.goo.gl/5P5vnGxDyATgUGuE6', 760),
(23, 'Construcción de gimnasio al aire libre', 50, '2023-11-27', 'https://maps.app.goo.gl/CqduCZQWsuj5nmGJ9', 436),
(24, 'Área común recreativa UTZAC', 17, '2023-11-27', 'https://maps.app.goo.gl/hV6v5g9Z2vitpbWeA', 1550),
(25, 'Espacio joven, colonia Manuel M. Ponce', 10, '2023-11-27', 'https://maps.app.goo.gl/ivwvdoteXgW4u3yZ8', 700),
(26, 'Espacio joven, colonia Magisterial', 10, '2023-11-27', 'https://maps.app.goo.gl/ssJFsyqbjjTpt6H4A', 600),
(27, 'Construcción de gimnasio al aire libre', 49, '2023-11-27', 'https://maps.app.goo.gl/i62SiHRTNqK4xaRt6', 350),
(28, 'Rehabilitación de Parque "Las Lomitas"', 48, '2023-11-27', 'https://maps.app.goo.gl/Dvw7zQkyozQurNLq9', 130),
(29, 'Gimnasio al aire libre', 5, '2024-11-27', 'https://maps.app.goo.gl/kpVsKhBxfThoUA4Q8', 400),
(30, 'Equipamiento de cancha de basquetbol', 31, '2023-11-27', 'https://maps.app.goo.gl/zA5rALXrCtARGWsh7', 70),
(31, 'Gimnasio al aire libre (La Honda)', 35, '2023-11-27', 'https://maps.app.goo.gl/jdgaQi8J94wAmD5X6', 600),
(32, 'Rehabilitación de la plaza de los pintores', 57, '2023-11-27', 'https://maps.app.goo.gl/5NX28imrvuBrRdcV9', 120),
(33, 'Rehabilitación de espacio recreativo', 6, '2023-11-27', 'https://maps.app.goo.gl/SmKQyUSWcT2QcTFX6', 900),
(34, 'Suministro equipo (CONALEP)', 17, '2023-11-27', 'https://maps.app.goo.gl/a3aRLx9r5jhr4FUeA', 426),
(35, 'Equipamiento de centro de cómputo', 42, '2023-11-27', 'https://maps.app.goo.gl/f6H1BAGPzUerwj7v8', 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE IF NOT EXISTS `fotos` (
  `id` int(11) NOT NULL,
  `ruta` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_ext` int(11) NOT NULL,
  `tipo_foto` int(11) NOT NULL,
  `complemento` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id`, `ruta`, `id_ext`, `tipo_foto`, `complemento`) VALUES
(1, '33_1_1.jpg', 33, 1, 1),
(2, '33_1_2.jpg', 33, 1, 2),
(3, '33_2_1.jpeg', 33, 2, 1),
(4, '33_2_2.JPG', 33, 2, 2),
(5, '33_2_3.JPG', 33, 2, 3),
(6, '33_2_4.JPG', 33, 2, 4),
(7, '33_2_5.jpeg', 33, 2, 5),
(8, '14_1_1.jpg', 14, 1, 1),
(9, '14_1_2.jpg', 14, 1, 2),
(10, '14_2_1.jpg', 14, 2, 1),
(11, '14_2_2.jpg', 14, 2, 2),
(12, '4_1_1.jpg', 4, 1, 1),
(13, '4_1_2.jpg', 4, 1, 2),
(15, '4_2_1.JPG', 4, 2, 1),
(16, '4_2_2.JPG', 4, 2, 2),
(17, '4_2_3.JPG', 4, 2, 3),
(18, '4_2_4.JPG', 4, 2, 4),
(19, '17_2_1.jpg', 17, 2, 1),
(20, '17_2_2.jpg', 17, 2, 2),
(21, '17_2_3.jpg', 17, 2, 3),
(22, '17_2_4.jpg', 17, 2, 4),
(23, '17_2_5.jpg', 17, 2, 5),
(24, '19_1_1.jpg', 19, 1, 1),
(25, '19_1_2.jpg', 19, 1, 2),
(26, '19_2_1.JPG', 19, 2, 1),
(27, '19_2_2.JPG', 19, 2, 2),
(28, '12_1_1.JPG', 12, 1, 1),
(29, '12_1_2.jpg', 12, 1, 2),
(30, '12_2_1.JPG', 12, 2, 1),
(31, '12_2_2.JPG', 12, 2, 2),
(32, '12_2_3.jpg', 12, 2, 3),
(33, '12_2_4.jpg', 12, 2, 4),
(34, '12_2_5.JPG', 12, 2, 5),
(35, '8_1_1.jpg', 8, 1, 1),
(36, '8_1_2.jpg', 8, 1, 2),
(37, '8_2_1.JPG', 8, 2, 1),
(38, '8_2_2.JPG', 8, 2, 2),
(39, '6_1_1.jpg', 6, 1, 1),
(40, '6_2_1.jpg', 6, 2, 1),
(41, '6_2_2.jpg', 6, 2, 2),
(42, '6_2_3.JPG', 6, 2, 3),
(43, '6_2_4.JPG', 6, 2, 4),
(46, '21_1_2.jpg', 21, 1, 2),
(47, '21_1_3.jpg', 21, 1, 3),
(48, '21_2_1.jpg', 21, 2, 1),
(49, '21_2_2.JPG', 21, 2, 2),
(50, '21_2_3.JPG', 21, 2, 3),
(51, '21_2_4.JPG', 21, 2, 4),
(52, '21_2_5.JPG', 21, 2, 5),
(53, '13_1_1.jpg', 13, 1, 1),
(54, '13_1_2.jpg', 13, 1, 2),
(55, '13_1_3.jpg', 13, 1, 3),
(56, '13_2_1.jpg', 13, 2, 1),
(57, '13_2_2.jpg', 13, 2, 2),
(58, '15_1_1.jpg', 15, 1, 1),
(59, '15_2_1.jpg', 15, 2, 1),
(60, '15_2_2.jpg', 15, 2, 2),
(61, '31_2_1.jpeg', 31, 2, 1),
(62, '31_2_2.jpeg', 31, 2, 2),
(63, '31_2_3.jpeg', 31, 2, 3),
(64, '31_2_4.jpeg', 31, 2, 4),
(65, '16_2_1.JPG', 16, 2, 1),
(66, '16_2_2.JPG', 16, 2, 2),
(67, '16_2_3.JPG', 16, 2, 3),
(68, '16_2_4.JPG', 16, 2, 4),
(69, '16_2_5.JPG', 16, 2, 5),
(70, '9_1_1.jpg', 9, 1, 1),
(71, '9_1_2.jpg', 9, 1, 2),
(72, '9_2_1.jpg', 9, 2, 1),
(73, '9_2_2.JPG', 9, 2, 2),
(74, '9_2_3.JPG', 9, 2, 3),
(75, '9_2_4.jpg', 9, 2, 4),
(76, '9_2_5.jpg', 9, 2, 5),
(77, '9_2_6.jpg', 9, 2, 6),
(78, '9_2_7.jpg', 9, 2, 7),
(79, '32_1_1.jpg', 32, 1, 1),
(80, '32_1_2.jpg', 32, 1, 2),
(81, '32_1_3.jpg', 32, 1, 3),
(82, '32_2_1.JPG', 32, 2, 1),
(83, '32_2_2.JPG', 32, 2, 2),
(84, '32_2_3.JPG', 32, 2, 3),
(85, '3_1_1.jpg', 3, 1, 1),
(86, '3_1_2.jpg', 3, 1, 2),
(87, '3_2_1.jpg', 3, 2, 1),
(88, '3_2_2.jpg', 3, 2, 2),
(89, '3_2_3.jpg', 3, 2, 3),
(90, '24_1_1.jpg', 24, 1, 1),
(91, '24_2_1.jpg', 24, 2, 1),
(92, '24_2_2.jpg', 24, 2, 2),
(93, '18_1_1.jpg', 18, 1, 1),
(94, '18_1_2.jpg', 18, 1, 2),
(95, '18_2_1.jpg', 18, 2, 1),
(96, '18_2_2.jpg', 18, 2, 2),
(97, '11_2_1.JPG', 11, 2, 1),
(98, '11_2_2.JPG', 11, 2, 2),
(99, '11_2_3.JPG', 11, 2, 3),
(100, '11_2_4.JPG', 11, 2, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipio`
--

CREATE TABLE IF NOT EXISTS `municipio` (
  `id` int(11) NOT NULL,
  `municipio` varchar(50) CHARACTER SET utf8 NOT NULL,
  `info` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `poblacion` int(11) NOT NULL,
  `id_db` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `municipio`
--

INSERT INTO `municipio` (`id`, `municipio`, `info`, `poblacion`, `id_db`) VALUES
(1, 'Apozol', 'Localidad con tradiciones agrícolas y clima cálido, conocida por sus balnearios y paisajes.', 4238, 'apozol'),
(2, 'Apulco', 'Municipio pequeño dedicado principalmente a la agricultura y ganadería.', 4942, 'apulco'),
(3, 'Atolinga', 'Localidad con tradición en la producción de alimentos locales y actividades ganaderas.', 2277, 'atolinga'),
(4, 'Benito Juárez', 'Municipio agrícola con comunidades rurales y actividades tradicionales.', 4493, 'benitoJuarez'),
(5, 'Calera', 'Zona industrial y comercial con importancia logística en Zacatecas.', 45759, 'calera'),
(6, 'Cañitas de Felipe Pescador', 'Municipio agrícola con énfasis en la producción de frijol y maíz.', 8255, 'canitasdeFelipePescador'),
(7, 'Concepción del Oro', 'Región minera con importancia histórica en la extracción de metales preciosos.', 12115, 'concepciondelOro'),
(8, 'Cuauhtémoc', 'Localidad agrícola y ganadera que contribuye a la economía rural del estado.', 13466, 'ciudadCuauhtemoc'),
(9, 'Chalchihuites', 'Municipio con una rica historia minera y atractivos arqueológicos.', 10086, 'chalchihuites'),
(10, 'Fresnillo', 'Centro minero más importante del estado y el municipio más poblado de Zacatecas.', 240532, 'fresnillo'),
(11, 'Trinidad García de la Cadena', 'Región montañosa con economía basada en agricultura y ganadería.', 3362, 'trinidadGarciadelaCadena'),
(12, 'Genaro Codina', 'Municipio con cultura tradicional y producción agrícola.', 8168, 'genaroCodina'),
(13, 'General Enrique Estrada', 'Pequeño municipio agrícola con actividades ganaderas complementarias.', 6644, 'enriqueEstrada'),
(14, 'General Francisco R. Murguía', 'Zona agrícola importante con recursos hídricos para el riego.', 20191, 'franciscoRMurguia'),
(15, 'El Plateado de Joaquín Amaro', 'Municipio con historia minera y tradición cultural.', 1579, 'joaquinAmaro'),
(16, 'General Pánfilo Natera', 'Región agrícola destacada por la producción de chile seco.', 23526, 'generalPanfiloNatera'),
(17, 'Guadalupe', 'Zona conurbada con Zacatecas capital, destaca por su crecimiento urbano y servicios.', 211740, 'guadalupe'),
(18, 'Huanusco', 'Región agrícola con tradición en la producción de caña de azúcar.', 4547, 'huanusco'),
(19, 'Jalpa', 'Municipio con actividades agrícolas y una rica herencia cultural.', 25296, 'jalpa'),
(20, 'Jerez', 'Pueblo Mágico famoso por su música, cultura y arquitectura colonial.', 59910, 'jerez'),
(21, 'Jiménez del Teul', 'Pequeño municipio rural con actividades agrícolas y ganaderas.', 4465, 'jimenezdelTeul'),
(22, 'Juan Aldama', 'Región histórica con economía agrícola y ganadera.', 19749, 'juanAldama'),
(23, 'Juchipila', 'Municipio con clima cálido, dedicado principalmente a la agricultura.', 12251, 'juchipila'),
(24, 'Loreto', 'Región con actividades comerciales y agrícolas destacadas.', 53709, 'loreto'),
(25, 'Luis Moya', 'Localidad agrícola con tradición en la producción de maíz y frijol.', 13184, 'luisMoya'),
(26, 'Mazapil', 'Municipio con extensas áreas mineras y proyectos industriales.', 17774, 'mazapil'),
(27, 'Melchor Ocampo', 'Pequeño municipio rural con comunidades tradicionales.', 2736, 'melchorOcampo'),
(28, 'Mezquital del Oro', 'Localidad montañosa con actividades ganaderas y forestales.', 2451, 'mezquitaldelOro'),
(29, 'Miguel Auza', 'Región agrícola importante con sistemas de riego avanzados.', 23713, 'miguelAuza'),
(30, 'Momax', 'Municipio pequeño con tradición agrícola y ganadera.', 2446, 'momax'),
(31, 'Monte Escobedo', 'Localidad rural con producción agrícola y recursos naturales.', 8683, 'monteEscobedo'),
(32, 'Morelos', 'Región en crecimiento, cercana a la capital del estado, con economía diversificada.', 13207, 'morelos'),
(33, 'Moyahua de Estrada', 'Municipio agrícola con tradiciones culturales significativas.', 4530, 'moyahua'),
(34, 'Nochistlán de Mejía', 'Pueblo Mágico con importante patrimonio histórico y arquitectónico.', 27945, 'nochistlan'),
(35, 'Noria de Ángeles', 'Localidad minera y agrícola con historia colonial.', 16284, 'noriadeAngeles'),
(36, 'Ojocaliente', 'Municipio agrícola y ganadero con gran historia.', 44144, 'ojocaliente'),
(37, 'Pánuco', 'Pequeño municipio cercano a la capital con actividades rurales.', 17577, 'panuco'),
(38, 'Pinos', 'Región histórica con arquitectura colonial y actividad agrícola.', 72241, 'pinos'),
(39, 'Río Grande', 'Municipio agrícola con fuerte actividad económica regional.', 64535, 'rioGrande'),
(40, 'Sain Alto', 'Región rural con economía basada en agricultura y ganadería.', 21844, 'sainAlto'),
(41, 'El Salvador', 'Pequeño municipio con economía rural y tradiciones culturales.', 2509, 'elSalvador'),
(42, 'Sombrerete', 'Región minera y agrícola con patrimonio histórico y arquitectónico.', 63665, 'sombrerete'),
(43, 'Susticacán', 'Municipio más pequeño, con actividades rurales y tranquilidad.', 1365, 'susticacan'),
(44, 'Tabasco', 'Región agrícola con tradición en la producción de caña de azúcar.', 16588, 'tabasco'),
(45, 'Tepechitlán', 'Municipio rural con tradición agrícola y ganadera.', 8321, 'tepechitlan'),
(46, 'Tepetongo', 'Localidad con actividades agrícolas y ganaderas complementarias.', 6490, 'tepetongo'),
(47, 'Teúl de González Ortega', 'Pueblo Mágico con rica tradición cultural y arquitectura colonial.', 5356, 'teuldeGonzalezOrtega'),
(48, 'Tlaltenango de Sánchez Román', 'Municipio agrícola y ganadero con tradición histórica.', 27302, 'tlaltenango'),
(49, 'Valparaíso', 'Región extensa con actividades agrícolas, ganaderas y forestales.', 32461, 'valparaiso'),
(50, 'Vetagrande', 'Municipio cercano a la capital con tradición minera.', 10276, 'vetagrande'),
(51, 'Villa de Cos', 'Localidad agrícola con grandes extensiones de cultivo.', 34623, 'villadeCos'),
(52, 'Villa García', 'Municipio agrícola con economía basada en la producción de maíz y chile.', 19525, 'villaGarcia'),
(53, 'Villa González Ortega', 'Pequeño municipio agrícola y rural con tradiciones culturales.', 13208, 'villaGonzalezOrtega'),
(54, 'Villa Hidalgo', 'Localidad agrícola con recursos hídricos para la producción.', 19446, 'villaHidalgo'),
(55, 'Villanueva', 'Región agrícola y ganadera con atractivos culturales.', 31558, 'villanueva'),
(56, 'Zacatecas', 'Capital del estado, famosa por su arquitectura colonial y patrimonio histórico.', 149607, 'Zacatecas'),
(57, 'Trancoso', 'Zona cercana a Guadalupe con crecimiento urbano y agrícola.', 20455, 'trancoso'),
(58, 'Santa María de la Paz', 'Municipio pequeño y tranquilo con actividades rurales.', 2767, 'santaMariadelaPaz');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT de la tabla `municipio`
--
ALTER TABLE `municipio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
