-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 21 2022 г., 09:43
-- Версия сервера: 8.0.29
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `blog_website`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE `articles` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8_general_ci DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `text` text CHARACTER SET utf8mb3 COLLATE utf8_general_ci,
  `categorie_id` int DEFAULT NULL,
  `publication_date` date DEFAULT NULL,
  `views` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `title`, `image`, `text`, `categorie_id`, `publication_date`, `views`) VALUES
(1, 'New Iphone 14!', 'iphone14.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas bibendum nulla ante, et semper felis dictum vitae. Ut ligula metus, tincidunt et volutpat ac, euismod sit amet diam. Duis sapien nulla, convallis in velit non, elementum sodales nulla. Nullam vehicula, risus id tristique sagittis, nisl nisi faucibus tortor, ut dictum orci urna eget arcu. Ut faucibus convallis dui sit amet hendrerit. Fusce pretium, felis sed commodo vestibulum, nulla diam pulvinar mi, vel aliquam felis diam at arcu. Quisque id consectetur ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed cursus sed nisl non tincidunt. Morbi scelerisque pellentesque porttitor. Vivamus pharetra ullamcorper libero a varius. Vestibulum ut ex ut justo ultricies sollicitudin. Duis tempus neque risus, et vestibulum nisi mollis id. Aenean sodales tempus purus vel tincidunt.\n\nAenean laoreet est mi, eu ultricies sapien fringilla eget. Fusce finibus ex vel nisi facilisis, vel semper purus lacinia. Aliquam tellus libero, sollicitudin a sem sollicitudin, tincidunt consequat eros. Morbi laoreet nibh in semper tempor. Pellentesque aliquam sagittis eros nec dapibus. Quisque convallis ex est, non dapibus sem tincidunt sed. Ut nec auctor leo. Donec interdum nisi non elit vulputate, nec ornare ipsum maximus.', 3, '2022-09-20', 17),
(2, 'How to do web site?', 'progr.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas bibendum nulla ante, et semper felis dictum vitae. Ut ligula metus, tincidunt et volutpat ac, euismod sit amet diam. Duis sapien nulla, convallis in velit non, elementum sodales nulla. Nullam vehicula, risus id tristique sagittis, nisl nisi faucibus tortor, ut dictum orci urna eget arcu. Ut faucibus convallis dui sit amet hendrerit. Fusce pretium, felis sed commodo vestibulum, nulla diam pulvinar mi, vel aliquam felis diam at arcu. Quisque id consectetur ligula. Curabitur vulputate gravida nisi, nec sollicitudin purus pretium et. Nam cursus sodales ex eget venenatis. Duis ullamcorper fringilla mollis. Nullam tellus lectus, viverra vitae urna quis, fringilla venenatis lorem. Vivamus lobortis, neque sit amet pulvinar dignissim, metus felis rhoncus lacus, et vestibulum nunc tortor eget lorem. Praesent ultrices dignissim mauris, non tempor justo scelerisque sit amet. Donec nec congue felis. Suspendisse vel tempor neque, vitae luctus nulla. Praesent purus est, efficitur vestibulum malesuada ut, iaculis at erat. Nam semper, odio ut pellentesque tristique, arcu sem lobortis enim, eu blandit quam augue eget nunc. Proin sollicitudin eros turpis, ac porttitor quam dapibus at. Donec euismod, nunc nec mollis pretium, dolor quam hendrerit enim, ut maximus erat enim sed massa. Nam sed tempor lacus.', 4, '2022-09-17', 1008),
(3, 'Beautiful Grass', 'grass.jpg', 'Nam fermentum efficitur justo at sodales. Quisque nunc orci, molestie sed sem ut, cursus eleifend ipsum. Praesent ac pulvinar elit. Morbi nec libero rhoncus, vulputate arcu ac, lobortis odio. Phasellus pulvinar lectus ipsum, vel tristique lorem elementum quis. Suspendisse luctus consectetur urna eget fermentum. Nulla facilisi. Etiam ante nulla, pretium sit amet urna eu, hendrerit consectetur nisi. Curabitur vulputate gravida nisi, nec sollicitudin purus pretium et. Nam cursus sodales ex eget venenatis. Duis ullamcorper fringilla mollis. Nullam tellus lectus, viverra vitae urna quis, fringilla venenatis lorem. Vivamus lobortis, neque sit amet pulvinar dignissim, metus felis rhoncus lacus, et vestibulum nunc tortor eget lorem. Praesent ultrices dignissim mauris, non tempor justo scelerisque sit amet. Donec nec congue felis. Suspendisse vel tempor neque, vitae luctus nulla. Praesent purus est, efficitur vestibulum malesuada ut, iaculis at erat. Nam semper, odio ut pellentesque tristique, arcu sem lobortis enim, eu blandit quam augue eget nunc. Proin sollicitudin eros turpis, ac porttitor quam dapibus at. Donec euismod, nunc nec mollis pretium, dolor quam hendrerit enim, ut maximus erat enim sed massa. Nam sed tempor lacus.', 2, '2022-09-17', 54),
(4, 'Gym', 'gym.jpg', 'Nam fermentum efficitur justo at sodales. Quisque nunc orci, molestie sed sem ut, cursus eleifend ipsum. Praesent ac pulvinar elit. Morbi nec libero rhoncus, vulputate arcu ac, lobortis odio. Phasellus pulvinar lectus ipsum, vel tristique lorem elementum quis. Suspendisse luctus consectetur urna eget fermentum. Nulla facilisi. Etiam ante nulla, pretium sit amet urna eu, hendrerit consectetur nisi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; In viverra lacinia metus, nec cursus magna placerat in. Pellentesque dapibus quam id nisl dapibus, at euismod odio aliquet. Praesent aliquam viverra nisl sed commodo. Pellentesque eleifend ultrices erat vel luctus. Etiam condimentum vulputate odio vitae ultrices. Integer aliquet iaculis libero, nec dictum nunc. Pellentesque at ligula in elit pharetra vehicula quis ac orci. Quisque rhoncus est feugiat lacus posuere condimentum. Donec finibus dolor vel massa rutrum molestie. Maecenas dictum, leo sit amet pulvinar placerat, orci leo dictum arcu, eget posuere leo nunc lobortis nisi. In hac habitasse platea dictumst. Vestibulum convallis felis augue, sit amet sagittis elit vestibulum pharetra. Integer ante leo, laoreet nec nunc posuere, euismod malesuada nulla. Fusce suscipit consequat varius. Morbi a imperdiet libero.', 1, '2022-09-17', 321),
(5, 'New Game!', 'games.jpg', 'Pellentesque ultricies nulla et turpis suscipit congue. Aenean pulvinar arcu quis neque finibus malesuada. Aenean dictum quam quis finibus rhoncus. Cras et volutpat felis, eget feugiat orci. Ut et elementum eros. Praesent lobortis, est ac molestie hendrerit, nibh est iaculis dui, a consectetur dolor erat eu mauris. Aliquam rutrum ipsum enim, sit amet varius ex commodo ac. Quisque lorem felis, hendrerit rhoncus nulla ut, semper placerat quam. Donec eu mauris non augue venenatis varius eget et felis. Quisque vitae ante ut nunc luctus consectetur eu id diam. Sed sit amet neque lobortis, tincidunt elit sit amet, feugiat elit. Suspendisse ut tincidunt massa.', 5, '2022-09-17', 952),
(6, 'Beautiful Apple Watch Series 8', 'apple_watch.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla at enim sapien. Quisque sit amet erat vel eros feugiat vestibulum et eu purus. Suspendisse potenti. Duis ornare mauris non turpis blandit bibendum. In sit amet enim cursus, iaculis dolor vel, ultrices augue. In sollicitudin elit enim, at ornare est vulputate eget. Donec sed luctus est, at ultrices orci. Sed non nibh auctor, consequat mauris in, bibendum ligula. Donec a sapien sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempor ullamcorper consectetur. Ut ac pharetra erat.\r\n\r\nDonec a libero sem. Aenean vel ipsum elit. Nullam iaculis sagittis velit consequat congue. Mauris ligula neque, facilisis a lectus vitae, blandit consectetur nibh. Proin fringilla libero ornare nisi venenatis, vel lobortis metus tempor. Sed sit amet justo hendrerit, fringilla justo mattis, rhoncus lacus. Nulla sagittis purus a commodo rutrum. Vestibulum turpis quam, congue non nunc non, tincidunt ornare nisi. Vivamus volutpat elit gravida, blandit diam eu, tempus metus. Aliquam vitae blandit diam.\r\n\r\nSed efficitur, enim id maximus ornare, arcu lacus accumsan dolor, sed bibendum dui justo sit amet orci. Vestibulum sed purus suscipit, mattis nulla dapibus, venenatis velit. Pellentesque feugiat a augue a viverra. Nunc sed orci ac erat volutpat dapibus. Quisque ultricies enim id justo aliquet, quis egestas arcu vulputate. Pellentesque dictum vehicula lacus. Quisque bibendum, mi at ultricies vehicula, leo risus semper tortor, volutpat lobortis ex metus vel odio. Nunc ac ex ex. Donec orci elit, pretium at mi id, rutrum vestibulum ipsum. Quisque in malesuada felis. Sed mattis, nulla ac aliquam euismod, nibh ante laoreet nisl, eu sollicitudin ligula tellus in turpis.', 3, '2022-09-20', 401),
(7, 'Do you know about Samsung?', 'Samsung_Galaxy.jpg', 'Maecenas non enim eu lectus fringilla finibus eget id nunc. Sed euismod, odio et bibendum luctus, tortor enim scelerisque nulla, et fringilla dui justo a nisi. Integer ullamcorper finibus tellus, sed vulputate elit efficitur sit amet. Praesent lectus nunc, posuere ut bibendum id, commodo sit amet nunc. Sed sagittis tincidunt mattis. Vivamus pellentesque massa nec bibendum faucibus. Vestibulum in aliquet velit, at suscipit urna. Quisque et tellus varius, laoreet est ac, mattis nunc. Aliquam dapibus enim ac pulvinar rhoncus. Curabitur id velit ac velit mattis malesuada. Aenean feugiat ultrices arcu, et volutpat eros gravida eget. Morbi consequat imperdiet molestie.\r\n\r\nNullam sit amet molestie tortor, sit amet lobortis justo. Proin interdum justo non elementum vestibulum. Cras sed tristique mi. Phasellus quis consequat libero. Curabitur elementum vestibulum magna sit amet ornare. Pellentesque tristique dui quis neque tincidunt finibus. Sed in enim et purus congue cursus. Donec consectetur tellus nec dapibus vehicula. Vivamus finibus volutpat velit. Vivamus scelerisque nunc neque, eget finibus dui fermentum sed. Donec consectetur diam lacus, in egestas nisi tincidunt eu. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed blandit luctus tortor, ullamcorper facilisis libero hendrerit nec.', 3, '2022-09-19', 201),
(8, 'Learning HTML and CSS', 'html_css.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla at enim sapien. Quisque sit amet erat vel eros feugiat vestibulum et eu purus. Suspendisse potenti. Duis ornare mauris non turpis blandit bibendum. In sit amet enim cursus, iaculis dolor vel, ultrices augue. In sollicitudin elit enim, at ornare est vulputate eget. Donec sed luctus est, at ultrices orci. Sed non nibh auctor, consequat mauris in, bibendum ligula. Donec a sapien sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempor ullamcorper consectetur. Ut ac pharetra erat.\r\n\r\nDonec a libero sem. Aenean vel ipsum elit. Nullam iaculis sagittis velit consequat congue. Mauris ligula neque, facilisis a lectus vitae, blandit consectetur nibh. Proin fringilla libero ornare nisi venenatis, vel lobortis metus tempor. Sed sit amet justo hendrerit, fringilla justo mattis, rhoncus lacus. Nulla sagittis purus a commodo rutrum. Vestibulum turpis quam, congue non nunc non, tincidunt ornare nisi. Vivamus volutpat elit gravida, blandit diam eu, tempus metus. Aliquam vitae blandit diam.\r\n\r\nSed efficitur, enim id maximus ornare, arcu lacus accumsan dolor, sed bibendum dui justo sit amet orci. Vestibulum sed purus suscipit, mattis nulla dapibus, venenatis velit. Pellentesque feugiat a augue a viverra. Nunc sed orci ac erat volutpat dapibus. Quisque ultricies enim id justo aliquet, quis egestas arcu vulputate. Pellentesque dictum vehicula lacus. Quisque bibendum, mi at ultricies vehicula, leo risus semper tortor, volutpat lobortis ex metus vel odio. Nunc ac ex ex. Donec orci elit, pretium at mi id, rutrum vestibulum ipsum. Quisque in malesuada felis. Sed mattis, nulla ac aliquam euismod, nibh ante laoreet nisl, eu sollicitudin ligula tellus in turpis.', 4, '2022-09-20', 505),
(9, 'Top 10 Javascript tricks', 'javascript.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla at enim sapien. Quisque sit amet erat vel eros feugiat vestibulum et eu purus. Suspendisse potenti. Duis ornare mauris non turpis blandit bibendum. In sit amet enim cursus, iaculis dolor vel, ultrices augue. In sollicitudin elit enim, at ornare est vulputate eget. Donec sed luctus est, at ultrices orci. Sed non nibh auctor, consequat mauris in, bibendum ligula. Donec a sapien sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempor ullamcorper consectetur. Ut ac pharetra erat.\r\n\r\nDonec a libero sem. Aenean vel ipsum elit. Nullam iaculis sagittis velit consequat congue. Mauris ligula neque, facilisis a lectus vitae, blandit consectetur nibh. Proin fringilla libero ornare nisi venenatis, vel lobortis metus tempor. Sed sit amet justo hendrerit, fringilla justo mattis, rhoncus lacus. Nulla sagittis purus a commodo rutrum. Vestibulum turpis quam, congue non nunc non, tincidunt ornare nisi. Vivamus volutpat elit gravida, blandit diam eu, tempus metus. Aliquam vitae blandit diam.\r\n\r\nSed efficitur, enim id maximus ornare, arcu lacus accumsan dolor, sed bibendum dui justo sit amet orci. Vestibulum sed purus suscipit, mattis nulla dapibus, venenatis velit. Pellentesque feugiat a augue a viverra. Nunc sed orci ac erat volutpat dapibus. Quisque ultricies enim id justo aliquet, quis egestas arcu vulputate. Pellentesque dictum vehicula lacus. Quisque bibendum, mi at ultricies vehicula, leo risus semper tortor, volutpat lobortis ex metus vel odio. Nunc ac ex ex. Donec orci elit, pretium at mi id, rutrum vestibulum ipsum. Quisque in malesuada felis. Sed mattis, nulla ac aliquam euismod, nibh ante laoreet nisl, eu sollicitudin ligula tellus in turpis.', 4, '2022-09-19', 425);

