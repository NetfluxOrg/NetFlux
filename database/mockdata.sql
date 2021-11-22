
#
# TABLE STRUCTURE FOR: Users
#

#DROP TABLE IF EXISTS `Users`;

CREATE TABLE IF NOT EXISTS `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(22) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(48) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Users` (`id`, `userId`, `email`, `fullname`) VALUES (1, 8, 'holden.herman@example.org', 'Arvid Brekke');
INSERT INTO `Users` (`id`, `userId`, `email`, `fullname`) VALUES (2, 9, 'maxie.harber@example.net', 'Manuel Gerlach');
INSERT INTO `Users` (`id`, `userId`, `email`, `fullname`) VALUES (3, 2, 'brennon54@example.net', 'Paolo Legros PhD');
INSERT INTO `Users` (`id`, `userId`, `email`, `fullname`) VALUES (4, 2, 'reilly.annalise@example.com', 'Llewellyn Heidenreich');
INSERT INTO `Users` (`id`, `userId`, `email`, `fullname`) VALUES (5, 9, 'faye.hickle@example.net', 'Wilfred Murray');
INSERT INTO `Users` (`id`, `userId`, `email`, `fullname`) VALUES (6, 4, 'gino.balistreri@example.net', 'Prof. Haleigh Little IV');
INSERT INTO `Users` (`id`, `userId`, `email`, `fullname`) VALUES (7, 7, 'albina24@example.net', 'Miss Florida Mueller DVM');
INSERT INTO `Users` (`id`, `userId`, `email`, `fullname`) VALUES (8, 9, 'lkautzer@example.com', 'Lera Rodriguez');
INSERT INTO `Users` (`id`, `userId`, `email`, `fullname`) VALUES (9, 7, 'yasmine.hessel@example.net', 'Mr. Jared Oberbrunner MD');
INSERT INTO `Users` (`id`, `userId`, `email`, `fullname`) VALUES (10, 6, 'friesen.pattie@example.net', 'Idell Nolan');

#
# TABLE STRUCTURE FOR: Services
#

#DROP TABLE IF EXISTS `Services`;

CREATE TABLE IF NOT EXISTS `Services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serviceName` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Services` (`id`, `serviceName`) VALUES (1, 'corporis');
INSERT INTO `Services` (`id`, `serviceName`) VALUES (2, 'voluptas');
INSERT INTO `Services` (`id`, `serviceName`) VALUES (3, 'non');
INSERT INTO `Services` (`id`, `serviceName`) VALUES (4, 'tempore');
INSERT INTO `Services` (`id`, `serviceName`) VALUES (5, 'voluptatum');

#
# TABLE STRUCTURE FOR: Subscriptions
#

#DROP TABLE IF EXISTS `Subscriptions`;

CREATE TABLE IF NOT EXISTS `Subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `servicesId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `servicesId` (`servicesId`),
  CONSTRAINT `Subscriptions_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`),
  CONSTRAINT `Subscriptions_ibfk_2` FOREIGN KEY (`servicesId`) REFERENCES `Services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (1, 1, 1);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (2, 2, 2);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (3, 3, 3);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (4, 4, 4);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (5, 5, 5);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (6, 6, 1);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (7, 7, 2);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (8, 8, 3);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (9, 9, 4);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (10, 10, 5);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (11, 1, 1);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (12, 2, 2);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (13, 3, 3);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (14, 4, 4);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (15, 5, 5);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (16, 6, 1);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (17, 7, 2);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (18, 8, 3);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (19, 9, 4);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (20, 10, 5);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (21, 1, 1);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (22, 2, 2);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (23, 3, 3);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (24, 4, 4);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (25, 5, 5);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (26, 6, 1);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (27, 7, 2);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (28, 8, 3);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (29, 9, 4);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (30, 10, 5);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (31, 1, 1);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (32, 2, 2);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (33, 3, 3);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (34, 4, 4);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (35, 5, 5);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (36, 6, 1);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (37, 7, 2);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (38, 8, 3);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (39, 9, 4);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (40, 10, 5);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (41, 1, 1);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (42, 2, 2);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (43, 3, 3);
INSERT INTO `Subscriptions` (`id`, `userId`, `servicesId`) VALUES (44, 4, 4);

#
# TABLE STRUCTURE FOR: Media
#

#DROP TABLE IF EXISTS `Media`;

