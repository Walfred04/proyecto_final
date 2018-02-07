-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 06-02-2018 a las 23:27:24
-- Versión del servidor: 5.7.16
-- Versión de PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `viajes`
--
CREATE DATABASE IF NOT EXISTS `viajes` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `viajes`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destinos`
--

CREATE TABLE `destinos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `costo` varchar(10) NOT NULL,
  `url_img` varchar(40) NOT NULL,
  `n_vuelos_total` int(11) NOT NULL,
  `n_vuelos_vendidos` int(11) NOT NULL DEFAULT '0',
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Contiene los destinos disponibles';

--
-- Volcado de datos para la tabla `destinos`
--

INSERT INTO `destinos` (`id`, `nombre`, `costo`, `url_img`, `n_vuelos_total`, `n_vuelos_vendidos`, `descripcion`) VALUES
(1, 'Miami', '5326', './imgs/madrid_oferta.png', 100, 19, 'South Beach es una de las zonas mï¿½s populares de Miami Beach; en sus playas se permite tomar baï¿½os de sol en topless. Otra de sus atracciones es una vida nocturna muy activa y dinï¿½mica, con mï¿½s de 150 clubes, discotecas y similares, asï¿½ como innumerables restaurantes.  Miami Beach es uno de los primeros 30 destinos para el turismo gay en los Estados Unidos. [cita requerida]  Miami Beach y sus alrededores se ha convertido tambiï¿½n en hogar de un creciente nï¿½mero de comunidades judï¿½as ortodoxas, los cuales han creado una red de sinagogas. Tambiï¿½n se encuentran muchas personas propietarias de viviendas veraniegas que las utilizan para huir del invierno en los estados mï¿½s al norte del paï¿½s.'),
(2, 'Rio de Janeiro', '11935', './imgs/janeiro_oferta.png', 90, 8, ''),
(3, 'Barcelona', '6400', './imgs/barcelona_oferta.png', 80, 7, ''),
(4, 'Madrid', '6000', './imgs/madrid_oferta.png', 70, 6, ''),
(5, 'Los Angeles', '6360', './imgs/angeles_oferta.png', 200, 4, 'Para poder vivir la esencia de Los Ãngeles, es indispensable haber pisado el suelo de ciertas zonas de la ciudad. AquÃ­ te ofrecemos un listado de los lugares que merecen ser visitados si viajas a Los Ãngeles.  En cada uno de estos sitios podrÃ¡s encontrar una breve descripciÃ³n sobre su atractivo turÃ­stico. En cada apartado encontrarÃ¡s un link que te permitirÃ¡ acceder a una informaciÃ³n mÃ¡s detallada sobre el emplazamiento que estÃ©s leyendo. Â¿EmpezÃ¡mos?'),
(6, 'Bangkok', '10000', './imgs/bangkok_oferta.png', 100, 13, 'Como capital polÃ­tica, econÃ³mica, cultural, gastronÃ³mica y espiritual de Tailandia, Bangkok cuenta tanto con el encanto clÃ¡sico y cultural que se desprende en todo el paÃ­s como con las comodidades modernas, a veces mostradas al viajero de una forma aparentemente caÃ³tica, pero siempre con esa sonrisa amable, sena de identidad de la hospitalidad tailandesa.'),
(10, 'Zipolite', '200', './imgs/villa.png', 20, 1, 'desc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hoteles`
--

CREATE TABLE `hoteles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `costo` varchar(10) NOT NULL,
  `url_img` varchar(40) NOT NULL,
  `n_habitaciones_total` int(11) NOT NULL,
  `n_habitaciones_vendidos` int(11) NOT NULL DEFAULT '0',
  `descripcion` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `hoteles`
--

INSERT INTO `hoteles` (`id`, `nombre`, `costo`, `url_img`, `n_habitaciones_total`, `n_habitaciones_vendidos`, `descripcion`) VALUES
(1, 'Miami', '1000', './imgs/ciudad1.png', 10, 4, 'South Beach es una de las zonas mï¿½s populares de Miami Beach; en sus playas se permite tomar baï¿½os de sol en topless. Otra de sus atracciones es una vida nocturna muy activa y dinï¿½mica, con mï¿½s de 150 clubes, discotecas y similares, asï¿½ como innumerables restaurantes.Miami Beach es uno de los primeros 30 destinos para el turismo gay en los Estados Unidos. [cita requerida]Miami Beach y sus alrededores se ha convertido tambiï¿½n en hogar de un creciente nï¿½mero de comunidades judï¿½as ortodoxas, los cuales han creado una red de sinagogas. Tambiï¿½n se encuentran muchas personas propietarias de viviendas veraniegas que las utilizan para huir del invierno en los estados mï¿½s al norte del paï¿½s.'),
(3, 'Mi edificio', '1250', './imgs/bangkok_oferta.png', 100, 1, 'Esta en acatlima haha');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mas_vendidos`
--

CREATE TABLE `mas_vendidos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `costo` varchar(10) NOT NULL,
  `url_img` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mas_vendidos`
--

INSERT INTO `mas_vendidos` (`id`, `nombre`, `costo`, `url_img`) VALUES
(1, 'Barcelona', '6,400', './imgs/barcelona.png'),
(2, 'Los Angeles', '6,360', './imgs/los_angeles.png'),
(3, 'Acapulco', '563', './imgs/acapulco.png'),
(4, 'Miami', '5,326', './imgs/miami.png'),
(5, 'Madrid', '6,000', './imgs/madrid.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `tipo` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena los usuarios';

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `email`, `tipo`) VALUES
(1, 'Walfred', 'contrasena1', 'walfred9643@gmail.com', 1),
(2, 'Laura', 'contrasena2', 'lauramotadiaz@gmail.com', 1),
(3, 'user', 'contra', 'email1', 0),
(16, 'usuario5', 'contrasena', 'correo5@gmail.com', 0),
(17, 'usuario7', 'contrasena', 'corre7@gmail.com', 1),
(18, 'usuario8', 'contrasena', 'correo8@gmail.com', 1),
(20, 'usuario12', 'contrasena', 'correo12@gmail.com', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `destino_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Almacena las compras ';

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `destino_id`, `usuario_id`) VALUES
(12, 1, 1),
(13, 6, 1),
(14, 1, 1),
(15, 2, 1),
(16, 3, 1),
(17, 3, 1),
(18, 4, 1),
(19, 6, 1),
(20, 1, 1),
(21, 2, 1),
(22, 1, 2),
(23, 2, 2),
(24, 1, 18),
(25, 1, 18),
(26, 4, 18),
(27, 4, 18),
(28, 6, 18),
(29, 2, 1),
(30, 1, 1),
(31, 4, 1),
(32, 3, 1),
(33, 5, 1),
(34, 1, 16),
(35, 2, 16),
(36, 6, 16),
(37, 6, 16),
(38, 6, 16),
(39, 6, 16),
(40, 5, 16),
(41, 1, 16),
(42, 6, 16),
(43, 6, 16),
(44, 6, 16),
(45, 5, 16),
(46, 5, 16),
(47, 6, 16),
(48, 6, 16),
(49, 1, 16),
(50, 2, 16),
(51, 1, 16),
(52, 1, 16),
(53, 1, 16),
(54, 1, 16),
(55, 3, 1),
(56, 3, 1),
(57, 1, 1),
(58, 6, 1),
(59, 10, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mas_vendidos`
--
ALTER TABLE `mas_vendidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `destino_id` (`destino_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `destinos`
--
ALTER TABLE `destinos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `hoteles`
--
ALTER TABLE `hoteles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `mas_vendidos`
--
ALTER TABLE `mas_vendidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `hoteles`
--
ALTER TABLE `hoteles`
  ADD CONSTRAINT `hoteles_ibfk_1` FOREIGN KEY (`id`) REFERENCES `ventas` (`destino_id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `ventas_ibfk_2` FOREIGN KEY (`destino_id`) REFERENCES `destinos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