-- --------------------------------------------------------

--
-- Структура таблицы `articles_categories`
--

CREATE TABLE `articles_categories` (
  `id` int NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `articles_categories`
--

INSERT INTO `articles_categories` (`id`, `title`) VALUES
(1, 'Sport'),
(2, 'Garden'),
(3, 'Gadgets'),
(4, 'Programming'),
(5, 'Games');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `ID` int NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `nickname` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `publication_date` timestamp NOT NULL,
  `articles_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`ID`, `author`, `nickname`, `email`, `image`, `text`, `publication_date`, `articles_id`) VALUES
(1, 'Kate Smith', 'Kate_001', 'kate_001@ggmail.com', 'user.jpg', 'Cool! It\'s interesting', '2022-09-13 11:05:09', 5),
(2, 'Alex Grey', 'alexxx', 'alexxx@ggmail.com', 'user.jpg', 'Quisque accumsan odio fermentum, tincidunt nisl id, ullamcorper libero. Quisque ut dignissim ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', '2022-09-13 11:18:17', 3),
(3, 'Tony Grey', 'tony', 'tony@ggmail.com', 'user.jpg', 'Fusce in sem eu odio dictum interdum. Curabitur dignissim cursus nunc, a hendrerit lacus imperdiet vitae.', '2022-09-13 11:19:24', 2),
(4, 'Olivia Williams', 'mell', 'olivia@ggmail.com', 'user.jpg', 'Pellentesque semper aliquet augue egestas commodo. Mauris sed arcu accumsan, auctor orci sed, sodales quam. Maecenas scelerisque, felis vel semper feugiat, felis mauris malesuada risus, vel suscipit metus ligula vitae ligula.', '2022-09-13 11:20:20', 4),
(5, 'Jessica Miller', 'petty', 'jessica@ggmail.com', 'user.jpg', 'Pellentesque hendrerit arcu at tempus gravida. Vivamus neque enim, pulvinar non risus ut, consequat dapibus tellus. In mauris lectus, lacinia eget iaculis viverra, facilisis sed ligula. ', '2022-09-13 11:21:16', 1),
(6, 'Jack Brown', 'Adams', 'jbrown@ggmail.com', 'user.jpg', 'some text', '2022-09-15 10:16:06', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `articles_categories`
--
ALTER TABLE `articles_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