CREATE TABLE IF NOT EXISTS `Media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `movieTitle` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `overview` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movieCover` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (1, 'Minima quia fugit magni voluptatem eveniet.', 'Sint et quo qui quod debitis. Est dolorem aspernatur culpa veritatis. Consequuntur voluptatibus maiores velit odio fugit eligendi. Officia iusto consequatur ullam exercitationem mollitia.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (2, 'Molestiae id perferendis minima corporis omnis corrupti quam.', 'Eveniet fugit quae dolores hic facere mollitia nesciunt exercitationem. Quae quas qui eum vel quaerat. Beatae aperiam et necessitatibus pariatur temporibus dolor.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (3, 'Aliquid voluptatem illum eum fugiat.', 'Corrupti dolore quia quis enim qui. Et ducimus voluptate harum repellat voluptatem. Quas optio doloribus laboriosam dolor accusamus pariatur. Nobis reiciendis voluptas excepturi ad qui magnam.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (4, 'Qui qui sint ipsa debitis.', 'Sunt veritatis aut molestias eos. Laborum perspiciatis hic commodi ea quae ex eos. Quia aperiam possimus veritatis error consectetur.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (5, 'Soluta voluptatem eos perferendis et.', 'Et omnis recusandae ipsa. Iure voluptatem quia architecto voluptatibus eum voluptatem. Ut qui molestiae eum alias.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (6, 'Suscipit sed voluptatem est necessitatibus.', 'Voluptas sed suscipit voluptatem itaque. Dolore ipsam excepturi repellendus eius ut inventore. Doloribus reiciendis est magnam doloribus.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (7, 'Vel ea similique magnam dolores officiis.', 'Et minima esse ipsa eveniet nulla. Ullam sit nihil nostrum. Neque ab nulla non ad dolor ipsam aliquam.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (8, 'Magnam est repellendus magnam amet commodi ducimus eum.', 'Et esse non voluptas incidunt. Quia alias ut est explicabo vero. Quis laborum quisquam nam maiores cupiditate voluptas quia. Est ullam ipsam velit natus qui minus.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (9, 'In ducimus quos voluptas alias suscipit ex.', 'At velit quia et voluptatum provident itaque rerum veniam. Nobis repudiandae nostrum vero. Magnam non nostrum corporis in autem veniam optio.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (10, 'Impedit quia odit voluptatem porro id voluptatum.', 'Quia neque harum non voluptates. Provident sunt dolorem sit repellendus unde molestiae ipsum exercitationem. Consequuntur sit fuga odio modi quia unde. Velit aut excepturi in et.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (11, 'Omnis ea architecto est ipsam est excepturi.', 'Natus delectus consequuntur dolores voluptatum perferendis repellendus repudiandae. Et repellat soluta sit ex quo et. Aut consequatur optio consequatur expedita. Quod hic labore suscipit.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (12, 'Quam quo tenetur eligendi ut fugiat voluptates omnis.', 'Incidunt aut nihil error rem deserunt. Occaecati dolorem a aut earum voluptatem blanditiis. Fuga et modi nostrum voluptatum porro exercitationem hic voluptas.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (13, 'Provident ducimus explicabo delectus in.', 'Qui rerum et labore inventore vel. Sed adipisci vel sed placeat dolorem aut. Nulla autem numquam est adipisci. Officiis qui molestiae aut aliquid quia.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (14, 'Optio eius quibusdam autem quos illo.', 'Placeat temporibus suscipit earum nihil. Qui architecto cupiditate tempore autem. Sed enim consequatur atque et.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (15, 'Sunt porro quia numquam quisquam ea et.', 'Tempora explicabo nobis aut quam eum repellat. Autem earum dolores illum veniam omnis ipsum. Fuga vel sint tenetur dolorum velit.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (16, 'Sint quibusdam magni odio quasi.', 'Omnis harum excepturi qui et in error. Amet et et assumenda accusamus eum laudantium cum. Doloribus neque a dignissimos est.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (17, 'In at quaerat nihil ipsam maiores.', 'Aut praesentium deleniti aliquid sed. Quo officia consequatur nihil et at. Minus rem magnam facere non temporibus qui.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (18, 'Perspiciatis et aliquid voluptas quisquam sed rem est asperiores', 'Repudiandae veritatis voluptatum aperiam iusto accusantium blanditiis blanditiis. Non repellendus totam libero fugiat reprehenderit ducimus. Et unde exercitationem voluptatem.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (19, 'Numquam ut laboriosam nemo fugit rem vel accusamus.', 'Est voluptas perspiciatis fugiat ducimus voluptatem omnis. Sit iusto qui ipsam molestias. Veritatis nobis commodi eligendi. Reiciendis recusandae illum nemo est voluptatem dolorem sit.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (20, 'Numquam qui maiores eveniet.', 'Laudantium omnis eos tempora non. Quo autem quos maiores qui. Soluta perspiciatis quisquam incidunt quo.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (21, 'Est officia corporis ut ipsa mollitia eveniet.', 'Non consequatur fuga eius ut ipsam soluta. Officiis enim dolorem distinctio blanditiis autem possimus. Aut dolorem nulla numquam est non. Minus omnis fugiat aperiam autem dignissimos.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (22, 'Sapiente nisi maxime corporis minus aut nihil expedita.', 'In vero hic non consequuntur ut. Vel quia impedit laboriosam magni quo vero. Inventore est quis rerum quia voluptatum est.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (23, 'Ut quis vero minima ipsam vel est delectus.', 'Delectus quis sint necessitatibus ut aliquid. Beatae accusamus quos perferendis laboriosam ut et.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (24, 'Dolor illo facilis qui est temporibus qui eos sit.', 'Perferendis sint fugiat rerum ut. Odio quia quaerat cum et. Itaque ducimus laboriosam ab pariatur. Optio voluptatem repellat rem dolorum. Dolores officia voluptatem autem enim esse.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (25, 'Aut consequatur dolorem pariatur.', 'Aut laudantium quia est suscipit praesentium aliquid. Iusto voluptas debitis harum quia rerum ut consequatur. Et minima velit eum earum. Blanditiis quos cumque alias maiores.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (26, 'Sequi et omnis animi eveniet omnis.', 'Blanditiis omnis laboriosam aut aut quo voluptatem. Saepe rerum consectetur aut impedit. Ut cupiditate vel vel. Iste voluptas provident harum aperiam non.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (27, 'Error exercitationem alias sit similique.', 'Doloremque in velit id. Sed ipsum illo aut a culpa recusandae maxime.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (28, 'Fugit eius vel molestiae omnis rerum corrupti nemo eos.', 'Accusamus adipisci ipsa ducimus laborum deserunt doloribus aperiam. Ab assumenda aliquam dolor reprehenderit. Voluptas ex beatae cum sit architecto. A minus possimus id qui non.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (29, 'Aliquam ab voluptatem perspiciatis officiis natus tempore ipsum.', 'Ea non veniam dolore velit aut. Sequi quia molestias ut est sunt. Unde aliquid rerum autem quia et mollitia enim.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (30, 'Odio veniam est veniam eos magnam qui.', 'Et cum omnis voluptatum tempore. Dolor neque sunt consequuntur commodi hic. Sed molestiae aut quo accusantium praesentium tempora.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (31, 'Laboriosam ratione aut consequuntur nisi reiciendis praesentium ', 'Quas itaque et perferendis aliquam expedita voluptatem. Quibusdam molestiae totam nam et. Dicta ab saepe nesciunt aliquam. Dolorem velit et illum.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (32, 'Impedit rerum dolores quia.', 'Autem consequatur eum molestiae ex dolorem. Natus unde illo esse et ea id et. Omnis ea ducimus et. Blanditiis omnis dolore ex in minima.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (33, 'Qui et voluptate maxime non accusantium molestiae ab occaecati.', 'Tempore id dicta ut dolorem laborum sunt quasi cumque. Ratione laudantium hic sed in facilis molestiae placeat. Velit autem alias consequatur repudiandae quam ipsum.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (34, 'Fugit non vitae dicta laudantium autem aliquid suscipit.', 'In in sapiente quia. Dolorum neque reprehenderit voluptatem alias sunt molestias voluptate. Iusto voluptas consectetur tempore expedita officia et.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (35, 'Facere voluptas delectus ipsa.', 'Aliquam iste libero et alias quod et. Omnis fuga accusantium praesentium nam laborum quisquam qui. Et explicabo voluptatum ex cum id odio. Magni dolores assumenda praesentium ad.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (36, 'Soluta nesciunt atque aperiam non voluptatem dolores.', 'Autem quo nihil dolores temporibus et et amet. Est alias natus molestias quis esse et alias. Magni est tempora aliquam odit expedita eos.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (37, 'Et voluptates dolorem velit dolorem vel natus voluptas.', 'Cum ipsa exercitationem magni debitis occaecati. Accusantium amet magnam voluptas consequuntur optio labore sed.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (38, 'Enim a et adipisci eveniet nostrum sunt sit.', 'Cupiditate est nam sunt qui maiores et sint perferendis. Aut velit omnis sint ex porro. Fugiat blanditiis vitae quia et eius ducimus.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (39, 'Rerum eveniet minus rerum aut est asperiores dicta.', 'Distinctio neque qui dignissimos reprehenderit dolorem et non voluptatem. Eligendi aliquam quo doloremque delectus pariatur quis consequatur. Ut atque aut quis et qui.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (40, 'Veniam non aspernatur aspernatur deserunt ab quaerat beatae.', 'Magni qui officia aut vero laudantium et iure. Quidem a dolor quaerat iste ut ab. Harum mollitia est repellat iste.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (41, 'Sed distinctio minima quaerat consequuntur.', 'In ea rerum cum tenetur. Commodi nulla praesentium qui dolores eveniet itaque nesciunt amet. Enim impedit ut odio animi in distinctio.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (42, 'Aspernatur asperiores corrupti natus consequuntur voluptas minus', 'Modi tempora quas necessitatibus harum illo eius quo qui. Rerum enim eveniet voluptates quae ut aliquam. Aliquam velit modi quia rerum hic. Quis non quidem et mollitia a.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (43, 'Quasi sapiente aut illum et et cumque enim.', 'Velit in fugiat nam sit. Quo delectus et et non vel. Eos quis sed voluptatem totam quia est. Est nulla necessitatibus nemo quaerat maiores suscipit.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (44, 'Ut deserunt natus consectetur aut.', 'Hic beatae officiis eos est officia earum. Repudiandae est sit odio eum architecto esse. Quo est et ex asperiores iste.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (45, 'Accusamus voluptate quo modi non dolor eaque.', 'Atque eos quasi earum expedita. Quasi eos tempore placeat ducimus cumque nesciunt eligendi. Dignissimos dignissimos maxime ipsa officia natus. Consectetur similique velit nihil assumenda.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (46, 'Alias mollitia aliquid veniam et sit non.', 'Aut nobis exercitationem aspernatur. Voluptatibus quia a tempore quis soluta facilis. Autem omnis eos omnis voluptatem sit rerum sint numquam. Beatae harum sequi magnam assumenda ipsum.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (47, 'Molestiae aut ipsam dolorum molestias aut dolorem blanditiis.', 'Tempore distinctio eum inventore qui iure error excepturi. Sit autem quos pariatur autem saepe id voluptate. Voluptates vitae est doloremque ut consectetur.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (48, 'Cupiditate molestias labore ratione excepturi.', 'Est aut et id similique sed consequatur. Enim et voluptatem non ipsam quaerat unde ipsa.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (49, 'Numquam eos unde commodi consequatur et.', 'Quis officiis veritatis et voluptatum. Iste quas laboriosam molestias velit sequi. Harum est culpa ipsam nulla a asperiores quidem. Magni amet aliquid autem non sunt deleniti nostrum.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (50, 'Natus quae nihil ullam quo dolorem unde voluptas.', 'Repudiandae distinctio consectetur rerum et. Recusandae ut molestiae illo et fugit non. Expedita velit rerum sed dolorum expedita consequatur hic. Ut et distinctio voluptatem amet voluptatem.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (51, 'Aut aspernatur qui enim aut.', 'Eos vel quis vitae dolor ut distinctio. Optio in mollitia ipsa reprehenderit quaerat et sapiente et. Eum at quo numquam iure non dignissimos. Qui tempora et est dolore.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (52, 'Dolorem consequuntur doloribus eum quis corporis.', 'Omnis eos ut placeat voluptate ducimus. Temporibus fugiat quos illo vel. Nam sit accusantium dolor culpa omnis tenetur consequuntur. Voluptatem itaque provident occaecati dolores.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (53, 'A doloribus aut dignissimos itaque facere maiores.', 'Quibusdam delectus error laudantium non distinctio. Voluptatum occaecati repellat accusamus. Libero labore totam nostrum quos vero autem iste aspernatur.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (54, 'Enim perferendis totam ullam sit et numquam.', 'Quidem voluptates illo aut ducimus pariatur totam qui. Aut doloribus rem ullam eveniet explicabo soluta praesentium in.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (55, 'Vero magni repellat molestiae et sed ut.', 'Voluptatem omnis nisi quia aut ex aliquam. Mollitia est dolor accusamus sint quia. Molestiae fugit suscipit dolorem non saepe occaecati. Eaque culpa neque aut facilis.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (56, 'Nulla ducimus illo ducimus dolorum.', 'Sunt omnis pariatur distinctio suscipit. Sint doloremque nulla veniam occaecati dolorem aut. Veniam repellendus facilis esse. Saepe quo ipsum facere eligendi recusandae.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (57, 'Pariatur beatae eligendi quae dolorum voluptatem delectus.', 'Saepe sit beatae architecto quia eum. Ut fugiat aperiam error. Rem sunt est similique laboriosam. Est reprehenderit impedit ea eum qui.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (58, 'Tenetur dolor non qui ea.', 'Molestias ad omnis officia sequi nobis. Nesciunt consequatur sit vel perspiciatis. Architecto molestiae occaecati quae quia quod.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (59, 'Quis eaque ipsa molestiae tenetur vel.', 'Consequuntur ratione amet eaque dolores dolor vel. Necessitatibus repudiandae dolorem inventore minima ut qui. Ab quasi suscipit occaecati rerum sit accusantium.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (60, 'Inventore velit sunt esse voluptatem ab beatae.', 'Voluptate placeat et ratione et est. Aut perspiciatis labore nihil illum aliquid maxime. Ullam a consequuntur ullam unde aspernatur. Qui tempora qui consequatur sed nam sint.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (61, 'Vel ab consequuntur non ea.', 'Sed in facere vel ut aliquid commodi sunt. In enim eius temporibus quis. Facilis hic tempore aut quisquam facilis nisi rerum. Eum maxime et sunt vel consequuntur.', 'http://lorempixel.com/640/480/');
INSERT INTO `Media` (`id`, `movieTitle`, `overview`, `movieCover`) VALUES (62, 'Assumenda rerum laboriosam et nobis neque dignissimos.', 'Provident aperiam molestiae id nulla occaecati qui non. Necessitatibus est quas asperiores necessitatibus. Sed sunt voluptatem quis labore in. Aut praesentium modi delectus.', 'http://lorempixel.com/640/480/');

#
# TABLE STRUCTURE FOR: MediaHost
#

#DROP TABLE IF EXISTS `MediaHost`;

CREATE TABLE IF NOT EXISTS `MediaHost` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediaId` int(11) DEFAULT NULL,
  `serviceId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mediaId` (`mediaId`),
  KEY `serviceId` (`serviceId`),
  CONSTRAINT `MediaHost_ibfk_1` FOREIGN KEY (`mediaId`) REFERENCES `Media` (`id`),
  CONSTRAINT `MediaHost_ibfk_2` FOREIGN KEY (`serviceId`) REFERENCES `Services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (1, 1, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (2, 2, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (3, 3, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (4, 4, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (5, 5, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (6, 6, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (7, 7, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (8, 8, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (9, 9, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (10, 10, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (11, 11, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (12, 12, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (13, 13, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (14, 14, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (15, 15, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (16, 16, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (17, 17, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (18, 18, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (19, 19, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (20, 20, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (21, 21, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (22, 22, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (23, 23, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (24, 24, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (25, 25, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (26, 26, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (27, 27, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (28, 28, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (29, 29, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (30, 30, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (31, 31, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (32, 32, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (33, 33, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (34, 34, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (35, 35, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (36, 36, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (37, 37, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (38, 38, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (39, 39, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (40, 40, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (41, 41, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (42, 42, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (43, 43, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (44, 44, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (45, 45, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (46, 46, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (47, 47, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (48, 48, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (49, 49, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (50, 50, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (51, 51, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (52, 52, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (53, 53, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (54, 54, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (55, 55, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (56, 56, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (57, 57, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (58, 58, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (59, 59, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (60, 60, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (61, 61, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (62, 62, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (63, 1, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (64, 2, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (65, 3, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (66, 4, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (67, 5, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (68, 6, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (69, 7, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (70, 8, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (71, 9, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (72, 10, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (73, 11, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (74, 12, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (75, 13, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (76, 14, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (77, 15, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (78, 16, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (79, 17, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (80, 18, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (81, 19, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (82, 20, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (83, 21, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (84, 22, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (85, 23, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (86, 24, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (87, 25, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (88, 26, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (89, 27, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (90, 28, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (91, 29, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (92, 30, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (93, 31, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (94, 32, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (95, 33, 5);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (96, 34, 1);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (97, 35, 2);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (98, 36, 3);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (99, 37, 4);
INSERT INTO `MediaHost` (`id`, `mediaId`, `serviceId`) VALUES (100, 38, 5);

#
# TABLE STRUCTURE FOR: Reviews
#

#DROP TABLE IF EXISTS `Reviews`;

CREATE TABLE IF NOT EXISTS `Reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `mediaId` int(11) DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `mediaId` (`mediaId`),
  CONSTRAINT `Reviews_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`),
  CONSTRAINT `Reviews_ibfk_2` FOREIGN KEY (`mediaId`) REFERENCES `Media` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (1, 1, 1, 'Eos sit et provident reprehenderit quos omnis. Accusantium maxime delectus nisi hic sed est corporis. Aut praesentium aut rerum quam cupiditate. Maxime voluptate est non deleniti et voluptatem qui.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (2, 2, 2, 'Repellat quae id et corrupti et numquam. Ut aut temporibus molestiae blanditiis et. Pariatur non laborum ut quo. Facilis aperiam odit voluptatibus.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (3, 3, 3, 'Cupiditate quos iure assumenda quis. Et velit sapiente minus. Officiis asperiores et saepe possimus facere commodi sequi sint.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (4, 4, 4, 'Atque ducimus consequuntur ea velit suscipit expedita et. Quia ut cumque rerum necessitatibus quia dolor reiciendis et. Sint inventore ab perspiciatis illo vero et.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (5, 5, 5, 'Magni aut animi similique. Eum libero accusamus sit dolorum veritatis dolore iste. Eius repudiandae voluptatem voluptate possimus. Totam quis perferendis natus odit.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (6, 6, 6, 'Repellat sequi consequatur dolores voluptas nobis quis harum. Tempore voluptatem sit consequatur sint dolorem. Qui exercitationem fugit non.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (7, 7, 7, 'Vel eaque eum et placeat. Natus officia aut qui qui mollitia. Deleniti consequuntur corrupti ea nostrum. Ut porro ut illum. Voluptatem dolorem nemo aut distinctio illo molestias.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (8, 8, 8, 'Ut natus quis debitis exercitationem veniam vero. Eaque sed cum sint. Aut voluptas nemo provident alias. Tempore et voluptate voluptatum reiciendis veritatis alias voluptate.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (9, 9, 9, 'Quod et assumenda non laborum et ipsam accusantium. Ab omnis aspernatur non ratione velit quo rem. Aut provident rerum vero totam rerum distinctio animi.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (10, 10, 10, 'Aperiam ut voluptas explicabo sed enim quisquam animi. Sunt sed dolores fugit excepturi quisquam. Similique ut sequi ullam tempora. Aut saepe adipisci quia vero quia eveniet delectus.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (11, 1, 11, 'Aut voluptate earum totam temporibus autem soluta laboriosam. Mollitia deleniti aut dolores voluptas atque temporibus voluptas. Est est animi voluptate ut atque modi. Qui sunt sunt fugiat magnam.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (12, 2, 12, 'Voluptatem delectus nostrum porro iste. Perferendis quibusdam aperiam accusamus et accusantium nam reprehenderit sequi.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (13, 3, 13, 'Corporis soluta est ut ut aspernatur aut quaerat. Beatae quaerat porro eveniet rerum. Blanditiis molestiae aliquid rerum quia id. Deleniti ratione occaecati quas molestiae.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (14, 4, 14, 'Quia eos quos nihil nisi. Qui fugit est repellendus amet pariatur sunt autem. Et ex dolor ut officia dolorem.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (15, 5, 15, 'Earum voluptates illo deserunt molestias facilis numquam. Enim earum et et iste dolorem nihil dolor dolores. Non possimus quis laudantium blanditiis explicabo sint totam.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (16, 6, 16, 'At ex aut molestiae est quidem cupiditate sed. Quam error sit quia vitae. Reprehenderit doloribus ratione magnam doloremque voluptate dolores facere autem. Saepe magni et harum porro nobis.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (17, 7, 17, 'Id nihil aut ut ipsum. Aut ut quod dolorum et inventore. Incidunt eius magnam neque hic ipsa ipsam cumque. Autem nesciunt sed et impedit.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (18, 8, 18, 'Et dolorem saepe occaecati suscipit corporis accusantium expedita ipsa. Consequuntur omnis tempora aut aliquid aut. Deleniti a iure cum qui laborum. Aut doloribus libero iure blanditiis nobis.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (19, 9, 19, 'Ratione doloremque praesentium corporis aut nulla reiciendis minus. Aut eos tenetur a illum et sunt. Animi autem porro sit excepturi quae eaque. A repellat omnis voluptatum illo facilis.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (20, 10, 20, 'Nulla voluptas corporis dolorum error. Eligendi laboriosam debitis odio ex. Iste sed et doloremque ex id officia expedita laudantium.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (21, 1, 21, 'Maiores ipsa distinctio veniam aspernatur eaque amet consectetur. Incidunt veniam et eaque sit error est aut. Voluptatem repudiandae amet id et consectetur fuga quos quis.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (22, 2, 22, 'Recusandae enim officia alias doloremque nam cumque doloremque ea. Aut dolor totam et.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (23, 3, 23, 'Voluptates nulla amet voluptas. Totam labore doloribus in aspernatur saepe perspiciatis. Aut soluta eum quo consectetur quasi quia placeat. Rerum ea et ut perspiciatis.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (24, 4, 24, 'Dolorem odio velit et officia inventore. Earum aut error et rerum delectus amet. Sint voluptates quam sequi id quidem dolores. Ea dolorem qui molestiae consequatur nisi.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (25, 5, 25, 'Sint architecto dolorem expedita expedita mollitia. Numquam sit qui eum. Aut nesciunt saepe modi aut. Ab consectetur id sequi sunt vitae eligendi.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (26, 6, 26, 'Sit sint et doloremque nam aliquam. Reprehenderit veniam necessitatibus nemo quo aut. Cum incidunt ex et iure totam aliquam dolorem. Qui est impedit labore voluptatem nam commodi.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (27, 7, 27, 'Autem non tenetur itaque neque sequi officiis reprehenderit. Nulla et rerum sunt voluptatem. Mollitia sint deleniti rerum et.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (28, 8, 28, 'Quia enim ratione quos eius dignissimos ratione iusto. Maxime vel mollitia non eum. Neque cumque necessitatibus vel velit voluptatem aut.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (29, 9, 29, 'Hic ullam occaecati ea. Esse voluptatibus non qui nulla excepturi. Ut commodi reprehenderit illum libero exercitationem.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (30, 10, 30, 'Quibusdam quia aperiam eum. Voluptatum aut ut sit dolores ut ipsam ab. Provident neque laborum possimus est id enim. Quisquam praesentium beatae velit tempore et.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (31, 1, 31, 'Ducimus autem eos ipsa iusto autem itaque. Sunt consequatur rerum accusamus eum. Aut sit exercitationem recusandae recusandae ipsam. Asperiores sit accusamus dolores natus repellat non.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (32, 2, 32, 'Est dignissimos dicta sit sequi nostrum. Omnis et autem officia in enim ut.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (33, 3, 33, 'Vero dolores necessitatibus cum alias. Et distinctio velit soluta at omnis iste hic. Sunt doloremque omnis corporis ut temporibus atque.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (34, 4, 34, 'Eum impedit corrupti ab. Quis ducimus nulla molestias qui perspiciatis. Saepe aperiam eius repellat laborum deleniti necessitatibus dolores.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (35, 5, 35, 'Assumenda tempore nostrum numquam optio voluptate. Similique doloremque voluptatibus porro amet officia laboriosam reiciendis. Architecto nostrum provident odit soluta est.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (36, 6, 36, 'Praesentium tempora ex dolor. Eos veniam veniam sapiente doloremque molestias aspernatur sequi. Cumque aut molestiae sapiente.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (37, 7, 37, 'Sapiente et mollitia a doloremque. Dolore ut mollitia delectus nostrum iure quas consequatur. Alias molestiae corrupti officiis aliquid labore.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (38, 8, 38, 'Quasi dolorum aliquid officiis et ut inventore qui. Error tempore tempore ut omnis ut corrupti eligendi. Veniam aliquam in ab et. Eaque possimus in tempore cupiditate consectetur molestiae.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (39, 9, 39, 'Fugiat ut aut deserunt velit. Sed dolores accusamus autem ad incidunt eaque. Ut natus quis illum quidem.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (40, 10, 40, 'Qui assumenda qui dicta vel voluptas laborum consequuntur maiores. Odit vel ratione sint nobis vero. Voluptatibus consequatur ut numquam fugiat provident quas et repudiandae.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (41, 1, 41, 'Veritatis sequi alias ipsa omnis omnis sunt. Alias possimus officia rerum omnis qui eius illo. Alias adipisci quia quae rerum voluptatem culpa asperiores. Iusto et occaecati officia ut in et.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (42, 2, 42, 'Sunt voluptas laudantium nihil voluptatem soluta quia sit. Magnam repellat quaerat incidunt quo accusamus. Architecto et vel ea harum voluptatem.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (43, 3, 43, 'Eum dolor dolorem vitae eveniet temporibus vel quia. Quia molestias dignissimos aut voluptates fuga qui. Sequi dolor ut aspernatur sunt. Voluptatem aut voluptatem aut nulla non maiores nesciunt.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (44, 4, 44, 'Unde nulla reprehenderit et iure vel. Optio iste in ut quos. Tempore et voluptates laborum quo sunt. Numquam laboriosam sed perspiciatis eos modi aut.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (45, 5, 45, 'Et quis magni numquam explicabo. Vero exercitationem et odio sit consequuntur. Consequatur voluptas repellendus voluptas necessitatibus quod repudiandae.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (46, 6, 46, 'Quidem aut tenetur optio laudantium est voluptatum voluptate mollitia. Adipisci voluptates voluptas eos ut dolor qui expedita doloremque. Non ea asperiores reiciendis quae atque enim.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (47, 7, 47, 'Consequatur velit aut optio dicta cupiditate neque. Rerum numquam odit voluptatem et placeat maxime. Fuga aliquam omnis quia alias repellat vero sit qui.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (48, 8, 48, 'Vel dolores incidunt et sint animi eligendi. Delectus aspernatur consequatur ut illum. Dolorem illum eveniet et modi atque. Voluptatem dicta dolore officia omnis magnam amet possimus.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (49, 9, 49, 'Blanditiis dolores odio est. Molestias repellat accusamus aperiam voluptas. Necessitatibus qui culpa doloribus laudantium mollitia et. Non eaque et sint et nostrum ullam beatae. Non quod iste quas.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (50, 10, 50, 'Accusantium quia earum temporibus quos non voluptas. Labore eum similique minima quisquam perspiciatis similique. Expedita veritatis rem est aliquid temporibus atque hic.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (51, 1, 51, 'Sed necessitatibus incidunt beatae ea. Nihil qui dolorum aut est et autem eos pariatur. Reiciendis est temporibus facilis.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (52, 2, 52, 'Ipsam repellat qui officiis eos. Esse error ut voluptatem qui ratione. Ut rerum corporis dolores ut veritatis autem.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (53, 3, 53, 'Autem maiores ea exercitationem aut enim iste. Et placeat occaecati commodi nam sit molestias. Asperiores assumenda dicta aliquam dignissimos quo id et magnam.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (54, 4, 54, 'Consequatur dolor sint sed deleniti dolor illo. Minima ducimus laudantium consectetur rerum quaerat. Molestiae officia ipsam placeat officiis error voluptatibus similique.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (55, 5, 55, 'Non et quam illo omnis enim et. Molestias id et beatae voluptas quia. Dignissimos suscipit aut totam illum est culpa maxime. Facilis eaque quo tempore fuga sit quo aut earum.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (56, 6, 56, 'Sed qui qui at placeat blanditiis. Ipsum velit et sint ex autem debitis aliquid. Quis sunt aut placeat qui est libero iure.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (57, 7, 57, 'Tempora qui quae dolorum deleniti doloribus minima iusto. Asperiores est iusto modi nostrum. Et adipisci quaerat et sed.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (58, 8, 58, 'Magni tenetur dolores soluta officia animi ut ipsum. Dolorum voluptatum deserunt ea odit autem rerum corporis id. Beatae rem ipsam mollitia fugiat.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (59, 9, 59, 'Est rem voluptatum quibusdam unde. Modi est eaque dolor quas et qui. Eos voluptatem hic voluptatum placeat maxime ut.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (60, 10, 60, 'Quisquam beatae quod velit et impedit dolorem aut. Distinctio enim autem nemo. Mollitia maiores autem tenetur et et laudantium. Voluptate similique vero quaerat nesciunt nisi veniam voluptas quo.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (61, 1, 61, 'Iusto dolor neque repellat delectus voluptatem ut. Ut temporibus corrupti nihil non nemo cupiditate.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (62, 2, 62, 'Sequi architecto doloribus error voluptas. Aut laboriosam voluptatibus est qui quisquam ab dolore doloribus. Occaecati et nisi est labore.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (63, 3, 1, 'Cumque unde sunt culpa natus. Aut est expedita nostrum voluptatem et. Vitae assumenda sit et. Corporis quia enim ut libero molestiae.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (64, 4, 2, 'Sed exercitationem eum velit facere quo nihil nam. Rerum sed autem unde tempore. Nam necessitatibus non aut dolores.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (65, 5, 3, 'Reprehenderit nobis ea molestias est. Soluta rerum rerum natus omnis aliquid dignissimos sapiente. Ut autem laborum ea recusandae. Sequi iure mollitia repudiandae quo.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (66, 6, 4, 'Corporis est in aut quia quisquam eos reiciendis. Earum maxime suscipit et expedita suscipit accusamus ratione. Velit molestias molestiae dolor natus.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (67, 7, 5, 'Dolorum consectetur nihil nisi incidunt dicta. Et occaecati et veniam labore sit quam optio. Eos accusantium dolores molestiae perspiciatis quam voluptates aut.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (68, 8, 6, 'Est doloremque ea quae delectus nihil qui. Vitae quia ab sit asperiores et architecto. Pariatur quo et facere impedit velit. Tempora corrupti modi earum nulla est soluta quo.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (69, 9, 7, 'Dolorem ut sequi doloremque aut. Blanditiis quaerat consequatur et quod.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (70, 10, 8, 'Doloremque provident voluptatem laborum harum eum. Doloribus blanditiis eum quo illum sit commodi. Minima consequatur perferendis sed optio.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (71, 1, 9, 'Et quis vero possimus et. Praesentium aut explicabo totam omnis. Sit veniam qui voluptatibus eum deserunt dolor. Cum eveniet qui aut eveniet eaque.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (72, 2, 10, 'Magnam numquam excepturi sed odit distinctio. Repellat eum eos vel laudantium quis. Doloribus commodi numquam quo amet voluptatem consequatur aut. Totam sequi a rerum rerum atque aliquid vero eos.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (73, 3, 11, 'Tenetur non doloribus tenetur non autem sed. Numquam quae tempore consequatur. Omnis similique dignissimos sed.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (74, 4, 12, 'Eligendi unde veniam id eveniet pariatur. Aliquam repudiandae et omnis rerum corrupti nostrum iusto. Excepturi quia debitis voluptate vero aliquam atque voluptas.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (75, 5, 13, 'Quasi perferendis saepe consequatur numquam assumenda tenetur autem quia. Quia dolores laboriosam laboriosam sunt quae. Qui ullam recusandae dolor enim earum est qui vel.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (76, 6, 14, 'Alias ut voluptatem eum rem et. Voluptatibus cumque nobis distinctio molestias aut ut dolorem. Eligendi ipsum ad eveniet ullam magnam suscipit rem quibusdam. Est recusandae sequi eum rerum est iusto.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (77, 7, 15, 'Repudiandae deserunt unde quia ipsam maiores veniam sunt et. Excepturi non quam accusantium ab. Architecto consequuntur et qui et libero inventore. Vero placeat voluptates nobis quam atque itaque.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (78, 8, 16, 'Ut neque dolorem et atque aspernatur consequatur suscipit aut. Eos qui rerum at quia nulla fugit qui. Maiores adipisci accusantium quis laboriosam dolor aut. Doloremque aliquid pariatur ullam nemo.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (79, 9, 17, 'Et ut error eos doloremque sequi ratione. Aut deserunt explicabo natus enim ut. Ipsum enim nulla et.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (80, 10, 18, 'Voluptatem est quo animi quia dignissimos. Pariatur qui error praesentium numquam. Enim suscipit ea totam pariatur nobis quam ducimus.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (81, 1, 19, 'Atque totam pariatur quia deserunt enim laboriosam. Et aliquid numquam illo corrupti. Praesentium vero eaque nobis quis.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (82, 2, 20, 'Exercitationem aliquid officia aut tenetur ipsum. Reiciendis voluptatem velit sed. Similique et fugit nihil numquam corrupti.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (83, 3, 21, 'Aut dolore eligendi nihil sunt praesentium. Repellendus recusandae quidem qui. Excepturi ullam quo placeat qui porro dignissimos.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (84, 4, 22, 'Quisquam beatae modi in. Ut dolore nostrum enim repellendus vero ipsa velit. Qui sed laborum ea itaque. Optio placeat doloremque est dolorem facilis vero praesentium.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (85, 5, 23, 'Quidem magni id doloribus maxime soluta. Est at id qui autem aut non. Quod et et id nostrum quis eaque dolores.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (86, 6, 24, 'Impedit et ipsam sed qui tempore repellendus. Eveniet debitis provident fugiat tempora atque saepe in. Architecto ab enim ipsam hic mollitia voluptatibus illum.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (87, 7, 25, 'In praesentium et et optio non beatae officiis. Consequatur dignissimos voluptatem velit quasi unde eum molestiae dolorem. Libero itaque soluta dolorem. Aut aliquam excepturi id sit quaerat.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (88, 8, 26, 'Praesentium vitae aut quisquam ipsa. Minima repudiandae cumque id sint deleniti quisquam. Est adipisci et possimus. Nihil repellat aut explicabo itaque quia magni veritatis.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (89, 9, 27, 'Enim sed consequuntur aut. Aliquam sequi rerum et ratione sed eius in. Inventore rerum est aut dicta cum beatae. Est repellat quia dicta rerum mollitia.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (90, 10, 28, 'Consequatur quibusdam eos in saepe consequuntur. Voluptatem architecto molestias repellat voluptatem earum error at. At modi quia et eos.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (91, 1, 29, 'Distinctio porro illum aspernatur quasi cumque. Consectetur voluptatem vel quaerat minima dolor. Eos culpa ad qui ducimus et aut.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (92, 2, 30, 'Ipsum excepturi nulla atque autem placeat. Porro beatae ea quas rerum quia. Eligendi architecto veritatis sint dolorem. Ipsum consequuntur et doloremque necessitatibus soluta.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (93, 3, 31, 'Sit autem hic aut voluptas odit. Dolorum laborum alias voluptate itaque sit. Expedita magnam eum eum quam est doloremque.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (94, 4, 32, 'Explicabo eaque recusandae qui autem ullam. Aliquam mollitia hic dolorem expedita quis ullam. Veniam omnis nihil minima est est distinctio voluptas.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (95, 5, 33, 'Cumque illum velit fugit ut. Illum et ut ullam et. Incidunt fuga nobis incidunt est modi. Nulla officia et architecto quis voluptatem id autem.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (96, 6, 34, 'Nisi eveniet alias modi eos. Dicta autem assumenda maiores tenetur officia minus ex maxime. Aut repellendus quod ipsum.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (97, 7, 35, 'Sed dicta doloremque eius soluta odio voluptates. Voluptatibus omnis amet dicta eos perferendis doloribus eveniet occaecati. Nemo alias nihil voluptatem magni ut distinctio eligendi.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (98, 8, 36, 'Omnis dolores nemo sed architecto magni. Ipsam totam aut unde totam at aut voluptatum molestiae. Aut eaque voluptates est aut ipsa. Perspiciatis dolorem omnis dolores quasi quae qui.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (99, 9, 37, 'Assumenda itaque in voluptatem ea dicta voluptatum. Voluptatem unde voluptas omnis dolores. Asperiores dignissimos hic ratione.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (100, 10, 38, 'Quia blanditiis ab qui aliquid eum magni. Dolores nesciunt ut et dolorem reiciendis. Ea rerum unde eos minima omnis sit. Illum et molestiae et et explicabo iste.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (101, 1, 39, 'Facilis sequi saepe aut dolore voluptates est. Omnis quis repudiandae id. Quasi quas adipisci accusantium qui sequi laboriosam. Placeat tempore maiores sed corrupti velit.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (102, 2, 40, 'Voluptates enim quia sit magni doloribus. Sit dolorum corporis aut aut rerum quasi. Vero et aut sint quibusdam possimus. Quibusdam aut blanditiis nemo hic omnis.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (103, 3, 41, 'Tempora possimus aut sit magnam. Qui consectetur officia occaecati sed laboriosam pariatur. Minus vel quo quas autem consequuntur.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (104, 4, 42, 'Voluptas aspernatur atque fugiat maxime labore. Magnam molestiae optio ut voluptatem a quos. Laboriosam distinctio deleniti dolorem sed architecto in autem earum.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (105, 5, 43, 'Quis nesciunt et at. Et in provident unde hic praesentium. Aperiam et vel aut omnis aliquam.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (106, 6, 44, 'Blanditiis iusto vero sunt pariatur est libero. Sed cumque molestias quaerat. Reprehenderit ut rerum aut officia et.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (107, 7, 45, 'Quis et voluptates et natus temporibus. Ea et est doloremque soluta voluptas quisquam tenetur dolore.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (108, 8, 46, 'Deserunt consequuntur assumenda odio voluptas non et. Voluptas beatae excepturi cupiditate labore. Ut porro ab cupiditate dignissimos est ea.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (109, 9, 47, 'Quo vel impedit non eos recusandae. Aut dicta qui pariatur magnam tempora voluptates. Dolore dolorem pariatur et quis.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (110, 10, 48, 'Occaecati ut dolor et. Nulla molestiae non odit sapiente quia placeat quia cum. Aliquid sit accusamus ut voluptatum fuga quam qui. Cumque ullam earum qui perspiciatis placeat voluptatem.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (111, 1, 49, 'Earum exercitationem officia dolore temporibus vero ipsum. Libero velit quidem et beatae excepturi. Aut dolorem eum nihil eligendi hic. Et veniam perferendis quo rerum.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (112, 2, 50, 'Soluta ut quos itaque autem. Aperiam illo dolore labore blanditiis. Ea ut odit similique aut autem.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (113, 3, 51, 'Dignissimos voluptatum dignissimos illo dolor eveniet ut distinctio. Aut expedita rerum et sint. Libero voluptate delectus recusandae et.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (114, 4, 52, 'Sed ea aut nam quibusdam vel fugiat ut. Deserunt eaque sit facilis eum. Impedit nihil neque tempore amet ea. Labore nihil sit error odio.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (115, 5, 53, 'Asperiores libero et id aut saepe. Explicabo voluptas debitis rerum cupiditate odit. Qui voluptate quas eveniet tempora. Molestiae repellat quidem dolorem ratione ex.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (116, 6, 54, 'Quo doloribus voluptas unde dolorem. Aut ratione repellat minus eos.\nPerspiciatis perferendis corporis explicabo accusantium quam et. Quaerat dicta velit itaque in. Est rerum rerum eius hic.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (117, 7, 55, 'Ad vitae accusantium ut dolor. Dignissimos qui asperiores pariatur sequi modi voluptate. Vitae voluptatum quisquam aliquam est. Hic sit voluptas esse corporis deleniti et.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (118, 8, 56, 'Ratione quos perferendis voluptas saepe. Officiis est aut delectus est neque incidunt. Corrupti labore hic eum porro quam.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (119, 9, 57, 'Voluptates beatae ducimus qui et. Optio quo earum at rem. Rem quis velit veniam illum nostrum. Quia placeat non modi et.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (120, 10, 58, 'Adipisci quia est praesentium cum. Ut ut aut minima. Fugiat ut maiores qui id.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (121, 1, 59, 'Et voluptas rerum id aut id quam vitae. Eos perspiciatis magnam nemo earum minima. Eaque qui suscipit dolorem ea dolor. Perspiciatis mollitia corporis voluptatibus saepe velit.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (122, 2, 60, 'Eveniet enim praesentium aliquam et. Repellendus similique unde quo vel optio explicabo eos minima. Voluptatem quas quae veritatis et sequi.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (123, 3, 61, 'Et id in ut. Accusantium non dolorem et est id nisi vel. In praesentium esse est rerum nostrum eaque.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (124, 4, 62, 'Aut ab voluptatum nulla quod in dignissimos et. Perspiciatis minima molestiae blanditiis nulla esse magnam.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (125, 5, 1, 'Totam eius aspernatur ad commodi. Nisi aut quis natus. Illum accusantium aut aut neque. Accusantium laboriosam reprehenderit at consequatur.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (126, 6, 2, 'Animi dignissimos odio autem aspernatur. Voluptatem dolor aspernatur iusto quos vel rerum.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (127, 7, 3, 'Impedit et magni rerum facilis natus est. Vel in velit cumque enim provident ullam rerum. Animi ut voluptatem sunt natus ut. Qui omnis magnam sed rerum autem dolorem.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (128, 8, 4, 'Exercitationem et corrupti dignissimos aut blanditiis ad nemo. Animi eius a et omnis aut quibusdam magni provident. Sapiente et sunt placeat nisi. Ad omnis ad consequuntur et.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (129, 9, 5, 'Placeat nihil ex maxime dolores minima eos voluptas. Qui impedit qui et corrupti aperiam ex impedit. Dolor dicta dignissimos facilis laborum occaecati.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (130, 10, 6, 'Cum delectus doloribus ut velit et. Asperiores et libero suscipit fugit sint minima molestiae. Harum consequatur quod nostrum expedita dolores. Aut inventore similique quasi est qui.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (131, 1, 7, 'Earum odit id tempora tempora. Voluptatum sed deserunt impedit. Et error velit distinctio molestias et.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (132, 2, 8, 'Atque qui cum veniam. Ut ut quasi et expedita tempore. Explicabo sit et labore eligendi eius occaecati. Vel quidem culpa quia consequatur ea.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (133, 3, 9, 'Fugit consectetur laborum error. Est necessitatibus neque sed.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (134, 4, 10, 'Architecto error voluptas numquam a et cupiditate. Et quia sint exercitationem ut. Vero cumque nemo modi consectetur quas et cupiditate.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (135, 5, 11, 'Ut et ipsum minus dolor dolor. Aut aut voluptas id corporis. Sequi amet consectetur iste ut nisi ut quia.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (136, 6, 12, 'Sit repellendus aut laudantium atque praesentium dolore. Saepe sit magnam repudiandae a fugit asperiores. Qui animi laboriosam qui distinctio a quia.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (137, 7, 13, 'Non voluptas maxime provident qui omnis. Accusantium architecto mollitia maiores ducimus rerum iusto. Aut numquam voluptas autem eveniet sunt aut.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (138, 8, 14, 'Ullam est esse expedita aliquid dolor quia in. Tempore quia quas vitae. Et nisi corrupti aut exercitationem sed corporis eos. Ad officia consequatur deleniti voluptas ut amet amet.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (139, 9, 15, 'Ea repellat voluptas iste. Temporibus voluptatibus et voluptatem quod. Voluptates debitis nemo eaque totam ut ratione. Ut iste assumenda rerum eius doloribus quisquam minus.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (140, 10, 16, 'Illo sunt cumque laborum similique perferendis. Nisi ullam soluta sint dolorem ullam vel. Ut nobis ea autem sed odit consequatur sed. Sit vel eius sunt magni id qui quidem.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (141, 1, 17, 'Nemo in aperiam reiciendis nisi reiciendis dolor assumenda nihil. Deleniti ut rem ea placeat qui. Nostrum error et iste ipsam saepe nihil. Et quo dolorem fugiat laudantium tempore recusandae.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (142, 2, 18, 'Omnis ut est dolore et delectus atque. Distinctio ut praesentium quam corrupti. Nihil qui mollitia repellat. Accusamus eius architecto et et rerum consequatur.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (143, 3, 19, 'Qui labore ducimus harum aut recusandae est in. Et dolores sunt nesciunt nesciunt. Consequatur labore ullam et sint ad provident possimus. Ipsum in maxime et cupiditate.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (144, 4, 20, 'Qui optio illo et dolorem excepturi veritatis. Dolore saepe perferendis aliquid maxime doloremque deserunt dolorum. Maiores quasi distinctio dolor. Aut architecto rem unde cumque quos.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (145, 5, 21, 'Et totam maxime error fugiat. Fugit ut deserunt aperiam eius et. Aut vitae eum sed a est quam aspernatur.\nAd earum est quibusdam id. Nulla harum deleniti commodi doloremque ducimus qui.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (146, 6, 22, 'Exercitationem quaerat tempore nulla et perferendis at numquam. Ea dicta consequatur cupiditate voluptas. Est beatae sequi sed et. Placeat repellendus nam inventore.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (147, 7, 23, 'Quas qui ipsum corporis nulla sed saepe. Est suscipit et eligendi labore tempore laboriosam. Ea enim autem labore ad excepturi. Nihil voluptatibus ex eum omnis voluptatem quo delectus tenetur.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (148, 8, 24, 'Commodi dolores error magni repellat molestiae. Sapiente sunt non eos dicta natus. Porro quos ea sed fuga fuga sit. Adipisci rem nesciunt ea officia error.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (149, 9, 25, 'Nulla nihil vitae soluta vel. Atque rerum impedit quod voluptatum. Saepe et modi sunt.\nAut laudantium est qui qui modi. Mollitia numquam tempore qui excepturi.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (150, 10, 26, 'Et dolor provident nihil debitis soluta voluptatem quis. Consectetur nihil praesentium autem qui rerum deserunt consequatur. Odio autem incidunt itaque enim. Optio est corporis magni.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (151, 1, 27, 'Atque aliquid ad non nemo facilis. Dolore velit nobis maxime quae ipsam cum dignissimos. Quisquam doloribus ut dolore autem. Deleniti aut sed dignissimos aut eum atque quasi provident.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (152, 2, 28, 'Quo quas aliquam reprehenderit sed et. Sit minima dolore ad eveniet repellat tempora labore. Omnis praesentium quidem similique dolorem possimus facere odit.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (153, 3, 29, 'Saepe quia aliquid repudiandae et eius provident fugiat. Optio sed totam est dolor. Qui asperiores ut alias consequuntur.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (154, 4, 30, 'Aliquam assumenda atque minus. Saepe aut est ratione ratione suscipit saepe. Voluptatibus perferendis odio consectetur alias qui vitae. Iste dolor eum vero laboriosam. Pariatur ex ratione et in.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (155, 5, 31, 'Soluta velit officia iusto debitis qui ullam. Non delectus quod tempora deserunt reiciendis tenetur. Voluptate eaque et ipsam.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (156, 6, 32, 'Perspiciatis aperiam dolorem aperiam. Natus sint nam doloribus quos optio. A minima et nihil repellat rem corporis nostrum.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (157, 7, 33, 'Ea quia mollitia culpa. Corporis eveniet incidunt dolore facilis quia quia magnam in. Ipsa qui voluptate est aperiam dignissimos expedita pariatur.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (158, 8, 34, 'Sunt aut tenetur omnis tempora. Possimus fugit voluptas facere omnis sequi doloribus corrupti. Architecto eveniet ut deleniti molestiae voluptatem.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (159, 9, 35, 'Quisquam voluptas asperiores recusandae natus repellendus in modi. Dolor natus eaque vero tenetur illo accusantium ipsum.\nVitae eum aliquid placeat sint nisi. Animi quia omnis corporis veritatis.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (160, 10, 36, 'Non ipsum itaque et ratione. Veritatis rem non et illo beatae nostrum dignissimos. Ratione nihil quas qui sapiente voluptatibus iusto in. Est nihil at occaecati labore et tempore.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (161, 1, 37, 'Optio officiis nesciunt enim in iste. Porro esse minus qui temporibus voluptatum sit quas ea. Labore in consectetur laboriosam rerum id. Expedita quam ut iusto nobis sit.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (162, 2, 38, 'Temporibus nesciunt voluptatem ut quibusdam. Labore harum quas consectetur vitae illum quia. Et sit dolor fugit nobis quidem repellat.', 2);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (163, 3, 39, 'Rem et voluptatem praesentium maxime sapiente. Omnis dolor optio et voluptas ipsa.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (164, 4, 40, 'Quo aperiam est repudiandae delectus. Distinctio mollitia similique at. Voluptatum architecto similique in totam necessitatibus.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (165, 5, 41, 'Corporis et molestiae qui praesentium. Quibusdam tempore corporis ad officia ratione sit. Quo rerum nesciunt nobis consequatur impedit explicabo.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (166, 6, 42, 'Sed unde et vel iste dicta. Doloremque odio nam et nobis adipisci. Sit non libero eveniet similique asperiores non.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (167, 7, 43, 'Ea doloremque et aut quos pariatur nulla deleniti. Nobis doloribus nulla ea et enim sint. Laudantium consequatur et a hic dolore.', 4);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (168, 8, 44, 'Quisquam quisquam vel mollitia et minus aspernatur. Nostrum non necessitatibus dolorem fugit dicta eos. Aut iste sit vel facere sapiente. Recusandae eum ipsa facere aut qui dolores.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (169, 9, 45, 'Sint ullam deleniti est. Laudantium aut autem quis molestiae qui quos necessitatibus eius. Sint ipsa non delectus rem.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (170, 10, 46, 'Omnis tenetur et provident. Aut ipsa consequatur qui voluptatem quod.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (171, 1, 47, 'Id voluptas dolorum ad assumenda numquam sit consequatur. Recusandae et quo dignissimos. Perspiciatis non et quis voluptas quae error ad.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (172, 2, 48, 'Qui molestias autem porro et assumenda iusto. Et consequatur repudiandae eum ratione qui quia facilis. Rerum tempore eum et explicabo unde inventore. Quasi earum dolores ut.', 0);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (173, 3, 49, 'Assumenda voluptatum provident magnam dolores. Nobis voluptas magni est qui sit quis. Ea ut et odio et autem. Adipisci exercitationem saepe ut voluptas soluta repellendus.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (174, 4, 50, 'Qui veniam impedit consequuntur odio earum. Fugit excepturi ut enim soluta assumenda vitae. Sit porro fuga modi aut in unde. Sit minus molestias optio omnis.', 5);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (175, 5, 51, 'Unde fugit magnam eaque est. Minus cumque repellat explicabo voluptas voluptates veniam. Rerum sed assumenda est ut dolor doloremque eius.', 3);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (176, 6, 52, 'Sapiente perspiciatis eaque quo dolorum praesentium iste assumenda. Rerum et asperiores ut sit error. Rerum quo rerum cum tenetur voluptate sunt consequuntur. Sit molestiae omnis odit iusto.', 1);
INSERT INTO `Reviews` (`id`, `userId`, `mediaId`, `review`, `rating`) VALUES (177, 7, 53, 'Nihil amet quis voluptas. Ipsa repellendus ea id consequatur doloremque enim. Labore maiores quia velit ad. A in maxime autem reiciendis possimus aliquid.', 1);


#
# TABLE STRUCTURE FOR: Friends
#

#DROP TABLE IF EXISTS `Friends`;

CREATE TABLE IF NOT EXISTS `Friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `inviter` int(11) DEFAULT NULL,
  `invited` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `inviter` (`inviter`),
  KEY `invited` (`invited`),
  CONSTRAINT `Friends_ibfk_1` FOREIGN KEY (`inviter`) REFERENCES `Users` (`id`),
  CONSTRAINT `Friends_ibfk_2` FOREIGN KEY (`invited`) REFERENCES `Users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Friends` (`inviter`, `invited`) VALUES (2, 2);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (1, 1);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (3, 3);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (4, 4);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (5, 5);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (6, 6);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (7, 7);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (8, 8);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (9, 9);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (10, 10);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (1, 1);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (2, 2);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (3, 3);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (4, 4);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (5, 5);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (6, 6);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (7, 7);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (8, 8);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (9, 9);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (10, 10);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (1, 1);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (2, 2);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (3, 3);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (4, 4);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (5, 5);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (6, 6);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (7, 7);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (8, 8);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (9, 9);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (10, 10);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (1, 1);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (2, 2);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (3, 3);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (4, 4);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (5, 5);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (6, 6);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (7, 7);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (8, 8);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (9, 9);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (10, 10);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (1, 1);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (2, 2);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (3, 3);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (4, 4);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (5, 5);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (6, 6);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (7, 7);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (8, 8);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (9, 9);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (10, 10);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (1, 1);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (2, 2);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (3, 3);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (4, 4);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (5, 5);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (6, 6);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (7, 7);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (8, 8);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (9, 9);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (10, 10);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (1, 1);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (2, 2);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (3, 3);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (4, 4);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (5, 5);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (6, 6);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (7, 7);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (8, 8);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (9, 9);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (10, 10);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (1, 1);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (2, 2);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (3, 3);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (4, 4);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (5, 5);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (6, 6);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (7, 7);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (8, 8);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (9, 9);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (10, 10);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (1, 1);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (2, 2);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (3, 3);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (4, 4);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (5, 5);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (6, 6);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (7, 7);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (8, 8);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (9, 9);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (10, 10);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (1, 1);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (2, 2);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (3, 3);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (4, 4);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (5, 5);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (6, 6);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (7, 7);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (8, 8);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (9, 9);
INSERT INTO `Friends` (`inviter`, `invited`) VALUES (10, 10);

#
# TABLE STRUCTURE FOR: Dislikes
#

#DROP TABLE IF EXISTS `Dislikes`;

CREATE TABLE IF NOT EXISTS `Dislikes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediaId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mediaId` (`mediaId`),
  KEY `userId` (`userId`),
  CONSTRAINT `Dislikes_ibfk_1` FOREIGN KEY (`mediaId`) REFERENCES `Media` (`id`),
  CONSTRAINT `Dislikes_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (1, 1, 1);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (2, 2, 2);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (3, 3, 3);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (4, 4, 4);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (5, 5, 5);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (6, 6, 6);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (7, 7, 7);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (8, 8, 8);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (9, 9, 9);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (10, 10, 10);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (11, 11, 1);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (12, 12, 2);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (13, 13, 3);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (14, 14, 4);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (15, 15, 5);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (16, 16, 6);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (17, 17, 7);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (18, 18, 8);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (19, 19, 9);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (20, 20, 10);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (21, 21, 1);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (22, 22, 2);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (23, 23, 3);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (24, 24, 4);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (25, 25, 5);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (26, 26, 6);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (27, 27, 7);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (28, 28, 8);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (29, 29, 9);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (30, 30, 10);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (31, 31, 1);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (32, 32, 2);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (33, 33, 3);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (34, 34, 4);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (35, 35, 5);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (36, 36, 6);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (37, 37, 7);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (38, 38, 8);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (39, 39, 9);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (40, 40, 10);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (41, 41, 1);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (42, 42, 2);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (43, 43, 3);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (44, 44, 4);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (45, 45, 5);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (46, 46, 6);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (47, 47, 7);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (48, 48, 8);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (49, 49, 9);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (50, 50, 10);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (51, 51, 1);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (52, 52, 2);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (53, 53, 3);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (54, 54, 4);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (55, 55, 5);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (56, 56, 6);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (57, 57, 7);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (58, 58, 8);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (59, 59, 9);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (60, 60, 10);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (61, 61, 1);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (62, 62, 2);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (63, 1, 3);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (64, 2, 4);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (65, 3, 5);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (66, 4, 6);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (67, 5, 7);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (68, 6, 8);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (69, 7, 9);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (70, 8, 10);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (71, 9, 1);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (72, 10, 2);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (73, 11, 3);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (74, 12, 4);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (75, 13, 5);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (76, 14, 6);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (77, 15, 7);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (78, 16, 8);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (79, 17, 9);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (80, 18, 10);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (81, 19, 1);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (82, 20, 2);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (83, 21, 3);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (84, 22, 4);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (85, 23, 5);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (86, 24, 6);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (87, 25, 7);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (88, 26, 8);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (89, 27, 9);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (90, 28, 10);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (91, 29, 1);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (92, 30, 2);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (93, 31, 3);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (94, 32, 4);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (95, 33, 5);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (96, 34, 6);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (97, 35, 7);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (98, 36, 8);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (99, 37, 9);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (100, 38, 10);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (101, 39, 1);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (102, 40, 2);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (103, 41, 3);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (104, 42, 4);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (105, 43, 5);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (106, 44, 6);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (107, 45, 7);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (108, 46, 8);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (109, 47, 9);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (110, 48, 10);
INSERT INTO `Dislikes` (`id`, `mediaId`, `userId`) VALUES (111, 49, 1);



#
# TABLE STRUCTURE FOR: Likes
#

#DROP TABLE IF EXISTS `Likes`;

CREATE TABLE IF NOT EXISTS `Likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediaId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mediaId` (`mediaId`),
  KEY `userId` (`userId`),
  CONSTRAINT `Likes_ibfk_1` FOREIGN KEY (`mediaId`) REFERENCES `Media` (`id`),
  CONSTRAINT `Likes_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `Users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=363 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (1, 1, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (2, 2, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (3, 3, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (4, 4, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (5, 5, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (6, 6, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (7, 7, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (8, 8, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (9, 9, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (10, 10, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (11, 11, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (12, 12, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (13, 13, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (14, 14, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (15, 15, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (16, 16, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (17, 17, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (18, 18, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (19, 19, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (20, 20, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (21, 21, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (22, 22, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (23, 23, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (24, 24, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (25, 25, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (26, 26, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (27, 27, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (28, 28, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (29, 29, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (30, 30, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (31, 31, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (32, 32, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (33, 33, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (34, 34, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (35, 35, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (36, 36, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (37, 37, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (38, 38, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (39, 39, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (40, 40, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (41, 41, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (42, 42, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (43, 43, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (44, 44, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (45, 45, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (46, 46, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (47, 47, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (48, 48, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (49, 49, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (50, 50, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (51, 51, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (52, 52, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (53, 53, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (54, 54, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (55, 55, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (56, 56, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (57, 57, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (58, 58, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (59, 59, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (60, 60, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (61, 61, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (62, 62, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (63, 1, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (64, 2, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (65, 3, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (66, 4, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (67, 5, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (68, 6, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (69, 7, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (70, 8, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (71, 9, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (72, 10, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (73, 11, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (74, 12, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (75, 13, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (76, 14, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (77, 15, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (78, 16, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (79, 17, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (80, 18, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (81, 19, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (82, 20, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (83, 21, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (84, 22, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (85, 23, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (86, 24, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (87, 25, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (88, 26, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (89, 27, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (90, 28, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (91, 29, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (92, 30, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (93, 31, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (94, 32, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (95, 33, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (96, 34, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (97, 35, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (98, 36, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (99, 37, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (100, 38, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (101, 39, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (102, 40, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (103, 41, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (104, 42, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (105, 43, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (106, 44, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (107, 45, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (108, 46, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (109, 47, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (110, 48, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (111, 49, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (112, 50, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (113, 51, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (114, 52, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (115, 53, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (116, 54, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (117, 55, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (118, 56, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (119, 57, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (120, 58, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (121, 59, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (122, 60, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (123, 61, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (124, 62, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (125, 1, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (126, 2, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (127, 3, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (128, 4, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (129, 5, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (130, 6, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (131, 7, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (132, 8, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (133, 9, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (134, 10, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (135, 11, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (136, 12, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (137, 13, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (138, 14, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (139, 15, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (140, 16, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (141, 17, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (142, 18, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (143, 19, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (144, 20, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (145, 21, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (146, 22, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (147, 23, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (148, 24, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (149, 25, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (150, 26, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (151, 27, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (152, 28, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (153, 29, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (154, 30, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (155, 31, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (156, 32, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (157, 33, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (158, 34, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (159, 35, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (160, 36, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (161, 37, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (162, 38, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (163, 39, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (164, 40, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (165, 41, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (166, 42, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (167, 43, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (168, 44, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (169, 45, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (170, 46, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (171, 47, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (172, 48, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (173, 49, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (174, 50, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (175, 51, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (176, 52, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (177, 53, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (178, 54, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (179, 55, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (180, 56, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (181, 57, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (182, 58, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (183, 59, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (184, 60, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (185, 61, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (186, 62, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (187, 1, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (188, 2, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (189, 3, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (190, 4, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (191, 5, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (192, 6, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (193, 7, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (194, 8, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (195, 9, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (196, 10, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (197, 11, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (198, 12, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (199, 13, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (200, 14, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (201, 15, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (202, 16, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (203, 17, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (204, 18, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (205, 19, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (206, 20, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (207, 21, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (208, 22, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (209, 23, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (210, 24, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (211, 25, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (212, 26, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (213, 27, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (214, 28, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (215, 29, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (216, 30, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (217, 31, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (218, 32, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (219, 33, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (220, 34, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (221, 35, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (222, 36, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (223, 37, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (224, 38, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (225, 39, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (226, 40, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (227, 41, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (228, 42, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (229, 43, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (230, 44, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (231, 45, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (232, 46, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (233, 47, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (234, 48, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (235, 49, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (236, 50, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (237, 51, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (238, 52, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (239, 53, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (240, 54, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (241, 55, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (242, 56, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (243, 57, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (244, 58, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (245, 59, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (246, 60, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (247, 61, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (248, 62, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (249, 1, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (250, 2, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (251, 3, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (252, 4, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (253, 5, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (254, 6, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (255, 7, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (256, 8, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (257, 9, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (258, 10, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (259, 11, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (260, 12, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (261, 13, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (262, 14, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (263, 15, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (264, 16, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (265, 17, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (266, 18, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (267, 19, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (268, 20, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (269, 21, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (270, 22, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (271, 23, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (272, 24, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (273, 25, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (274, 26, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (275, 27, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (276, 28, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (277, 29, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (278, 30, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (279, 31, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (280, 32, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (281, 33, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (282, 34, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (283, 35, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (284, 36, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (285, 37, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (286, 38, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (287, 39, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (288, 40, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (289, 41, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (290, 42, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (291, 43, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (292, 44, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (293, 45, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (294, 46, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (295, 47, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (296, 48, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (297, 49, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (298, 50, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (299, 51, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (300, 52, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (301, 53, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (302, 54, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (303, 55, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (304, 56, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (305, 57, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (306, 58, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (307, 59, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (308, 60, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (309, 61, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (310, 62, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (311, 1, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (312, 2, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (313, 3, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (314, 4, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (315, 5, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (316, 6, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (317, 7, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (318, 8, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (319, 9, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (320, 10, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (321, 11, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (322, 12, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (323, 13, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (324, 14, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (325, 15, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (326, 16, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (327, 17, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (328, 18, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (329, 19, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (330, 20, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (331, 21, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (332, 22, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (333, 23, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (334, 24, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (335, 25, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (336, 26, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (337, 27, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (338, 28, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (339, 29, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (340, 30, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (341, 31, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (342, 32, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (343, 33, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (344, 34, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (345, 35, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (346, 36, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (347, 37, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (348, 38, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (349, 39, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (350, 40, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (351, 41, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (352, 42, 2);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (353, 43, 3);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (354, 44, 4);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (355, 45, 5);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (356, 46, 6);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (357, 47, 7);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (358, 48, 8);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (359, 49, 9);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (360, 50, 10);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (361, 51, 1);
INSERT INTO `Likes` (`id`, `mediaId`, `userId`) VALUES (362, 52, 2);
