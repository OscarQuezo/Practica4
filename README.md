# Practica4
entrega de la practica 4
-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2020 a las 07:44:08
-- Versión del servidor: 5.6.16
-- Versión de PHP: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `bd_articulo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_publicacion` varchar(50) NOT NULL,
  `titulo_articulo` varchar(60) NOT NULL,
  `desarrollo_articulo` varchar(200) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Volcado de datos para la tabla `blog`
--

INSERT INTO `blog` (`id`, `fecha_publicacion`, `titulo_articulo`, `desarrollo_articulo`, `usuario`) VALUES
(1, '22/5/2020', 'modelo computacional que puso al mundo en cuarentena', 'autoedicion y editores de paginas web usan el lorem ipsum como su texto de defecto, y al hace una biequeda de "lorem Ipsum" va a dar por resultado muchos sitios web que usan este texto si se encuentra', 'admin'),
(2, '22/5/2020', 'La comunidad científica avisa: nos enfrentamos a una emergen', 'Contar la realidad que muestran los datos constituye la obligación moral de todo investigador, aunque la conclusión no resulte de nuestro agrado. Por ello, en noviembre de 2019, 11.000 científicos  de', 'gerente general'),
(12, '22/06/2020', 'TecnologÃ?Â­as emergentes en el 2020', 'Va en constante crecimiento con el pasar del tiempo', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'admin', '12345'),
(2, 'gerente general', 'abc123');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
