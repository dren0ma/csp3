-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2018 at 06:39 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plegaspi-csp3`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED DEFAULT NULL,
  `review_id` int(10) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `news_id`, `review_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 1, 4, NULL, 'test', '2018-03-04 00:57:00', '2018-03-04 00:57:00'),
(2, 1, 4, NULL, 'test2', '2018-03-04 01:06:08', '2018-03-04 01:06:08'),
(3, 1, 4, NULL, 'asdasdasdasdasdasd', '2018-03-04 01:06:14', '2018-03-04 01:06:14'),
(4, 1, 4, NULL, 'aaaaaaaaaaa', '2018-03-04 01:52:29', '2018-03-04 01:52:29'),
(5, 1, 4, NULL, 'a', '2018-03-04 09:09:11', '2018-03-04 09:09:11'),
(6, 1, 4, NULL, 'test', '2018-03-04 09:09:26', '2018-03-04 09:09:26'),
(7, 1, 4, NULL, 'aw', '2018-03-04 09:10:51', '2018-03-04 09:10:51'),
(8, 1, 4, NULL, '123123123', '2018-03-04 09:19:12', '2018-03-04 09:19:12'),
(9, 1, 4, NULL, 'asdadsasdada', '2018-03-04 09:19:34', '2018-03-04 09:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED DEFAULT NULL,
  `review_id` int(10) UNSIGNED DEFAULT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `news_id`, `review_id`, `filename`, `created_at`, `updated_at`) VALUES
