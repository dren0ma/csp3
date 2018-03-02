-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2018 at 07:57 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, 4, NULL, 'img/postimg/UM1ZLHSrD3Vtiutcu51Vrm4t0Blo8GSUl6Vl3FIu.png', '2018-03-01 21:19:20', '2018-03-01 21:19:20'),
(5, 5, NULL, 'img/postimg/lSArKZZH9BwCd5ziv5MbXATOc0mzqN7XbjTojIBk.png', '2018-03-01 21:32:56', '2018-03-01 21:32:56'),
(6, 6, NULL, 'img/postimg/3VvDTSVgoABNqSmNQFzXdIln4AEQJfnac40HJirg.png', '2018-03-01 21:50:21', '2018-03-01 21:50:21'),
(7, 7, NULL, 'img/postimg/Fk3f1qK1lzPrOUbJ4h6R323fNKHxTpHpID2f7JjN.png', '2018-03-01 21:53:33', '2018-03-01 21:53:33');

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
(40, '2018_02_27_025852_create_news_table', 2),
(41, '2018_02_27_030142_create_reviews_table', 2),
(42, '2018_02_27_030404_create_comments_table', 2),
(43, '2018_02_27_081153_create_images_table', 2),
(44, '2018_03_01_005056_create_platforms_table', 2),
(45, '2018_03_02_025643_add_platform_foreign', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `user_id`, `title`, `platform`, `content`, `created_at`, `updated_at`) VALUES
(4, 1, 'Dota 2 is moving to a bi-weekly update schedule', 1, '<p>Nearly five years after the debut of Dota 2, lead developer IceFrog has decided that it\'s time to try something different. For the next six months, give or take, the huge, sweeping patches that followers are familiar with are out, and smaller, more frequent updates are in.&nbsp;</p>\n<p>&nbsp;</p>\n<p>\"We want to try taking a different approach to how gameplay patches are released. Instead of big patches a couple of times a year, we\'ll be releasing small patches every 2 weeks on Thursdays. We\'ll be trying this out for about six months and then reevaluating.\"</p>\n<p>&nbsp;</p>\n<p>It\'s not as though Dota 2 hasn\'t been updated on an ongoing basis prior to this, but those were generally small spasms of tweaks and tuning. More significant changes would appear in major updates, like the Duelling Fates update that went live last November. IceFrog didn\'t say what drove the decision to move to a more rapid-fire schedule, but as Dot Esports pointed out, the shift could have a real impact on the Dota 2 pro scene: Teams will have to adjust to changes far more frequently than they did under the old system, possibly including&amp;mdash;unless Valve makes allowances for interruptions in the schedule&amp;mdash;in the midst of tournaments.</p>\n<p>It\'s possible that the whole thing will prove to be a bust, and that the old system held up for as long as it did precisely because it worked well and helped drive the excitement that\'s kept fans invested in Dota 2. Nobody likes to wait, but having a Big Thing to look forward to is arguably more engaging than routine bi-weekly maintenance.</p>\n<p>&nbsp;</p>\n<p>IceFrog also said that, to help players keep up with the faster-paced schedule, a new feature will be added to the game to notify players of hero changes. As for which Thursday will see this new schedule get underway, has not yet been announced.</p>', '2018-03-01 21:19:20', '2018-03-01 21:19:20'),
(5, 1, 'Rocket League announces WWE partnership', 1, '<p>Rocket League has announced a partnership with World Wrestling Entertainment. The deal includes both in-game crossovers and real life sponsorship.</p>\r\n<p>Having sided with everything from Back to the Future, to Casper the Friendly Ghost and DC Comics in the past, the WWE is in Badd good company.</p>\r\n<p>\"Throughout 2018, you can expect to see Rocket League all over the WWE universe,\" says Psyonix on the game\'s official site. \"From regular appearances on UpUpDownDown, WWE\'s YouTube gaming channel with Austin Creed a.k.a. WWE Superstar Xavier Woods to sponsorships at live WWE events; you may have even seen us on Elimination Chamber just last night.&nbsp;</p>\r\n<p>We\'re&nbsp;also very excited to be a partner of WrestleMania 34, where we\'ll have Rocket League playable for attendees at one of the biggest sports and entertainment events in the world in New Orleans the weekend of April 8.</p>\r\n<p>For now, Psyonix remains tight-lipped about how the WWE will feature in-game, however does earmark April for its inclusion. By nature, Rocket League already echoes Hell in a Cell--I wonder if the ball-cage-car \'em up could use some TLC?</p>', '2018-03-01 21:32:56', '2018-03-01 21:32:56'),
(6, 1, 'Nintendo Switch Eshop Adds 18 New Games This Week', 4, '<p>February has been a busy month for Nintendo Switch, and that only continues this week with the arrival of another new batch of games. This week sees 18 more titles make their way to the Eshop, in addition to a free update for Super Mario Odyssey.</p>\r\n<p>Among this week\'s releases is Old Man\'s Journey, a poignant puzzle game first released for PC and mobile devices in 2017. Switch owners can also pick up Pac-Man Championship Edition 2 Plus; the word-based puzzle-platformer Typoman; two more classic Arcade Archives games, Magical Drop III and Heroic Episode; the shoot-\'em-up Spacecats with Lasers; the dog-stretching puzzle game Puzzle Puppers; and the horror game Layers of Fear: Legacy.</p>\r\n<p>On top of those titles, three games arrive on the Switch Eshop tomorrow, February 23. Those include the puzzle-platformer Toki Tori 2+; the side-scrolling adventure game/shooter The Final Station; and Twin Robots: Ultimate Edition. Switch owners can also now download a free demo of the Portal-like puzzle game ChromaGun. You can find the full list of this week\'s new Switch games below.</p>\r\n<p>In addition to the new releases, a big update for Super Mario Odyssey is also now available to download. Along with a handful of new costumes for Mario and filters for Snapshot mode, the update adds the new Luigi\'s Balloon World minigame that Nintendo revealed during its January Direct presentation. This mode is accessible after players have cleared the main game and lets them hide balloons within levels that other players race to find.</p>\r\n<p>A number of well-received games launched for Switch this past month, including Dragon Quest Builders, Bayonetta, and Bayonetta 2. Next week, meanwhile, sees the arrival of the co-op heist game Payday 2 and the Portal/Bridge Constructor crossover title, Bridge Constructor Portal.</p>', '2018-03-01 21:50:21', '2018-03-01 21:50:21'),
(7, 1, 'The Future is Now with the Xbox Wireless Controller – Combat Tech Special Edition', 2, '<p>Whether you&rsquo;re catching up on your gaming with a new subscription to Xbox Game Pass or streaming an intense round of PUBG on Mixer, we&rsquo;ve got a controller that fits every style.</p>\r\n<p>Last spring, we debuted the Xbox Wireless Controller Tech Series &ndash; a line of special edition controllers inspired by military technology and performance patterns found in combat vehicles. Today, we&rsquo;re excited to announce the third controller in the Tech Series, the Xbox Wireless Controller &ndash; Combat Tech Special Edition.</p>\r\n<p>The Xbox Wireless Controller &ndash; Combat Tech Special Edition embodies a traditional army color palette with its classic Military Green base color (the same Military Green offered through Xbox Design Lab), bright orange accents and military insignia. Like the Recon Tech and Patrol Tech controllers that came before it, the Combat Tech controller features a textured laser-etched grip on the front of the controller and rubberized diamond grips on the back to help you stay on target. In select regions, you&rsquo;ll get 14-day trials for Xbox Live Gold and Xbox Game Pass. The Xbox Wireless Controller &ndash; Combat Tech Special Edition will be available for $69.99 USD and will start shipping to participating retailers worldwide, including Microsoft Store, on March 27.</p>\r\n<p>The first of the controller in the Tech Series, Xbox Wireless Controller &ndash; Recon Tech Special Edition, launched last spring and comes in a sleek, dark grey military design.&nbsp; The second controller in the series is the Xbox Wireless Controller &ndash; Patrol Tech Special Edition that launched in the fall.&nbsp; It features a dark blue military design.&nbsp; Both controllers are available for $69.99 USD at select retailers worldwide including micrsoftstore.com.</p>\r\n<p>All Xbox Wireless Controllers are compatible with the Xbox One family of devices and the Tech series controllers include the fan favorite features you know and love, a 3.5mm headphone jack and Bluetooth technology for gaming on Windows 10 devices or Samsung Gear VR. You can also take advantage of the custom button-mapping feature through the Xbox Accessories App.&nbsp; &nbsp;Xbox One is the only place to play the most anticipated console exclusive titles of 2018 like Sea of Thieves and PUBG.&nbsp; And, with Xbox One X Enhanced, you can enjoy steadier framerates and true 4K gaming on over 100 exciting titles right from your couch.</p>\r\n<p>Visit xbox.com, microsoftstore.com, Microsoft Store or your local retailer for more information.</p>', '2018-03-01 21:53:33', '2018-03-01 21:53:33');

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
(2, 'XBOX ONE'),
(3, 'PS4'),
(4, 'SWITCH');

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
(2, 'moderator'),
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
(2, 'Admin', 'admin@admin.com', '$2y$10$nRMDV84lbZJKeCRmppYn1uLhJvbs/FYgIThTyh/0yEetrdEAfUSrS', 'provider', 'provider_id', 'ACoEKKIKsd4GYGPXUD0erqnJoN10rdMrfBJiC36izaRy86D7V4ilc1Mn4uaV', '2018-02-26 19:18:45', '2018-02-26 19:18:45', 1),
(4, 'Patrick Legaspi', 'p_o_t_p_o_t@yahoo.com', NULL, 'facebook', '10155131195681034', 'MieKW0TqfLWDU9foHehRRg1ZL42BjtR8UmooCHvB23OPdE9Qdezx915MXJ6W', '2018-02-26 23:32:38', '2018-02-26 23:32:38', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`);

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
  ADD KEY `news_user_id_foreign` (`user_id`),
  ADD KEY `news_platform_foreign` (`platform`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
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
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

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
  ADD CONSTRAINT `news_platform_foreign` FOREIGN KEY (`platform`) REFERENCES `platforms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `news_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
