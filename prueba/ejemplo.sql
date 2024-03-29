-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-08-2022 a las 21:16:36
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

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add Alumno', 6, 'add_alumnos'),
(22, 'Can change Alumno', 6, 'change_alumnos'),
(23, 'Can delete Alumno', 6, 'delete_alumnos'),
(24, 'Can view Alumno', 6, 'view_alumnos'),
(25, 'Can add Comentario', 7, 'add_comentario'),
(26, 'Can change Comentario', 7, 'change_comentario'),
(27, 'Can delete Comentario', 7, 'delete_comentario'),
(28, 'Can view Comentario', 7, 'view_comentario'),
(29, 'Can add Comentario Contacto', 8, 'add_comentariocontacto'),
(30, 'Can change Comentario Contacto', 8, 'change_comentariocontacto'),
(31, 'Can delete Comentario Contacto', 8, 'delete_comentariocontacto'),
(32, 'Can view Comentario Contacto', 8, 'view_comentariocontacto'),
(33, 'Can add Archivo', 9, 'add_archivos'),
(34, 'Can change Archivo', 9, 'change_archivos'),
(35, 'Can delete Archivo', 9, 'delete_archivos'),
(36, 'Can view Archivo', 9, 'view_archivos'),
(37, 'Can add session', 10, 'add_session'),
(38, 'Can change session', 10, 'change_session'),
(39, 'Can delete session', 10, 'delete_session'),
(40, 'Can view session', 10, 'view_session');

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
(6, 'pbkdf2_sha256$320000$wTEwkXVlBW5SCU2PrIISYP$y+7LsWbA6IlV8LfAUl2OnL+Z3OZZReeM9M09fAIPcws=', '2022-08-01 16:08:50.822530', 1, 'isaias', '', '', 'ih0936742@gmail.com', 1, 1, '2022-08-01 15:44:17.715278'),
(8, 'pbkdf2_sha256$320000$KmePV5pUJRBhPeXH7bnF2g$I8v6Rz8RAWhAh/dEXInDsbNsdBqtzdn5wFep/Oq43aM=', '2022-08-07 16:45:34.287790', 1, 'isaias28', '', '', 'isaias@gmail.com', 1, 1, '2022-08-07 16:44:43.374354');

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

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(8, '2022-08-01 16:09:07.800844', '2', 'ersdsa', 1, '[{\"added\": {}}]', 6, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'registros', 'alumnos'),
(9, 'registros', 'archivos'),
(7, 'registros', 'comentario'),
(8, 'registros', 'comentariocontacto'),
(10, 'sessions', 'session');

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
(26, 'registros', '0009_archivos_alter_alumnos_id', '2022-08-01 07:40:05.757460'),
(27, 'sessions', '0001_initial', '2022-08-01 15:57:09.041613');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('h61p8eddgk4kcz38ode1jojp7jz4ghd8', '.eJxVjEEOwiAQRe_C2hCEdhhcuvcMZGCmUjU0Ke3KeHfbpAvdvvf-f6tI61Li2mSOI6uLQnX6ZYnyU-ou-EH1Puk81WUek94TfdimbxPL63q0fweFWtnWXYcopmfr0MmZvTNJSAICcN6Y7Z0fSHxI1uRgYAALWRwKp-QRGNTnC9QRN8I:1oKjPC:_VeSc0J-Da91-D5_XNX-0ecl6uG6Lgc_HsJ3JdoG0yc', '2022-08-21 16:45:34.296253');

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

--
-- Volcado de datos para la tabla `registros_alumnos`
--

INSERT INTO `registros_alumnos` (`id`, `matricula`, `nombre`, `carrera`, `turno`, `created`, `update`, `imagen`) VALUES
(2, 'utm15267', 'ersdsa', 'asdsda', 'asdsad', '2022-08-01 16:09:07.776716', '2022-08-01 16:09:07.776716', 'fotos/User_icon_2.svg.png');

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
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `registros_alumnos`
--
ALTER TABLE `registros_alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
