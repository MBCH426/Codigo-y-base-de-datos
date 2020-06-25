-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-06-2020 a las 07:31:32
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_sena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `activo`
--

CREATE TABLE `activo` (
  `CodActivo` int(11) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Valor_Activo` int(11) NOT NULL,
  `Cantidad` int(11) NOT NULL,
  `Fecha_Ingreso` date NOT NULL,
  `Hora` time NOT NULL,
  `Tipo_Activo` varchar(35) NOT NULL,
  `Observaciones` varchar(100) NOT NULL,
  `Imagenes` text NOT NULL,
  `Estatus` varchar(25) NOT NULL,
  `Fecha_Salida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `activo`
--

INSERT INTO `activo` (`CodActivo`, `Descripcion`, `Valor_Activo`, `Cantidad`, `Fecha_Ingreso`, `Hora`, `Tipo_Activo`, `Observaciones`, `Imagenes`, `Estatus`, `Fecha_Salida`) VALUES
(1, 'Teclado', 35000, 15, '2020-06-09', '07:56:00', 'Microtecnologia', 'Sin Observación', 'img_3bd6621cd80e14334a88365b8b259765.jpg', 'Activo', '0000-00-00'),
(2, 'Mouse', 25000, 10, '2020-06-03', '14:56:00', 'Microtecnologia', 'Sin Observación', 'img_591cff8ea06539cc2bfa312aee998a80.jpg', 'Activo', '0000-00-00'),
(3, 'Audifonos', 15000, 20, '2020-06-09', '19:40:00', 'Microtecnologia', 'Sin Observación', 'img_458612313572f3ff4342af48443b8e36.jpg', 'Activo', '0000-00-00'),
(4, 'Cable UTP', 8000, 30, '2020-06-03', '10:08:00', 'Microtecnologia', 'Sin Observación', 'img_3bd6621cd80e14334a88365b8b259765.jpg', 'Activo', '0000-00-00'),
(5, 'Cable de Poder', 10000, 12, '2020-06-09', '11:09:00', 'Microtecnologia', 'Sin Observación', 'img_d9c0bea44877aa36d1f623e0ac5b48c9.jpg', 'Activo', '0000-00-00'),
(6, 'Camara', 45000, 15, '2020-06-09', '10:14:00', 'Microtecnologia', 'Sin Observación', 'img_3d69352c1d70c336553043610d270b12.jpg', 'Activo', '0000-00-00'),
(7, 'Tablero', 60000, 9, '2020-06-04', '10:16:00', 'Muebles', 'Sin Observación', 'img_55cc1c2c6de05d81b402555b0577e85c.jpg', 'Activo', '0000-00-00'),
(8, 'Portatil', 950000, 18, '2020-06-09', '10:21:00', 'Microtecnologia', 'Sin Observación', 'img_22f0111c890d0c517b8000de40a4c3c8.jpg', 'Activo', '0000-00-00'),
(9, 'Monitor', 520000, 15, '2020-06-09', '10:22:00', 'Tecnologia', 'Sin Observación', 'img_9e75528594de8f32cf8fc10beff25a13.jpg', 'Activo', '0000-00-00'),
(10, 'Televisor', 1200000, 10, '2020-06-09', '09:22:00', 'Tecnologia', 'Sin Observación', 'img_ede303f47fc44238ecac6614993aef94.jpg', 'Activo', '0000-00-00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserva_usuario`
--

CREATE TABLE `reserva_usuario` (
  `ID` int(11) NOT NULL,
  `CodActivo` int(11) NOT NULL,
  `Fecha_Inicio` varchar(25) NOT NULL,
  `Hora_Inicio` time NOT NULL,
  `Fecha_Fin` date NOT NULL,
  `Hora_Fin` time NOT NULL,
  `Documento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_activo`
--

CREATE TABLE `tipo_activo` (
  `Tipo_Activo` varchar(30) NOT NULL,
  `IdTipoActivo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_activo`
--

INSERT INTO `tipo_activo` (`Tipo_Activo`, `IdTipoActivo`) VALUES
('Tipo de activo', 1),
('Tecnologia', 2),
('Muebles', 3),
('Microtecnologia', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `NombreDocumento` varchar(30) NOT NULL,
  `IdDocumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_documento`
--

INSERT INTO `tipo_documento` (`NombreDocumento`, `IdDocumento`) VALUES
('Cedula_de_ciudadania', 2),
('Tarjeta_de_identidad', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `NombreUsuario` varchar(25) NOT NULL,
  `IdTipoUsuario` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`NombreUsuario`, `IdTipoUsuario`) VALUES
('Administrador', 3),
('Aprendiz', 4),
('Empleado', 1),
('Instructor', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `TipoDocumento` varchar(30) NOT NULL,
  `Documento` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Telefono` int(11) NOT NULL,
  `Direccion` varchar(30) NOT NULL,
  `TipoUsuario` varchar(20) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Contrasena` varchar(45) NOT NULL,
  `ConfirmarContrasena` varchar(45) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`TipoDocumento`, `Documento`, `Nombre`, `Apellido`, `Telefono`, `Direccion`, `TipoUsuario`, `Correo`, `Contrasena`, `ConfirmarContrasena`, `ID`) VALUES
('Cedula_de_ciudadania', 1033816745, 'Stiven', 'Garcia', 2147483647, 'Calle 45', 'Administrador', 'Brayan33@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 3),
('Cedula_de_ciudadania', 1033816899, 'Henry', 'Gordillo', 2147483647, 'calle 40 #33-36', 'Instructor', 'Brayan3@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '827ccb0eea8a706c4c34a16891f84e7b', 12),
('Cedula_de_ciudadania', 1033846598, 'Henry', 'Garcia', 2147483647, 'Carrera 4 D bis', 'Aprendiz', 'Brayan123@gmail.com', '25f9e794323b453885f5181f1b624d0b', '25f9e794323b453885f5181f1b624d0b', 5),
('Cedula_de_ciudadania', 2147483647, 'Stiven', 'Pineda', 2147483647, 'Carrera 4 D bis', 'Empleado', 'Brayan5@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `activo`
--
ALTER TABLE `activo`
  ADD PRIMARY KEY (`CodActivo`),
  ADD KEY `Activos` (`Tipo_Activo`);

--
-- Indices de la tabla `reserva_usuario`
--
ALTER TABLE `reserva_usuario`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Codactivo` (`CodActivo`),
  ADD KEY `Documento` (`Documento`);

--
-- Indices de la tabla `tipo_activo`
--
ALTER TABLE `tipo_activo`
  ADD PRIMARY KEY (`Tipo_Activo`),
  ADD UNIQUE KEY `idactivo` (`IdTipoActivo`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`NombreDocumento`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`NombreUsuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Documento`),
  ADD KEY `TipoUsuario` (`TipoUsuario`),
  ADD KEY `idusuario` (`ID`) USING BTREE,
  ADD KEY `Tipodocumento` (`TipoDocumento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `reserva_usuario`
--
ALTER TABLE `reserva_usuario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `activo`
--
ALTER TABLE `activo`
  ADD CONSTRAINT `activo_ibfk_1` FOREIGN KEY (`Tipo_Activo`) REFERENCES `tipo_activo` (`Tipo_Activo`);

--
-- Filtros para la tabla `reserva_usuario`
--
ALTER TABLE `reserva_usuario`
  ADD CONSTRAINT `reserva_usuario_ibfk_1` FOREIGN KEY (`CodActivo`) REFERENCES `activo` (`CodActivo`),
  ADD CONSTRAINT `reserva_usuario_ibfk_2` FOREIGN KEY (`Documento`) REFERENCES `usuarios` (`Documento`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`TipoUsuario`) REFERENCES `tipo_usuario` (`NombreUsuario`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`TipoDocumento`) REFERENCES `tipo_documento` (`NombreDocumento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
