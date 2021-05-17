-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2021 a las 22:39:55
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
-- Base de datos: `cart_food2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `numero` varchar(9) NOT NULL,
  `direccion` varchar(1000) NOT NULL,
  `plato` varchar(255) NOT NULL,
  `montopago` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`IdCliente`, `nombre`, `apellido`, `email`, `numero`, `direccion`, `plato`, `montopago`) VALUES
(1, 'Rigo', 'Estrda', 'alexestrada@adawd.htms', '912492348', 'Tttio', 'Salchipapa(1), Hamburguesa(1)', '32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallepedido`
--

CREATE TABLE `detallepedido` (
  `IdPedido` int(11) NOT NULL,
  `nombreplato` varchar(100) NOT NULL,
  `precioplato` varchar(50) NOT NULL,
  `imagenplato` varchar(255) NOT NULL,
  `cantidad` int(10) NOT NULL,
  `preciototal` varchar(100) NOT NULL,
  `Id_Plato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `detallepedido`
--

INSERT INTO `detallepedido` (`IdPedido`, `nombreplato`, `precioplato`, `imagenplato`, `cantidad`, `preciototal`, `Id_Plato`) VALUES
(3, 'Hamburguesa', '15', 'image/hamburguesa.jpg', 1, '15', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plato`
--

CREATE TABLE `plato` (
  `IdPlato` int(11) NOT NULL,
  `nombreplato` varchar(255) NOT NULL,
  `precioplato` varchar(100) NOT NULL,
  `cantidadplato` int(11) NOT NULL DEFAULT 1,
  `imagenplato` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `plato`
--

INSERT INTO `plato` (`IdPlato`, `nombreplato`, `precioplato`, `cantidadplato`, `imagenplato`) VALUES
(1, 'Salchipapa', '16', 1, 'image/salchiclasica.jpg'),
(2, 'Hamburguesa', '15', 1, 'image/hamburguesa.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD PRIMARY KEY (`IdPedido`),
  ADD UNIQUE KEY `Id_Plato` (`Id_Plato`);

--
-- Indices de la tabla `plato`
--
ALTER TABLE `plato`
  ADD PRIMARY KEY (`IdPlato`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  MODIFY `IdPedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `plato`
--
ALTER TABLE `plato`
  MODIFY `IdPlato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detallepedido`
--
ALTER TABLE `detallepedido`
  ADD CONSTRAINT `detallepedido_ibfk_1` FOREIGN KEY (`Id_Plato`) REFERENCES `plato` (`IdPlato`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
