-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-11-2024 a las 20:24:19
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
  `ubicacion` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `beneficiarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `ruta` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `id_ext` int(11) NOT NULL,
  `tipo_foto` int(11) NOT NULL,
  `complemento` int(11) NOT NULL
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
