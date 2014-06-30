-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-06-2014 a las 20:15:02
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `travelshare`
--
CREATE DATABASE IF NOT EXISTS `travelshare` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `travelshare`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE IF NOT EXISTS `ciudades` (
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`nombre`) VALUES
('Almeria'),
('cadiz'),
('cordoba'),
('granada'),
('huelva'),
('jaen'),
('madrid'),
('malaga'),
('sevilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE IF NOT EXISTS `publicaciones` (
  `id_publicacion` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(20) NOT NULL,
  `id_vehiculo` int(20) NOT NULL,
  `nombre_ciudad` varchar(20) NOT NULL,
  `nombre_universidad` varchar(20) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `fecha` date NOT NULL,
  `hora` varchar(5) NOT NULL,
  PRIMARY KEY (`id_publicacion`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id_publicacion`, `nick`, `id_vehiculo`, `nombre_ciudad`, `nombre_universidad`, `descripcion`, `fecha`, `hora`) VALUES
(2, 'zadik', 1, 'sevilla', 'pablo de olavide', 'todos los dias', '2014-05-07', '19:00'),
(3, 'pako', 2, 'malaga', 'universidad de sevil', 'todos los dias', '2014-05-13', '08:00'),
(4, 'zadik', 2, 'granada', 'universidad de grana', 'todos los lunes', '2014-07-01', '08:00'),
(5, 'zadik', 1, 'huelva', 'universidad de huelv', 'todos los miercoles', '2014-07-02', '08:00'),
(6, 'zadik', 1, 'cadiz', 'Universidad de cadiz', 'todos los dias', '2014-07-03', '08:00'),
(7, 'zadik', 1, 'cordoba', 'Universidad de cadiz', 'todos los dias', '2014-07-24', '08:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `universidades`
--

CREATE TABLE IF NOT EXISTS `universidades` (
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `universidades`
--

INSERT INTO `universidades` (`nombre`) VALUES
('ceade'),
('pablo de olavide'),
('uninversidad de almeria'),
('Universidad de cadiz'),
('universidad de cordoba'),
('universidad de granada'),
('universidad de huelva'),
('universidad de jaen'),
('universidad de malaga'),
('universidad de sevilla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `nick` varchar(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `sexo` varchar(6) NOT NULL,
  PRIMARY KEY (`nick`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`nick`, `nombre`, `apellidos`, `email`, `pass`, `tipo`, `sexo`) VALUES
('manolo', 'manuel', 'bensan', 'manolo@gmail.com', '1234', 'admin', 'hombre'),
('pako', 'francisco', 'baena', 'francisco@email.com', '1234', 'normal', 'hombre'),
('user', 'usuario', 'prueba', 'user@email.com', '1234', 'normal', 'hombre'),
('zadik', 'manolo', 'benitez', 'zadik@gmail.com', '1234', 'normal', 'hombre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE IF NOT EXISTS `vehiculo` (
  `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT,
  `nick` varchar(20) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  PRIMARY KEY (`id_vehiculo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id_vehiculo`, `nick`, `marca`, `modelo`, `descripcion`) VALUES
(1, 'zadik', 'seat', 'ibiza', 'nuevo'),
(2, 'pako', 'reanult', 'scenic', 'bastante viejo'),
(3, 'zadik', 'ford-americano', 'mondeo', '5 puertas'),
(4, 'pako', 'volkswagen', 'tiguan', 'todoterreno'),
(6, 'zadik', 'ford', 'mustang', 'potencia');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
