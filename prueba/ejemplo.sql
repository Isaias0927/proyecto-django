-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-08-2022 a las 14:32:55
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$320000$4SrWCH7IGdae8Pt4sFzLXd$VBKMR0VD+JNmQFPFzaEdSnDIqJ6xCrKGzQ2HmLtdjFY=', NULL, 1, 'isaias-prueba', '', '', 'ih0936742@gmail.com', 1, 1, '2022-08-01 08:26:20.596136'),
(2, 'pbkdf2_sha256$320000$Jwf2vPEnHWZ87qixIZvIJA$MwZVCeuiwO6g84bXhrX8erQh/VrH+Pi5Z2hz+fr7fpk=', NULL, 1, 'isaias.28', '', '', 'ih0936742c@gmail.com', 1, 1, '2022-08-01 08:27:37.414309'),
(3, 'pbkdf2_sha256$320000$SaHVC7gf2tB56GCuzX5eR7$S7Rlru5pf381F9+JV823N1VaMtlGrIRtlY57qEyhRBw=', NULL, 1, 'isaias-28', '', '', 'isaias@gmail.com', 1, 1, '2022-08-01 08:37:09.512108'),
(4, 'pbkdf2_sha256$320000$mVaJueIgGUMeTqUBAAFmxZ$cNhTiOy7LWNf4xWn1IHrgIdnLykIVFgWooCyU4lRLxI=', NULL, 1, 'isaias28', '', '', 'isaias@gmail.com', 1, 1, '2022-08-01 08:52:40.327696'),
(5, 'pbkdf2_sha256$320000$J1gOelBAoQbbW90ty9DzP4$zfKzML+ig8EJfIHiCQcVPaxnMMTJKMqegIQK1XvG8T0=', NULL, 1, 'isaias-07', '', '', 'ih0936742@gmail.com', 1, 1, '2022-08-01 09:15:56.409023');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-08-01 07:40:02.768605'),
(2, 'auth', '0001_initial', '2022-08-01 07:40:03.513722'),
(3, 'admin', '0001_initial', '2022-08-01 07:40:03.698858'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-08-01 07:40:03.712572'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-08-01 07:40:03.728765'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-08-01 07:40:03.826713'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-08-01 07:40:03.917810'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-08-01 07:40:03.950136'),
(9, 'auth', '0004_alter_user_username_opts', '2022-08-01 07:40:03.968746'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-08-01 07:40:04.041235'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-08-01 07:40:04.047111'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-08-01 07:40:04.060826'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-08-01 07:40:04.090213'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-08-01 07:40:04.116660'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-08-01 07:40:04.148007'),
(16, 'auth', '0011_update_proxy_permissions', '2022-08-01 07:40:04.160741'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-08-01 07:40:04.191108'),
(18, 'registros', '0001_initial', '2022-08-01 07:40:04.223430'),
(19, 'registros', '0002_rename_alumos_alumnos', '2022-08-01 07:40:04.257720'),
(20, 'registros', '0003_alter_alumnos_options_alumnos_imagen_and_more', '2022-08-01 07:40:04.283185'),
(21, 'registros', '0004_comentario', '2022-08-01 07:40:04.379183'),
(22, 'registros', '0005_alter_comentario_options_alter_comentario_coment', '2022-08-01 07:40:04.389959'),
(23, 'registros', '0006_comenariocontacto', '2022-08-01 07:40:04.422281'),
(24, 'registros', '0007_comentariocontacto_delete_comenariocontacto', '2022-08-01 07:40:04.471258'),
(25, 'registros', '0008_alter_alumnos_id', '2022-08-01 07:40:05.722194'),
(26, 'registros', '0009_archivos_alter_alumnos_id', '2022-08-01 07:40:05.757460');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros_alumnos`
--

CREATE TABLE `registros_alumnos` (
  `id` int(11) NOT NULL,
  `matricula` varchar(12) NOT NULL,
  `nombre` longtext NOT NULL,
  `carrera` longtext NOT NULL,
  `turno` varchar(10) NOT NULL,
  `created` datetime(6) NOT NULL,
  `update` datetime(6) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros_archivos`
--

CREATE TABLE `registros_archivos` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `archivo` varchar(100) DEFAULT NULL,
  `created` datetime(6) NOT NULL,
  `update` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros_comentario`
--

CREATE TABLE `registros_comentario` (
  `id` int(11) NOT NULL,
  `created` datetime(6) NOT NULL,
  `coment` longtext NOT NULL,
  `alumno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros_comentariocontacto`
--

CREATE TABLE `registros_comentariocontacto` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `mensaje` longtext NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registros_comentariocontacto`
--

INSERT INTO `registros_comentariocontacto` (`id`, `usuario`, `mensaje`, `created`) VALUES
(1, 'Isaias', 'esto es un Mensaje prueba', '2022-08-01 07:41:38.226150');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros_alumnos`
--
ALTER TABLE `registros_alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros_archivos`
--
ALTER TABLE `registros_archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registros_comentario`
--
ALTER TABLE `registros_comentario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registros_comentario_alumno_id_9e9eef14_fk` (`alumno_id`);

--
-- Indices de la tabla `registros_comentariocontacto`
--
ALTER TABLE `registros_comentariocontacto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `registros_alumnos`
--
ALTER TABLE `registros_alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registros_archivos`
--
ALTER TABLE `registros_archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registros_comentario`
--
ALTER TABLE `registros_comentario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `registros_comentariocontacto`
--
ALTER TABLE `registros_comentariocontacto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `registros_comentario`
--
ALTER TABLE `registros_comentario`
  ADD CONSTRAINT `registros_comentario_alumno_id_9e9eef14_fk` FOREIGN KEY (`alumno_id`) REFERENCES `registros_alumnos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
