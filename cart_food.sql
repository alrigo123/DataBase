-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-05-2021 a las 02:26:30
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cart_food`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `numero` varchar(9) NOT NULL,
  `email` varchar(250) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `modopago` varchar(250) NOT NULL,
  `plato` int(11) NOT NULL,
  `montopago` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedido`
--

CREATE TABLE `detallepedido` (
  `IdPedido` int(11) NOT NULL,
  `nombreplato` varchar(100) NOT NULL,
  `precioplato` varchar(50) NOT NULL,
  `imagenplato` varchar(255) NOT NULL,
  `cantidad` int(11) NOT NULL DEFAULT 1,
  `preciototal` varchar(100) NOT NULL,
  `codigoplato` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallepedido`
--

INSERT INTO `detallepedido` (`IdPedido`, `nombreplato`, `precioplato`, `imagenplato`, `cantidad`, `preciototal`, `codigoplato`) VALUES
(1, 'Salchipapa', '12', 'image/salchiclasica.JPG', 1, '12', 'p01'),
(2, 'Hamburguesa', '15', 'image/hamburguesa.JPG', 3, '45', 'p02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plato`
--

CREATE TABLE `plato` (
  `IdPlato` int(11) NOT NULL,
  `nombreplato` varchar(255) NOT NULL,
  `precioplato` varchar(100) NOT NULL,
  `cantidadplato` int(11) NOT NULL DEFAULT 1,
  `imagenplato` varchar(255) NOT NULL,
  `codigoproducto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plato`
--

INSERT INTO `plato` (`IdPlato`, `nombreplato`, `precioplato`, `cantidadplato`, `imagenplato`, `codigoproducto`) VALUES
(1, 'Salchipapa', '12', 1, 'image/salchiclasica.JPG', 'p01'),
(2, 'Hamburguesa', '15', 1, 'image/hamburguesa.JPG', 'p02');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD PRIMARY KEY (`IdPedido`);

--
-- Indices de la tabla `plato`
--
ALTER TABLE `plato`
  ADD PRIMARY KEY (`IdPlato`),
  ADD UNIQUE KEY `codigoproducto` (`codigoproducto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  MODIFY `IdPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `plato`
--
ALTER TABLE `plato`
  MODIFY `IdPlato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