(2, 2, NULL, 'img/postimg/y00z3bQUu2TNwfPeaTulqrCzaWUK7TqoaoarSkz5.png', '2018-03-03 17:00:56', '2018-03-03 17:00:56'),
(3, 3, NULL, 'img/postimg/KZ9SoN0cm93ph11kh5R3QonZz5iSeeHod4hGg2ir.png', '2018-03-03 17:10:14', '2018-03-03 17:10:14'),
(4, 4, NULL, 'img/postimg/a8ArGyMrNBErOd1pGmV1H2Q3Ri86HibLfii9UtV1.png', '2018-03-03 17:38:52', '2018-03-03 17:38:52'),
(5, 5, NULL, 'img/postimg/Nf53ztkaFM13gcRHudYvYztbPEIn3E9tjIbPzkT4.jpeg', '2018-03-03 17:59:17', '2018-03-03 17:59:17'),
(6, 22, NULL, 'img/postimg/DfLxVTxLa0djPVbeKAqkw4TVxDm0KI9mDSCDu7Kb.png', '2018-03-04 08:25:14', '2018-03-04 08:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_25_161503_create_roles_table', 1),
(4, '2018_02_25_164707_add_user_roles', 1),
(36, '2018_02_27_025852_create_news_table', 2),
(37, '2018_02_27_030142_create_reviews_table', 2),
(38, '2018_02_27_030404_create_comments_table', 2),
(39, '2018_02_27_081153_create_images_table', 2),
(40, '2018_03_01_005056_create_platforms_table', 2),
(41, '2018_03_03_235449_create_videos_table', 2),
(42, '2018_03_03_235513_add_platforms', 3),
(43, '2018_03_04_050435_create_news_platform_table', 4),
(44, '2018_03_04_130717_create_platform_review_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(2, 2, 'DOTA 2 IS MOVING TO A BI-WEEKLY UPDATE SCHEDULE', '<p>Nearly five years after the debut of Dota 2, lead developer IceFrog has decided that it\'s time to try something different. For the next six months, give or take, the huge, sweeping patches that followers are familiar with are out, and smaller, more frequent updates are in.&nbsp;</p>\r\n<blockquote>\r\n<p>We want to try taking a different approach to how gameplay patches are released. Instead of big patches a couple of times a year, we\'ll be releasing small patches every 2 weeks on Thursdays. We\'ll be trying this out for about six months and then reevaluating.</p>\r\n<p>-IceFrog</p>\r\n</blockquote>\r\n<p>It\'s not as though Dota 2 hasn\'t been updated on an ongoing basis prior to this, but those were generally small spasms of tweaks and tuning. More significant changes would appear in major updates, like the Duelling Fates update that went live last November. IceFrog didn\'t say what drove the decision to move to a more rapid-fire schedule, but as Dot Esports pointed out, the shift could have a real impact on the Dota 2 pro scene: Teams will have to adjust to changes far more frequently than they did under the old system, possibly including&mdash;unless Valve makes allowances for interruptions in the schedule&mdash;in the midst of tournaments.</p>\r\n<p>It\'s possible that the whole thing will prove to be a bust, and that the old system held up for as long as it did precisely because it worked well and helped drive the excitement that\'s kept fans invested in Dota 2. Nobody likes to wait, but having a Big Thing to look forward to is arguably more engaging than routine bi-weekly maintenance.</p>\r\n<p>IceFrog also said that, to help players keep up with the faster-paced schedule, a new feature will be added to the game to notify players of hero changes. As for which Thursday will see this new schedule get underway, has not yet been announced.</p>', '2018-03-03 17:00:56', '2018-03-03 17:00:56'),
(3, 2, 'ROCKET LEAGUE ANNOUNCES WWE PARTNERSHIP', '<p>Rocket League has announced a partnership with World Wrestling Entertainment. The deal includes both in-game crossovers and real life sponsorship.&nbsp; &nbsp;&nbsp;</p>\r\n<p>Having sided with everything from Back to the Future, to Casper the Friendly Ghost and DC Comics in the past, the WWE is in Badd good company.&nbsp; &nbsp;</p>\r\n<p>\"Throughout 2018, you can expect to see Rocket League all over the WWE universe,\" says Psyonix on the game\'s official site. \"From regular appearances on UpUpDownDown, WWE&rsquo;s YouTube gaming channel with Austin Creed a.k.a. WWE Superstar Xavier Woods to sponsorships at live WWE events&mdash;you may have even seen us on Elimination Chamber just last night.&nbsp;</p>\r\n<p>\"We&rsquo;re also very excited to be a partner of WrestleMania 34, where we&rsquo;ll have Rocket League playable for attendees at one of the biggest sports and entertainment events in the world in New Orleans the weekend of April 8.\"</p>\r\n<p>For now, Psyonix remains tight-lipped about how the WWE will feature in-game, however does earmark April for its inclusion. By nature, Rocket League already echoes Hell in a Cell&mdash;I wonder if the ball-cage-car \'em up could use some TLC?&nbsp;</p>', '2018-03-03 17:10:14', '2018-03-03 17:10:14'),
(4, 2, 'NINTENDO ANNOUNCES NINTENDO LABO, A WILD NEW EXPERIMENT FOR SWITCH', '<p>Nintendo today announced Nintendo Labo, a wild new experiment for the Switch that will allow players to insert the console into assorted pieces of cardboard, creating items like robots, fishing rods, and pianos.</p>\r\n<blockquote>\r\n<p>&ldquo;Nintendo Labo combines the magic of Nintendo Switch with the fun of DIY creations. You&rsquo;ll start with a piece of cardboard, which you can use to build one of these items, and then you&rsquo;ll put the Switch in to power it up. Then you&rsquo;ll be able to play games with your creations.\"</p>\r\n</blockquote>\r\n<p>The trailer, released this afternoon, shows people using their cardboard creations to play music and steer remote-controlled robots. It is insane and I love it.</p>\r\n<p>Nintendo Labo will be out on April 20, the company said. You&rsquo;ll be able to buy two different sets, the Variety Kit (for $70) and the Robot Kit (for $80), and Nintendo is calling them both Toy-Cons, a play on the Switch&rsquo;s Joy-Con controllers (because of course).</p>\r\n<p>Meanwhile, the $80 Robot Kit will let you &ldquo;<em>build an interactive robot suit with a visor, backpack and straps for your hands and feet, which you can then wear to assume control of a giant in-game robot.</em>&rdquo;</p>\r\n<p>Both kits will come with all of the cardboard and software you&rsquo;ll need. You can also dish out $10 for a &ldquo;Customization Set&rdquo; including stencils, stickers, and colored tape to fix all the cardboard you and your kids break.</p>\r\n<p>Nintendo will be holding Labo events in New York City and San Francisco for kids who want to try out the ambitious new experiment.</p>', '2018-03-03 17:38:52', '2018-03-03 17:38:52'),
(5, 2, 'JETPACKS ARE COMING TO FORTNITE BR, AND THE INTERNET HAS LOST ITS DAMN MIND', '<p>All 50 million players of Fortnite Battle Royale had a collective meltdown yesterday, when some new information casually appeared on the news page of Epic&rsquo;s ridiculously popular free-to-play game.&nbsp;</p>\r\n<p>It was only ten words in length, but that was all that was needed to get everyone talking about its implications; &ldquo;Jetpack (coming soon): Take the fight to all new heights.&rdquo;&nbsp;</p>\r\n<p>So, yes, you&rsquo;ll basically be able to fly in Fortnite Battle Royale by next week, as an official jetpack is being added to its multiplayer deathmatches. But what kind of wondrous hovercraft can we expect from Epic?&nbsp;</p>\r\n<p>Will it be a legendary item that can only be found in chests and equipped for one-time use, like the bush camo? Or maybe it&rsquo;ll be more common, and everyone will soon be zooming around Tilted Towers like a bunch of Boba Fetts.&nbsp;</p>\r\n<p>One thing&rsquo;s for sure; it won&rsquo;t be a purchasable microtransaction, as Epic has committed to keeping those items purely cosmetic for the sake of Fortnite&rsquo;s gameplay balance. If it was a purchasable advantage, there would be riots.&nbsp;</p>\r\n<p>Then there&rsquo;s the question of how the jet pack itself will actually feel to use. We could be talking constant streams of hovering power, Grand Theft Auto style, or limited energy use that basically allows you to perform super jumps, similar to Destiny or Halo. I&rsquo;m going to put my money on the latter, as the idea of eternally airborne combatants sounds like a nightmare for anyone stuck at ground level.&nbsp;</p>\r\n<p>And finally, how might this new addition change the dynamics of fire-fights in Fortnite Battle Royale in general? Previous game-changers like the minigun and launch pad carved out new avenues to victory for players, and the same could well be the case for the jetpack if it allows its users to master the inevitable verticality of Fortnite\'s crafting-focused combat.&nbsp;</p>\r\n<p>Typically, Epic announces a new Fortnite Battle Royale item around a week before it comes to the game itself, so you can probably expect to see it arriving by Thursday, March 8 at the latest.&nbsp;</p>\r\n<p>In the meantime, the season 3 Battle Pass has been live and active since last week, so you can bide your time by levelling up those tiers and working towards that awesome John Wick costume. John Wick with a jetpack? Now there&rsquo;s an idea for the threequel...&nbsp;</p>', '2018-03-03 17:59:16', '2018-03-03 17:59:16'),
(22, 1, 'TEST', '<p>test</p>', '2018-03-04 08:25:14', '2018-03-04 08:25:14');

