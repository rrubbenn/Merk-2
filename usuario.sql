-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 06-02-2025 a las 15:11:34
-- Versión del servidor: 9.2.0
-- Versión de PHP: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL,
  `id_rol` int NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellidos` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `ciudad` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `imagen_perfil` varchar(255) DEFAULT NULL,
  `ranking` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_rol`, `nombre`, `apellidos`, `email`, `contrasena`, `ciudad`, `direccion`, `telefono`, `fecha_nacimiento`, `imagen_perfil`, `ranking`) VALUES
(2, 2, 'usuario1', '', 'usuario1@example.com', 'a0ccddd9e5ddd2617e88f6515a2998f0119b6e99fd2bfef049550ad983af9fa0', 'Otra Ciudad', 'Calle Secundaria 456', '987-654-3210', '1995-05-15', '', 'si'),
(3, 2, 'usuario2', '', 'usuario2@example.com', '534063df44e5903915d9ae79265073e51d5f21950b3af1102029378cce270f8a', 'Ciudad X', 'Avenida Principal 789', '555-555-5555', '1988-11-20', '1716562791.jpg', 'si'),
(4, 2, 'usuario3', '', 'usuario3@example.com', '15676680ffc67a48761517e72a60827e471fb3ce472862592ed25ce6a7e63a74', 'Ciudad Y', 'Avenida Secundaria 1011', '111-222-3333', '1975-09-10', '', 'si'),
(5, 2, 'usuario4', '', 'usuario4@example.com', '47b85ca8f181024f909d10f416bc436563109f4cc9106fc6c4e28398118c9f8e', 'Otra Ciudad', 'Calle Otra 1213', '999-888-7777', '1982-03-25', '1716562806.jpg', 'si'),
(6, 1, 'ruben', '', 'ruben@gmail.com', 'b04e95d0b09d1c3846dc2c1df871b44c780a47844534e36cfee5212f181660ae', 'teruel', 'c/teruel', '666666666', NULL, NULL, 'si'),
(9, 1, 'admin', 'admin admin', 'admin@gmail.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'Madrid', 'Avenida Madrid, 3', '666666666', NULL, '1716562758.jpg', 'si'),
(10, 2, 'usuario', 'usuario', 'usuario@gmail.com', '9250e222c4c71f0c58d4c54b50a880a312e9f9fed55d5c3aa0b0e860ded99165', 'Madrid', 'Avenida Madrid, 3', '123123123', '2024-04-07', '1738831946.jpg', 'no'),
(11, 2, 'noadmin', 'noadmin', 'noadmin@gmail.com', 'fbe03dc7f00d059debe445169f331bba6d217008c91a6e98678556eef11ed85a', 'Madrid', '44570', '666666666', '2024-04-24', '1716562823.jpg', 'no');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
