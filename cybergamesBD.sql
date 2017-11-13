-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 13-11-2017 a las 12:50:14
-- Versión del servidor: 5.7.20-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cybergames`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id` int(1) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `clave` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id`, `usuario`, `clave`) VALUES
(1, 'armando', 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(2) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `nombre`) VALUES
(1, 'consola'),
(3, 'controles'),
(4, 'videojuego'),
(5, 'consola portatil'),
(6, 'cassete'),
(7, 'pieza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id` int(3) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `domicilio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id`, `nombre`, `telefono`, `domicilio`) VALUES
(1, 'armando', '8341756972', 'Domicilio 1 calle 1'),
(2, 'leo', '7465274656', 'domicilio 2 calle 2'),
(3, 'rodrigo', '1536763234', 'domicilio 3 calle 3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `Id` int(3) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `edad` int(2) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `clave` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empleado`
--

INSERT INTO `empleado` (`Id`, `nombre`, `apellidos`, `edad`, `domicilio`, `usuario`, `clave`) VALUES
(1, 'luis', 'hernandez', 20, 'domicilio y calle', 'luis', 'empleado'),
(2, 'alejandro', 'hernandez', 18, 'domicilio y calle', 'alejandro', 'empleado'),
(3, 'Pedro', 'Lopez', 23, 'calle 2 ', 'pedro', 'empleado'),
(4, 'josue', 'coronado', 20, 'domicilio de josue', 'josue', 'josue123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_producto` int(3) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `cantidad` int(3) NOT NULL,
  `id_proveedor` int(3) NOT NULL,
  `compra` decimal(10,0) NOT NULL,
  `venta` decimal(10,0) NOT NULL,
  `id_categoria` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`id_producto`, `nombre`, `descripcion`, `cantidad`, `id_proveedor`, `compra`, `venta`, `id_categoria`) VALUES
(1, 'xbox', 'consola de videojuegos', 10, 1, '1000', '1800', 1),
(2, 'playstation1', 'consola de videojuegos', 20, 2, '800', '1500', 1),
(3, 'playstation2', 'consola de videojuegos', 25, 3, '1200', '2000', 1),
(4, 'control - playstation2', 'control para playstation2', 15, 4, '350', '700', 3),
(5, 'FIFA 2017', 'juego de futbol soccer', 10, 2, '800', '1300', 4),
(6, 'Nintendo DS', 'consola portatil', 8, 3, '600', '1000', 5),
(7, 'Super Mario Bros', 'videojuego para nintendo DS', 12, 4, '150', '350', 6),
(8, 'playstation 3', 'consola de videojuegos', 10, 2, '2500', '3400', 1),
(9, 'xbox 360', 'consola de videojuegos', 8, 1, '2400', '3400', 1),
(10, 'Resident evil 6', 'videojuego para PS3', 5, 2, '400', '650', 4),
(11, 'Gears of War 4', 'videojuego para xbox360', 10, 3, '800', '1300', 4),
(12, 'nintendo', 'consola de videojuagos', 1, 5, '2000', '3400', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimiento`
--

CREATE TABLE `mantenimiento` (
  `id` int(3) NOT NULL,
  `producto` varchar(30) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `fecha_encargo` date NOT NULL,
  `fecha_entrega` date NOT NULL,
  `costo` decimal(10,0) NOT NULL,
  `id_cliente` int(3) NOT NULL,
  `id_empleado` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `mantenimiento`
--

INSERT INTO `mantenimiento` (`id`, `producto`, `descripcion`, `fecha_encargo`, `fecha_entrega`, `costo`, `id_cliente`, `id_empleado`) VALUES
(8, 'control', 'no funiona', '2017-11-01', '2017-11-02', '300', 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id` int(2) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id`, `nombre`, `telefono`) VALUES
(1, 'proveedor001', '8345356624'),
(2, 'proveedor002', '7455653424'),
(3, 'preveedor003', '9365425536'),
(4, 'proveedor004', '8354425367'),
(5, 'sony', '6345524367');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id` int(5) NOT NULL,
  `id_producto` int(3) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `fecha` date NOT NULL,
  `id_cliente` int(3) NOT NULL,
  `id_empleado` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id`, `id_producto`, `total`, `fecha`, `id_cliente`, `id_empleado`) VALUES
(1, 4, '1200', '2017-09-02', 2, 1),
(2, 7, '1000', '2017-10-11', 1, 1),
(7, 7, '350', '2017-11-03', 2, 1),
(8, 7, '350', '2017-09-20', 2, 1),
(9, 9, '2400', '2017-11-04', 3, 1),
(10, 3, '2000', '2017-11-05', 1, 2),
(11, 11, '1300', '2017-11-05', 2, 2),
(12, 2, '1500', '2017-11-06', 3, 1),
(13, 3, '1500', '2017-06-19', 2, 1),
(14, 3, '1500', '2017-06-12', 3, 2),
(15, 11, '350', '2017-06-20', 3, 1),
(16, 6, '1000', '2017-07-20', 2, 1),
(17, 8, '2000', '2017-07-25', 2, 1),
(18, 5, '2500', '2017-08-25', 1, 2),
(19, 6, '1200', '2017-06-25', 1, 2),
(20, 10, '350', '2017-07-28', 1, 2),
(21, 9, '2400', '2017-08-28', 1, 2),
(22, 9, '2400', '2017-09-28', 2, 2),
(23, 7, '2000', '2017-10-28', 3, 2),
(24, 3, '1300', '2017-10-28', 3, 2),
(25, 4, '129', '2017-11-11', 2, 3),
(26, 3, '1000', '2017-11-11', 1, 3),
(27, 9, '399', '2017-11-10', 2, 1),
(28, 1, '1399', '2017-11-11', 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_proveedor` (`id_proveedor`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_empleado` (`id_empleado`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cliente` (`id_cliente`),
  ADD KEY `id_empleado` (`id_empleado`),
  ADD KEY `id_producto` (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `empleado`
--
ALTER TABLE `empleado`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_producto` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`),
  ADD CONSTRAINT `inventario_ibfk_3` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id`);

--
-- Filtros para la tabla `mantenimiento`
--
ALTER TABLE `mantenimiento`
  ADD CONSTRAINT `mantenimiento_ibfk_3` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mantenimiento_ibfk_4` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `inventario` (`id_producto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