-- --------------------------------------------------------

--
-- Table structure for table `news_platform`
--

CREATE TABLE `news_platform` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED NOT NULL,
  `platform_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_platform`
--

INSERT INTO `news_platform` (`id`, `news_id`, `platform_id`) VALUES
(1, 2, 1),
(2, 3, 1),
(3, 4, 4),
(4, 5, 3),
(5, 22, 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `platforms`
--

CREATE TABLE `platforms` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `platforms`
--

INSERT INTO `platforms` (`id`, `type`) VALUES
(1, 'PC'),
(2, 'XBOX'),
(3, 'PS4'),
(4, 'SWITCH');

-- --------------------------------------------------------

--
-- Table structure for table `platform_review`
--

CREATE TABLE `platform_review` (
  `id` int(10) UNSIGNED NOT NULL,
  `review_id` int(10) UNSIGNED NOT NULL,
  `platform_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `type`) VALUES
(1, 'admin'),
(3, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `provider`, `provider_id`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Couch Gaming', NULL, NULL, 'twitter', '967689769147809794', 'HzKAOcbGb3NlYVh3QUzfgf9SIaWmI3UDLvSz5tGHCFaPtAHlTYr2BpKWehVt', '2018-02-26 19:17:00', '2018-02-26 19:17:00', 1),
(2, 'Admin', 'admin@admin.com', '$2y$10$nRMDV84lbZJKeCRmppYn1uLhJvbs/FYgIThTyh/0yEetrdEAfUSrS', 'provider', 'provider_id', 'sDbv76jdPSO4EJ2O4zQXoOuL207gmKST5WuDgRK1hEdRUqdMRMWtjH4JbmcR', '2018-02-26 19:18:45', '2018-02-26 19:18:45', 1),
(4, 'Patrick Legaspi', 'p_o_t_p_o_t@yahoo.com', NULL, 'facebook', '10155131195681034', 'MieKW0TqfLWDU9foHehRRg1ZL42BjtR8UmooCHvB23OPdE9Qdezx915MXJ6W', '2018-02-26 23:32:38', '2018-02-26 23:32:38', 3);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(10) UNSIGNED DEFAULT NULL,
  `review_id` int(10) UNSIGNED DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `news_id`, `review_id`, `link`, `created_at`, `updated_at`) VALUES
(4, 4, NULL, 'https://www.youtube.com/embed/P3Bd3HUMkyU', '2018-03-03 17:38:52', '2018-03-03 17:38:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `review_id` (`review_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_news_id_foreign` (`news_id`),
  ADD KEY `images_review_id_foreign` (`review_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_user_id_foreign` (`user_id`);

--
-- Indexes for table `news_platform`
--
ALTER TABLE `news_platform`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_platform_news_id_foreign` (`news_id`),
  ADD KEY `news_platform_platform_id_foreign` (`platform_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `platforms`
--
ALTER TABLE `platforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platform_review`
--
ALTER TABLE `platform_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `platform_review_review_id_foreign` (`review_id`),
  ADD KEY `platform_review_platform_id_foreign` (`platform_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_platform_foreign` (`platform`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_role_foreign` (`role`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `videos_news_id_foreign` (`news_id`),
  ADD KEY `videos_review_id_foreign` (`review_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `news_platform`
--
ALTER TABLE `news_platform`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `platform_review`
--
ALTER TABLE `platform_review`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `images_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `news_platform`
--
ALTER TABLE `news_platform`
  ADD CONSTRAINT `news_platform_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `news_platform_platform_id_foreign` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `platform_review`
--
ALTER TABLE `platform_review`
  ADD CONSTRAINT `platform_review_platform_id_foreign` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `platform_review_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_platform_foreign` FOREIGN KEY (`platform`) REFERENCES `platforms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_foreign` FOREIGN KEY (`role`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `videos_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `videos_review_id_foreign` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
