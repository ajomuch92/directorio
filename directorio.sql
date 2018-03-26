-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-03-2018 a las 23:20:33
-- Versión del servidor: 10.1.29-MariaDB
-- Versión de PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `directorio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directory`
--

CREATE TABLE `directory` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `directory`
--

INSERT INTO `directory` (`id`, `name`, `telephone`, `mail`, `createdAt`, `updatedAt`) VALUES
(1, 'Aarón Montes', '88905952', 'aaron.montes@agilesolutions.com', '2018-03-23 21:27:26', '2018-03-23 15:27:37'),
(2, 'Diana Marisol Santos', '9467-4457', 'dsantos@agilesolutions.com', '2018-03-24 09:40:37', '2018-03-26 13:57:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(3, 'aaron.montes@agilesolutions.com', '$2a$12$ceXWL6Lpuyb3ae8F6v2IgOXt69A.WF7Pgm0D4znuz5DtWzgaAAL/y');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `directory`
--
ALTER TABLE `directory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `directory`
--
ALTER TABLE `directory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
