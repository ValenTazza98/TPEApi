-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 15-11-2022 a las 22:28:01
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `TPEDB`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Movie`
--

CREATE TABLE `Movie` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `duration` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Movie`
--

INSERT INTO `Movie` (`id`, `title`, `description`, `img`, `genre`, `duration`) VALUES
(1, 'AVATAR 2', 'Segunda entrega de la saga Avatar de James Cameron.\r\n', 'https://www.cinemacenter.com.ar/img_movies/2482_img2.jpg', 'Fantasia', 200),
(2, 'SONRÍE', 'Después de ser testigo de un extraño y traumático accidente que involucró a una paciente, la Dr. Rose Cotter (Sosie Bacon) empieza a experimentar sucesos aterradores que no puede explicarse. A medida que el terror comienza a apoderarse de su vida, Rose debe enfrentarse a su pasado para sobrevivir y escapar de su horrible nueva realidad.', 'https://www.cinemacenter.com.ar/img_movies/2512_img2.jpg', 'Terror', 115),
(3, 'AMSTERDAM', 'Ambientada en los años \'30, sigue la historia de 3 amigos que presencian un asesinato, se convierten en sospechosos y sacan a la luz uno de los más locos complots en la historia de los Estados Unidos.', 'https://www.cinemacenter.com.ar/img_movies/2552_img2.jpg', 'Drama', 134),
(4, 'NOCHE SIN PAZ', 'Cuando un equipo de mercenarios irrumpe durante Nochebuena en la casa de una familia adinerada, tomando a todos los que están dentro como rehenes, el equipo no está preparado para un combatiente sorpresa: Santa Claus, quien está a punto de demostrar por qué este San Nicolás no es un santo.', 'https://www.cinemacenter.com.ar/img_movies/2557_img2.jpg', 'Suspenso', 100),
(5, 'LA HUERFANA EL ORIGEN', 'LA HUÉRFANA: EL ORIGEN narra la historia de Leena Klammer (Isabelle Fuhrman), quien orquesta un escape brillante de un manicomio Ruso y viaja a Estados Unidos. Al llegar, se adueña de la identidad “Esther”, la hija desaparecida de una familia adinerada. Sin embargo, su nueva vida conlleva algo inesperado y se enfrentará con una madre interpretada por Julia Stiles, que hará lo que sea necesario para proteger a su familia.', 'https://www.cinemacenter.com.ar/img_movies/2528_img2.jpg', 'Terror', 98),
(6, 'BROS', 'Este otoño, Universal Pictures se enorgullece de presentar la primera comedia romántica de un importante estudio sobre dos hombres gays que tal vez, posiblemente, probablemente, están destinados al amor. Quizás, si es que sus agendas y frenéticas vidas se los permite. Bros, de la feroz y cómica mente de Billy Eichner (serie de TV Billy on the Street, El rey león del 2019 y las series Difficult People y American Crime Story) y la brillantez de los cineastas Nicholas Stoller (Buenos Vecinos, ¿Cómo sobrevivir a mi ex?) y Judd Apatow (Damas en guerra, Esta chica es un desastre, Por eso lo llaman amor), llega Bros, una comedia inteligente arrebatadora y sincera sobre encontrar sexo, amor y romance en medio de la locura. Protagonizada por Billy Eichner, el primer hombre abiertamente gay que coescribe y protagoniza su propia película para un gran estudio, Bros está dirigida por Nicholas Stoller a partir de su propio guion coescrito con Eichner. La película está producida por Judd Apatow, Stoller y Joshua Church (coproductor de Esta chica es un desastre, Hermanastros). La producción ejecutiva corre a cargo de Eichner.', 'https://www.cinemacenter.com.ar/img_movies/2509_img2.jpg', 'Romance/Comedia', 115),
(7, 'LA SEÑORA HARRIS VA A PARIS', 'LA SEÑORA HARRIS VA A PARÍS es la encantadora historia de una aparentemente ordinaria ama de casa británica cuyo sueño de poseer un vestido de alta costura de Christian Dior la lleva a una extraordinaria aventura en París.', 'https://www.cinemacenter.com.ar/img_movies/2526_img2.jpg', 'Comedia Aventuras', 120),
(8, 'PANTERA NEGRA 2: WAKANDA POR SIEMPRE', 'En PANTERA NEGRA: WAKANDA POR SIEMPRE de Marvel Studios, la reina Ramonda (Angela Bassett), Shuri (Letitia Wright), M\'Baku (Winston Duke), Okoye (Danai Gurira) y las Dora Milaje (incluida Florence Kasumba) luchan por proteger a su nación de las potencias mundiales que intervienen tras la muerte del Rey T\'Challa. Mientras los habitantes de Wakanda se esfuerzan por embarcarse en un nuevo capítulo, los héroes deben unirse con la ayuda de Nakia (Lupita Nyong\'o) y Everett Ross (Martin Freeman) y forjar un nuevo camino para el reino de Wakanda. El film que cuenta con Tenoch Huerta como Namor, rey de una nación submarina oculta, también está protagonizada por Dominique Thorne, Michaela Coel, Mabel Cadena y Alex Livanalli.', 'https://www.cinemacenter.com.ar/img_movies/2517_img2.jpg', 'Acción Aventuras', 140),
(9, '1982 LA GESTA', '22 Veteranos de la Guerra de Malvinas reviven sus experiencias 40 años después, en un relato humano emotivo.', 'https://www.cinemacenter.com.ar/img_movies/2593_img2.jpg', 'Documental', 100),
(10, 'UN MUNDO EXTRAÑO', 'Los legendarios Clades son una familia de exploradores cuyas diferencias amenazan con derribar su última y más crucial misión.', 'https://www.cinemacenter.com.ar/img_movies/2577_img2.jpg', 'Animacion', 80),
(11, 'ONE PIECE FILM RED', 'Uta, la cantante más querida del mundo cuya voz ha sido descrita como \'de otro mundo\', es famosa por ocultar su propia identidad cuando actúa. Ahora, por primera vez, se revelará al mundo en un concierto en vivo. Con la Marina observando de cerca, el lugar se llena de fanáticos de Uta, incluidos piratas emocionados y los Sombreros de Paja liderados por Luffy, que simplemente vinieron a disfrutar de su actuación sonora, todos esperando ansiosamente la voz que todo el mundo ha estado esperando para resonar. La historia comienza con la impactante revelación de que ella es la hija del enigmático Shanks. Dirigida por Goro Taniguchi (Code Geass) RED es la 15º película de One Piece, la franquicia japonesa más antigua.', 'https://www.cinemacenter.com.ar/img_movies/2564_img2.jpg', 'Animación', 120),
(12, 'BLACK ADAM', 'Casi 5000 años después de que los dioses antiguos le confirieran los poderes todopoderosos y lo encarcelaran con la misma rapidez, Black Adam (Johnson) es liberado de su tumba terrenal, listo para desatar su forma única de justicia en el mundo moderno.', 'https://www.cinemacenter.com.ar/img_movies/2520_img2.jpg', 'Ciencia Ficción', 125),
(13, 'EL MENÚ', 'Una pareja (Anya Taylor-Joy y Nicholas Hoult) viaja a una isla costera para disfrutar de un restaurante exclusivo donde el chef (Ralph Fiennes) ha preparado un menú lujoso con algunas sorpresas impactantes.', 'https://www.cinemacenter.com.ar/img_movies/2516_img2.jpg', 'Thriller', 106),
(14, 'HASTA LOS HUESOS', 'De Metro Goldwyn Mayer Pictures llega \"Hasta los huesos\", llega esta película sobre el amor, dirigida por Luca Guadagnino (\"Llámame por tu nombre\"), quien recibió recientemente el León de Plata al Mejor Director en el Festival de Venecia de 2022. \"Hasta los huesos\" cuenta la historia del primer amor entre Maren (Taylor Russell), una joven que está aprendiendo a sobrevivir al margen de la sociedad, y Lee (Timothée Chalamet), un vagabundo con ideas muy intensas que vive marginado... cuando se conocen y se unen para una viaje de mil millas que les lleva por carreteras, pasajes ocultos y caminos alternos en los Estados Unidos de Ronald Reagan. Pero a pesar de sus esfuerzos, todos los caminos conducen a sus aterradores pasados y a una última parada que determinará si su amor puede sobrevivir a su alteridad.', 'https://www.cinemacenter.com.ar/img_movies/2578_img2.jpg', 'Terror', 120),
(15, 'JUEGO PERFECTO', 'El multimillonario jugador de póquer Jake Foley (Russell Crowe) les brinda a sus mejores amigos la oportunidad de ganar más dinero del que jamás hayan soñado, en una noche que nunca olvidarán. Pero para jugar, tendrán que revelar algunos de sus secretos más oscuros, y a medida que avance la noche, descubrirán el motivo real por el que participan...', 'https://www.cinemacenter.com.ar/img_movies/2596_img2.jpg', 'No idea', 130),
(16, 'SUBLIME', 'Ucuenta la historia de Manuel (16) vive en un pueblo de la costa. Tiene una banda de rock con sus mejores amigos. Uno de ellos es Felipe, que es como un hermano desde que son muy chicos. Manuel está de novio con Azul, relación que están explorando con intensidad. Cuando llega el momento de tener su primera vez juntos, Manuel siente algo nuevo que le hace ver a Felipe con otros ojos.', 'https://www.cinemacenter.com.ar/img_movies/2582_img2.jpg', 'Drama', 106),
(17, 'MAR DE SANGRE', 'Un grupo de amigos que disfrutan de un fin de semana en una playa paradisíaca roban por diversión un par de motos de agua para dirigirse al mar, pero en una imprudente maniobra terminan en una horrible colisión frontal. En medio del mar, sin nadie a su alrededor, lucharán por encontrar el camino de regreso a casa, llevando a un amigo gravemente herido, mientras hambrientos tiburones los acechan peligrosamente.', 'https://www.cinemacenter.com.ar/img_movies/2573_img2.jpg', 'Terror', 87),
(18, 'UN MUNDO EXTRAÑO', 'Los legendarios Clades son una familia de exploradores cuyas diferencias amenazan con derribar su última y más crucial misión.', 'https://www.cinemacenter.com.ar/img_movies/2577_img2.jpg', 'Animacion', 106),
(19, 'GATO CON BOTAS: EL ÚLTIMO DESEO', 'Este 2022 está de vuelta el felino espadachín más querido de todos, amante de la leche, capaz de enfrentar cualquier desafío. Por primera vez en más de una década, DreamWorks Animation presenta una nueva aventura en el universo de Shrek en la que el temerario y aventurero Gato con Botas descubre que su pasión por el peligro y su indiferencia por la seguridad le han pasado factura. Nuestro heroico felino ha gastado ocho de sus nueve vidas, aunque ha perdido la cuenta por el camino. Recuperar esas vidas hará que el Gato con Botas emprenda su más grande aventura hasta ahora. El nominado al Oscar® Antonio Banderas vuelve a ser la voz del famoso Gato con Botas, que se embarca en un viaje épico al Bosque Negro para encontrar la mítica Estrella de los Deseos y recuperar sus vidas perdidas. Pero cuando sólo le queda una vida, el Gato tendrá que aprender a ser humilde y pedir ayuda a su antigua compañera y némesis: la cautivadora Kitty Soft Paws (nominada al Oscar® Salma Hayek). En su búsqueda, el Gato con Botas y Kitty contarán a regañadientes con la ayuda de un perro callejero, parlanchín e implacablemente alegre, Perro (Harvey Guillén, Lo que hacemos en las sombras). Juntos, nuestro trío de héroes tendrá que ir un paso adelante de Ricitos de Oro (nominada al Oscar® Florence Pugh, Viuda Negra) y de la Familia del Crimen de los Tres Osos, el \"Gran\" Jack Horner (ganador del Emmy John Mulaney, Big Mouth) y el terrorífico cazarrecompensas, El Lobo Feroz (Wagner Moura, Narcos).', 'https://www.cinemacenter.com.ar/img_movies/2523_img2.jpg', 'Aventura', 100),
(20, 'UN VECINO GRUÑÓN', 'Basada en el cómico y emotivo libro que fue Best Seller del New York Times, Un Vecino Gruñon cuenta la historia de Otto Anderson (Tom Hanks), un viudo gruñón que su única alegría viene de criticar y juzgar a sus irritantes vecinos. Cuando una joven y alegre familia se muda al lado de su casa, él conoce a Marisol, una muchacha muy embarazada, que conlleva a una amistad inesperada que pone a su mundo de cabeza.', 'https://www.cinemacenter.com.ar/img_movies/2576_img2.jpg', 'Nada', 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Projection`
--

CREATE TABLE `Projection` (
  `id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Projection`
--

INSERT INTO `Projection` (`id`, `day`, `time`, `id_movie`) VALUES
(3, 1, 20, 2),
(5, 2, 16, 3),
(6, 2, 18, 7),
(7, 2, 20, 6),
(8, 2, 22, 5),
(9, 3, 16, 8),
(11, 3, 20, 7),
(12, 3, 22, 3),
(14, 4, 18, 5),
(16, 4, 22, 2),
(17, 5, 16, 8),
(20, 5, 22, 3),
(22, 6, 18, 6),
(23, 6, 20, 5),
(24, 6, 22, 7),
(26, 7, 18, 8),
(27, 7, 20, 6),
(28, 7, 22, 5),
(31, 4, 20, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `User`
--

INSERT INTO `User` (`id`, `name`, `password`) VALUES
(1, 'admin', '$2y$10$Q.ccJQv2aZciadMdqtA/jOaIl05ZOhqsdf/1JfEnBddNQgFo3ZZ82');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Movie`
--
ALTER TABLE `Movie`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `Projection`
--
ALTER TABLE `Projection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_movie` (`id_movie`);

--
-- Indices de la tabla `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Movie`
--
ALTER TABLE `Movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `Projection`
--
ALTER TABLE `Projection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Projection`
--
ALTER TABLE `Projection`
  ADD CONSTRAINT `Projection_ibfk_1` FOREIGN KEY (`id_movie`) REFERENCES `Movie` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
