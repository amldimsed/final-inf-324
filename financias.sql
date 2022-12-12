-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-12-2022 a las 03:13:51
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `financias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujo`
--

CREATE TABLE `flujo` (
  `flujo` varchar(5) DEFAULT NULL,
  `proceso` varchar(5) DEFAULT NULL,
  `proceso_sig` varchar(5) DEFAULT NULL,
  `tipo` varchar(5) DEFAULT NULL,
  `rol` varchar(20) DEFAULT NULL,
  `pantalla` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flujo`
--

INSERT INTO `flujo` (`flujo`, `proceso`, `proceso_sig`, `tipo`, `rol`, `pantalla`) VALUES
('f1', 'p2', 'p3', 'p', 'oficina', 'datos_entrada'),
('f1', 'p3', 'p4', 'p', 'oficina', 'listar'),
('f1', 'p4', '', 'c', 'oficina', 'mensage_ac/ng'),
('f1', 'p5', 'p6', 'p', 'oficina', 'negacion/datos_verificaci'),
('f1', 'p6', '', 'c', 'oficina', 'mensage_continuacion'),
('f1', 'p7', '', 'f', 'oficina', 'negacion/final'),
('f1', 'p4', '', 'c', 'oficina', 'aceptacion/bucle/condicio'),
('f1', 'p8', 'p9', 'p', 'oficina', 'aceptacion/datos_imprimir'),
('f2', 'p9', 'p10', 'p', 'fabrica_credito', 'datos_credito'),
('f2', 'p10', '', 'c', 'fabrica_credito', 'solicitud/aprobado'),
('f1', 'p11', 'p13', 'f', 'fabrica_credito', 'negacion/final'),
('f3', 'p12', 'p13', 'f', 'operaciones', 'aceptacion/final');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujocondicion`
--

CREATE TABLE `flujocondicion` (
  `flujo` varchar(5) DEFAULT NULL,
  `proceso` varchar(5) DEFAULT NULL,
  `si` varchar(5) DEFAULT NULL,
  `no` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flujocondicion`
--

INSERT INTO `flujocondicion` (`flujo`, `proceso`, `si`, `no`) VALUES
('f1', 'p4', 'p8', 'p5'),
('f1', 'p6', 'p4', 'p7'),
('f2', 'p10', 'p11', 'p12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `flujotramite`
--

CREATE TABLE `flujotramite` (
  `flujo` varchar(5) DEFAULT NULL,
  `proceso` varchar(5) DEFAULT NULL,
  `nro_tramite` varchar(5) DEFAULT NULL,
  `fecah_ini` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `flujotramite`
--

INSERT INTO `flujotramite` (`flujo`, `proceso`, `nro_tramite`, `fecah_ini`, `fecha_fin`, `usuario`) VALUES
('f1', 'p1', '352', '2022-11-20 17:00:00', '2022-11-22 18:00:00', 'jorge'),
('f2', 'p2', '352', '2022-11-22 18:00:00', '2022-11-22 19:00:00', 'jorge'),
('f3', 'p3', '352', '2022-11-23 19:00:00', '2022-11-24 08:00:00', 'jorge'),
('f3', 'p3', '125', '2022-11-24 09:00:00', '2022-11-24 11:00:00', 'jorge'),
('f4', 'p4', '125', '2022-11-24 11:00:00', '2022-11-24 13:00:00', 'Romina'),
('f5', 'p5', '125', '2022-11-24 13:00:00', '2022-11-24 13:45:00', 'jorge'),
('f4', 'p4', '125', '2022-11-24 13:45:00', '2022-11-25 15:20:00', 'Romina'),
('f6', 'p6', '125', '2022-11-25 15:20:00', '2022-11-25 15:25:00', 'Romina'),
('f7', 'p7', '125', '2022-11-25 15:25:00', '2022-11-25 18:50:00', 'samuel'),
('f8', 'p8', '125', '2022-11-25 18:50:00', '2022-11-25 20:10:00', 'samuel'),
('f9', 'p9', '125', '2022-11-25 20:10:00', '2022-11-25 20:30:00', 'samuel'),
('f10', 'p10', '125', '2022-11-25 20:30:00', '2022-11-25 20:40:00', 'Romina'),
('f11', 'p11', '125', '2022-11-25 20:40:00', '2022-11-25 21:20:00', 'jorge'),
('f1', 'p1', '631', '2022-11-21 18:06:00', '2022-11-21 19:06:00', 'maria'),
('f2', 'p2', '631', '2022-11-21 19:06:00', '2022-11-21 20:06:00', 'maria'),
('f3', 'p3', '631', '2022-11-21 20:06:00', '2022-11-23 10:00:00', 'maria'),
('f3', 'p3', '631', '2022-11-23 10:00:00', '2022-11-23 11:00:00', 'maria'),
('f4', 'p4', '631', '2022-11-23 11:00:00', '2022-11-23 11:11:00', 'Romina'),
('f6', 'p6', '631', '2022-11-23 11:11:00', '2022-11-24 15:15:00', 'Romina'),
('f7', 'p7', '631', '2022-11-24 15:15:00', '2022-11-26 16:08:00', 'samuel'),
('f8', 'p8', '631', '2022-11-26 16:08:00', '2022-11-26 17:12:00', 'samuel'),
('f9', 'p9', '631', '2022-11-26 17:12:00', '2022-11-26 18:53:00', 'samuel'),
('f10', 'p10', '631', '2022-11-26 18:53:00', '2022-11-26 20:33:00', 'Romina'),
('f11', 'p11', '631', '2022-11-26 20:33:00', '2022-11-26 22:55:00', 'maria');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
