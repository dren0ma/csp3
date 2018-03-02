-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2018 at 07:28 PM
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
-- Database: `plegaspi-csp2`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `acctId` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `acctType` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`acctId`, `username`, `password`, `acctType`, `userId`) VALUES
(1, 'admin', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1, 1),
(2, 'tuitt', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 2, 2),
(3, 'Patrick', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 1, 3),
(6, 'test2', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `accounttype`
--

CREATE TABLE `accounttype` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounttype`
--

INSERT INTO `accounttype` (`id`, `type`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brandId` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brandId`, `brand`) VALUES
(1, 'Adidas'),
(2, 'Alienware'),
(3, 'Bellino'),
(4, 'Case Logic'),
(5, 'Dakine'),
(6, 'Dickies'),
(7, 'Everest'),
(8, 'Fila'),
(9, 'Fjallraven'),
(10, 'Fossil'),
(11, 'Herschel Supply Co.'),
(12, 'Highland Tactical'),
(13, 'Hot-Z'),
(14, 'J World New York'),
(15, 'Jack Mason League'),
(16, 'JanSport'),
(17, 'Kelty'),
(18, 'Kipling'),
(19, 'KR Strikeforce Bowling'),
(20, 'Laurex'),
(21, 'Oakley'),
(22, 'Olympia'),
(23, 'Osprey'),
(24, 'Outdoor Products'),
(25, 'Penguin'),
(26, 'Piel'),
(27, 'Red Rock'),
(28, 'Russell'),
(29, 'SwissGear'),
(30, 'Timbuk2'),
(31, 'Travelon'),
(32, 'Under Armour'),
(33, 'Vagabond Traveler'),
(34, 'Visconti'),
(35, 'Osprey'),
(36, 'Osprey'),
(37, 'Osprey'),
(38, '');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `type`) VALUES
(1, 'backpack'),
(2, 'laptop'),
(3, 'messenger'),
(4, 'outdoor'),
(5, 'sports');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `colorId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`colorId`, `name`) VALUES
(1, 'Alabama'),
(2, 'Arkansas'),
(3, 'Atlas'),
(4, 'Beige'),
(5, 'Berry'),
(6, 'Black'),
(7, 'Black Prism'),
(8, 'Black/Grey'),
(9, 'Black/Neon'),
(10, 'Black/Red'),
(11, 'Black/White'),
(12, 'Bleach'),
(13, 'Blue'),
(14, 'Blue Owls'),
(15, 'Brown'),
(16, 'Camo'),
(17, 'Charcoal'),
(18, 'Cherry'),
(19, 'Chocolate'),
(20, 'Cobalt'),
(21, 'College Navy'),
(22, 'Colorstrip'),
(23, 'Coyote'),
(24, 'Dead Icons'),
(25, 'Desert'),
(26, 'Donuts'),
(27, 'Doodle'),
(28, 'Eclipse'),
(29, 'Ethnic'),
(30, 'Field Tan'),
(31, 'Floral'),
(32, 'Galaxy'),
(33, 'Graphite'),
(34, 'Green'),
(35, 'Grey'),
(36, 'Grey Lace'),
(37, 'Gunmetal'),
(38, 'Ink Splatter'),
(39, 'Kalea'),
(40, 'Khaki'),
(41, 'Midnight Sky'),
(42, 'Military'),
(43, 'Mocha'),
(44, 'Muted Green'),
(45, 'Nautical'),
(46, 'Navy'),
(47, 'Ocean'),
(48, 'Ole Miss'),
(49, 'Olive'),
(50, 'Onyx'),
(51, 'Orange'),
(52, 'Owl'),
(53, 'Ozone'),
(54, 'Paint'),
(55, 'Paintbrush'),
(56, 'Pink'),
(57, 'Purple'),
(58, 'Purple Flower'),
(59, 'Radical'),
(60, 'Red'),
(61, 'Red Tape'),
(62, 'Red Wing'),
(63, 'Rose'),
(64, 'Royal'),
(65, 'Saddle'),
(66, 'Sand'),
(67, 'Slate'),
(68, 'Space'),
(69, 'Splatter'),
(70, 'Sports'),
(71, 'Stacked'),
(72, 'Steel'),
(73, 'Stripe'),
(74, 'Surplus'),
(75, 'Tabor'),
(76, 'Tan'),
(77, 'Teal'),
(78, 'Teal/Black'),
(79, 'Tropic Pink'),
(80, 'Twiggy Dot'),
(81, 'Ultramarine'),
(82, 'Virginia'),
(83, 'Wallflower'),
(84, 'Wavery'),
(85, 'White'),
(86, 'White Artist'),
(87, 'Wilamette'),
(88, 'Wine'),
(89, 'Zega');

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `acctId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `acctId`, `itemId`) VALUES
(63, 6, 8),
(64, 6, 6),
(66, 6, 14),
(68, 6, 23);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemId` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `brandId` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(30,2) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemId`, `name`, `brandId`, `description`, `price`, `img`) VALUES
(1, 'Stadium Team Backpack', 1, 'Designed for the soccer player on the go, this sporty backpack from Adidas offers style and storage for everyday use. The Adidas Stadium Team Backpack is made from dobby polyester fabric and features a large shape with water resistant HYDROSHELL protection to keep your gear safe from dirt and water. The roomy main compartment includes a mesh valuables pocket while the exterior includes a bottom front ball pocket and a laser cut ventilated freshPAK? compartment to hold your cleats. Extra-padded ULTRARIDE shoulder straps are designed to handle the weight of a heavy load and make this bag incredibly comfortable to carry.', '3456.00', 'assets/img/bags/backpack/adidasbackblue.png'),
(2, 'Washed Canvas Backpack', 33, 'With a cool, casual look this backpack offers laidback style and ample storage for all of your day to day essential items. The Vagabond Traveler Washed Canvas Backpack is made from heavy duty washed canvas fabric and features a gently broken in vintage inspired look with accent straps, buckle details, and vintage brass hardware fittings. This backpack has a medium sized main compartment with a flap top closure, a lace up closure under the flap, and an inside zipper pocket to hold small items and valuable accessories. Three exterior flap pockets offer added storage for your cell phone, keys, and other small items that you need to keep within easy reach.', '7562.00', 'assets/img/bags/backpack/vagabondbackmilitary.png'),
(3, 'Pattern Printed Backpack', 7, 'Available in a variety of bold patterns and prints, this backpack offers stylish storage for everyday use. The Everest Pattern Printed Backpack is made from durable polyester fabric and features a medium sized shape in a classic silhouette with a top grab handle and adjustable straps that make it comfortable to carry. Detailed with a zip around main compartment, this backpack offers plenty of storage for school books or personal items, and it includes a separate front zipper pocket to hold small items and frequently used accessories. A D-ring on the front provides a convenient way to add a key clip or an extra pouch.', '1152.00', 'assets/img/bags/backpack/everestpatternethnic.png'),
(4, 'Detail Pack', 5, 'Multiple pockets make it easy to organize all of your small accessories and portable gadgets inside this roomy backpack from Dakine. The Dakine Detail Pack is made from polyester fabric with faux suede accents and a Dakine logo patch on the front. This backpack features a roomy main compartment with a padded laptop sleeve and plenty of room for school books and folders or extra clothing layers, a secondary zip around compartment with organizer pockets to hold your cell phone, pens, keys, and other small items, and an exterior zipper pocket for frequently used accessories. Adjustable, padded shoulder straps and a sternum strap make it comfortable to carry for all day use.', '3918.00', 'assets/img/bags/backpack/dakinebacktabor.png'),
(5, 'Rucksack No.21', 9, 'Classic backpack made from strong, waxed fabric with details in natural-toned leather. The main compartment has pockets for a computer and sitting pad.', '10079.00', 'assets/img/bags/backpack/fjallravenbackblack.png'),
(6, 'Gearbox Backpack', 21, 'The Gearbox Backpack features a top-loading main compartment and front-access stash pocket with organization panel for the secure storage and transport of the essentials you\'ll need throughout the day. Padded back panels and shoulder straps provide comfortable carrying, while a dedicated zip pocket stores your laptop. Designed with a fleece-lined eyewear pocket and dual side pockets, this carry-all Oakley backpack gives you quick access to the items you\'re always using.', '6913.00', 'assets/img/bags/backpack/oakleybackblack.png'),
(7, 'Peterson 9-Pocket Backpack', 25, 'Stylish business laptop backpack made with durable nylon. With two main compartments and 7 additional accessories compartments, this backpack has enough room for all your business essentials. Travel in comfort with padded shoulder straps and a padded mesh back panel. When moving through the airport, use the trolley handle pass-through strap to rest the backpack upon luggage.', '11523.00', 'assets/img/bags/backpack/penguinbacknavy.png'),
(8, 'Duel Backpack', 8, 'Keep your gear or school supplied in one place in this 6 pocket tablet and laptop backpack.', '2880.00', 'assets/img/bags/backpack/filabackteal.png'),
(9, 'Agave Laptop Backpack', 16, 'Make the daily commute to school with your laptop, tablet, books, and small accessories organized neatly inside this backpack from JanSport. The JanSport Agave backpack is made from durable polyester dobby fabric and features a classic shape with multiple compartments for organization and AirCore shoulder straps that offer comfort for all day use. This backpack has two large main compartments and includes a padded sleeve for your laptop and iPad or 3 liter hydration system, a quick access loft pocket, dual side water bottle pockets, and a front organizer compartment loaded with pockets for your cell phone, pens, keys, mp3 player, and other small items. Other features of this pack include a fully padded back panel, a front access zipper pocket, and side compression straps.', '4033.00', 'assets/img/bags/backpack/jansportagavemutedgreen.png'),
(10, 'Recruit Backpack', 32, 'Loaded with pockets to hold all of your gear, this backpack is perfect for everyday travel. The Under Armour Recruit Backpack is made from durable polyester fabric with an abrasion resistant bottom panel and features a large shape with interior and exterior storage pockets and padded HeatGear shoulder straps that make it comfortable to carry. This backpack includes a roomy main compartment, a soft lined laptop sleeve, two side water bottle pockets, and a front organizer compartment with a key clip and slip pockets to hold small accessories. A water repellent valuables pocket on the front panel provides safe and convenient storage for your cell phone, sunglasses, or other personal items.', '3744.00', 'assets/img/bags/backpack/underarmorbackblack.png'),
(11, 'Laptop Backpack', 20, 'Carry all your work, school or play essentials in graphic style in the Laurex Laptop Backpack. This cool pack for women features a roomy interior with a padded 17\' laptop computer compartment, plus plenty of room for your books, binders, folders, and other large gear. A full organizational panel offers pen/lipstick loops, card slots, and an open pocket for quick access to your cell phone. Exterior zippered pockets provide extra storage or stow last-minute items, and a flat pocket for documents is hidden by the flap. The Laurex Laptop Backpack has a heavy duty zipper and a net in a pocket which serves as a water bottle holder. A handle on the top allows you to carry it without putting it on, and a padded back panel and shoulder straps make this the perfectly comfortable everyday pack for women.', '5185.00', 'assets/img/bags/backpack/laurexbackred.png'),
(12, 'Scansmart TSA Backpack', 29, 'This backpack offers a stylish look and makes air travel a little bit easier. The SwissGear Travel Gear Scansmart TSA Laptop Backpack is crafted from durable ballistic polyester and features a well-constructed design with a checkpoint friendly laptop compartment, an Airflow back system for easy carrying, and multiple pockets for storage and organization. Detailed with contoured shoulder straps that make it comfortable to carry, this TSA-approved backpack includes a protective laptop compartment, accordion file holders for books, binders, and documents, and a convenient organizer to hold all sorts of small items and personal accessories.', '7490.00', 'assets/img/bags/backpack/swissgearbackred.png'),
(13, 'Urban Messenger', 26, 'Keep your laptop computer stylishly well-protected while you\'re on-the-go in the Piel Four-Section Urban Laptop Messenger. This soft, smooth, supple, and luxurious naked leather messenger bag features flap-over construction and bright accents, and it\'s available in several colors. Its spacious, lined interior contains a fully-padded laptop computer compartment; a file pocket; and an organizational panel with pen loops, a full-length zippered pocket, a small zippered valuables pocket, and a flap pocket. The Piel Four-Section Urban Laptop Messenger comes with an adjustable shoulder strap for your carrying comfort.', '27077.00', 'assets/img/bags/messenger/pielmsgrblack.png'),
(14, 'Graham Messenger', 10, 'A man on-the-go needs something in his back pocket (or over his shoulder) to carry him through the day. In our opinion, the Graham messenger fits the bill in lighter-weight fabric for spring and extra room for his laptop.', '8527.00', 'assets/img/bags/messenger/fossilmsgrgrey.png'),
(15, 'Hiking Pack', 7, 'Embark on your next rugged adventure with all of your essentials packed inside this hiking backpack from Everest. The Everest Hiking Pack is made from durable polyester and features a large shape and a multi-compartment design with a snap buckle closure, a rugged bottom, and multiple pockets for organization. In addition to the top-loading main compartment, this pack includes zippered side pockets, a front bungee, and an attachment ring for accessories or gear pouches. Available in a variety of colors to suit your mood and style, this backpack is perfect for long hikes, camping trips, weekend getaways, and all sorts of outdoor excursions.', '3684.00', 'assets/img/bags/outdoor/everestoutdoorgreen.png'),
(17, 'Talon Hiking Pack', 23, 'The Talon is lighter, nimbler and more comfortable than ever. With an updated AirScape backpanel to keep you dry, a continuous hipbelt wrap for incredible comfort and a suspension system that stabilized loads for dynamic activities, this is the ideal pack for minimalist backpacking, day hikes and more.																																					', '8066.00', 'assets/img/bags/outdoor/ospreyoutdoorultramarine.png'),
(18, 'Urban Messenger', 3, 'Add a stylish touch to your daily commute with this two-tone colorblocked messenger bag from Bellino. Made from durable poly/canvas fabric, the Bellino Urban Messenger bag features an urban-inspired design with a flap front silhouette, two secure buckle closures, and multiple pockets for storage and organization. Detailed with a roomy main compartment, this messenger bag includes a padded laptop sleeve, a zipper pocket to hold accessories, a side mesh water bottle pocket, and a vertical zipper pocket to hold your iPad or tablet. Beneath the flap, an organizer panel with a pen sleeve, card slots, and slip pockets offers convenient storage for all of your frequently used accessories.', '2470.00', 'assets/img/bags/messenger/bellinormsgrblue.png'),
(19, 'Anti-Theft Messenger', 31, 'Keep your most important items safe when you\'re on the go with this anti-theft messenger bag from Travelon. The Travelon Anti-Theft Urban N/S Messenger Bag is made from durable nylon fabric and features slash-proof construction with an adjustable cut-proof shoulder strap and a locking main compartment. This messenger bag has a flap front design with multiple interior compartments that include a pocket for your iPad or tablet, an RFID card slot to protect against identity thieves, and a pocket for your cell phone. A pen loop and a zipper pocket underneath the flap offer added storage for small items while an expansion pocket provides storage for a water bottle.', '4320.00', 'assets/img/bags/messenger/travelonmsgrslate.png'),
(20, 'Commute Laptop Messenger', 30, 'The best classic laptop messenger bag for hauling your laptop, iPad, lunch and layers to class, the office or that meeting two timezones away.', '6856.00', 'assets/img/bags/messenger/timbuk2msgrnautical.png'),
(21, 'Undeniable Medium Duffle 3.0', 32, 'Stow your athletic gear or fitness essentials stylishly in the Under Armour Undeniable Medium Duffle 3.0. This lightweight and durable dobby polyester gym bag is available in several colors and features Under Armour logo screen-printing. It boasts a spacious, zippered main compartment with a zippered pocket for keeping valuables safe and secure plus plenty of room for your workout wear, uniform, sporting equipment, change of clothing, toiletries, and anything else you need for your exercise routine, for practice, or for the big game. An end compartment contains a ventilated wet/dry shoe compartment, and the Under Armour Undeniable Medium Duffle 3.0 has wrapped webbing haul handles and a padded, non-slip adjustable shoulder strap for carrying comfort and versatility.', '2592.00', 'assets/img/bags/sports/underarmorsportssteel.png'),
(22, 'Barricade IV Racquet Bag', 1, 'Hit the tennis courts with your personal accessories and up to six racquets stashed inside this sporty duffel bag from Adidas. The Adidas Barricade IV Tour 6 Racquet Bag is made from dobby polyester fabric and features a large shape with a freshPak ventilated pocket to hold wet or dirty items, a thermal lined temperature controlled pocket to prevent your tennis racquet strings from warping in the heat, and a tricot-lined media pocket to hold your cell phone. Detailed with multiple logos and an Adidas kite tag, this duffel features padded haul handles, an EVA foam shoulder strap with Climacool technology, and padded backpack straps that offer versatile carrying options.', '5185.00', 'assets/img/bags/sports/adidasracquetpink.png'),
(23, 'Golf Bags 4.5 Cart Bag', 13, '9.5 inch 14-way graphite friendly separator top with putter pit and handles, full length club/shaft dividers, 8 zippered pockets including a velour lined valuables pocket & bottle compartment, padded rear position single carry strap with elastic band to secure strap, pen sleeve, towel ring with Velcro glove attachment, umbrella and tee holder, scorecard sleeve & rain hood cover, lightweight dobby nylon.', '7777.00', 'assets/img/bags/sports/hotzsportsred.png'),
(24, 'Skyline Internal Frame Pack', 24, 'Stay refreshed and comfortably well-organized during your outdoor adventure carrying your necessities in the Outdoor Products Skyline Internal Frame Pack. This lightweight and durable ripstop polyester hydration-compatible backpack (equipment sold separately) features compact, contoured, two-tone styling with bright, embroidered and screen-printed Outdoor Products logo detailing. It boasts a spacious, structured and lined main compartment with a convenient u-shaped, zippered opening and an internal frame pack with a removable aluminum stay; and its vertical-zip front pocket offers additional storage space. Its stretchy mesh side pockets provide quick access to frequently-needed things, and it comes with padded, adjustable shoulder straps and an adjustable waist strap.', '4263.00', 'assets/img/bags/outdoor/outdoorskylineblue.png'),
(25, 'Outdoor Gear Pack', 27, 'With a rugged design and multiple pockets for storage, this backpack is perfect for all sorts of outdoor adventures and expeditions. The Red Rock Outdoor Gear Engagement Pack is made from polyester fabric and features a large shape and a multi-compartment design with a padded back panel, a composite internal frame, a removable padded waist strap, and adjustable contoured shoulder straps that make it comfortable to carry. This hydration compatible backpack includes a top port hole for your bladder tube, a removable molle butt pouch, molle webbing for adding attachments, and a front zipper pocket that offers quick access to frequently used items.', '3744.00', 'assets/img/bags/outdoor/redrockgearcamo.png'),
(26, 'Vantage Tactical Backpack', 12, 'The Vantage Tactical Backpack gives you the strategic advantage you have been looking for. This pack is tight and compact and holds your gear close. With an all-around adjustable compression system, sternum, and waist straps, you\'ll have the ability to perform those high velocity vertical and lateral movements with ease. Two main compartment and two accessory pockets give you versatility to customize your gear and your trip the way you want. The MOLLE webbing surrounding the bag helps you expand as needed.', '4608.00', 'assets/img/bags/outdoor/highlandoutdoorblack.png');

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `itemId`, `categoryId`) VALUES
(1, 1, 1),
(3, 2, 1),
(4, 3, 1),
(5, 4, 1),
(6, 4, 2),
(7, 5, 1),
(8, 5, 2),
(9, 6, 1),
(10, 6, 2),
(11, 7, 1),
(12, 7, 2),
(13, 8, 1),
(14, 8, 2),
(15, 8, 5),
(16, 9, 1),
(17, 9, 2),
(18, 10, 1),
(19, 10, 2),
(20, 10, 5),
(21, 11, 1),
(22, 11, 2),
(23, 12, 1),
(24, 12, 2),
(25, 13, 2),
(26, 13, 3),
(27, 14, 2),
(28, 14, 3),
(29, 15, 4),
(31, 17, 4),
(32, 18, 2),
(33, 18, 3),
(34, 19, 3),
(35, 20, 2),
(36, 20, 3),
(37, 21, 5),
(38, 22, 5),
(39, 23, 5),
(40, 24, 4),
(41, 25, 4),
(42, 26, 4);

-- --------------------------------------------------------

--
-- Table structure for table `item_colors`
--

CREATE TABLE `item_colors` (
  `id` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `colorId` int(11) NOT NULL,
  `colorImg` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item_colors`
--

INSERT INTO `item_colors` (`id`, `itemId`, `colorId`, `colorImg`) VALUES
(1, 1, 13, 'assets/img/bags/backpack/adidasbackblue.png'),
(2, 2, 40, 'assets/img/bags/backpack/vagabondbackkhaki.png'),
(3, 2, 42, 'assets/img/bags/backpack/vagabondbackmilitary.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `acctId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `acctId`, `itemId`, `quantity`) VALUES
(1, 2, 4, 3),
(2, 2, 8, 1),
(6, 3, 12, 2),
(7, 3, 9, 1),
(8, 6, 2, 3),
(9, 6, 8, 1),
(10, 6, 12, 9);

-- --------------------------------------------------------

--
-- Table structure for table `promos`
--

CREATE TABLE `promos` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `address`, `email`) VALUES
(1, 'admin', 'admin', '', ''),
(2, 'Tuitt', 'Bootcamp', 'GMA-Kamuning', 'tuitt@tuitt.com'),
(3, 'Patrick', 'Legaspi', 'Las Pinas', 'patrick@email'),
(6, 'test2', '', '1234', 'test2@test2.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`acctId`),
  ADD KEY `acctType` (`acctType`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `accounttype`
--
ALTER TABLE `accounttype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brandId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`colorId`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `acctId` (`acctId`),
  ADD KEY `favorites_ibfk_2` (`itemId`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemId`),
  ADD KEY `brandId` (`brandId`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `itemId` (`itemId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `item_colors`
--
ALTER TABLE `item_colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colorId` (`colorId`),
  ADD KEY `itemId` (`itemId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `itemId` (`itemId`),
  ADD KEY `orders_ibfk_2` (`acctId`);

--
-- Indexes for table `promos`
--
ALTER TABLE `promos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `acctId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `accounttype`
--
ALTER TABLE `accounttype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brandId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `colorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `item_colors`
--
ALTER TABLE `item_colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `promos`
--
ALTER TABLE `promos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`acctType`) REFERENCES `accounttype` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`acctId`) REFERENCES `accounts` (`acctId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`itemId`) REFERENCES `items` (`itemId`) ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`brandId`) REFERENCES `brands` (`brandId`) ON UPDATE CASCADE;

--
-- Constraints for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD CONSTRAINT `item_categories_ibfk_1` FOREIGN KEY (`itemId`) REFERENCES `items` (`itemId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `item_categories_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `item_colors`
--
ALTER TABLE `item_colors`
  ADD CONSTRAINT `item_colors_ibfk_1` FOREIGN KEY (`colorId`) REFERENCES `colors` (`colorId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `item_colors_ibfk_2` FOREIGN KEY (`itemId`) REFERENCES `items` (`itemId`) ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`itemId`) REFERENCES `items` (`itemId`) ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`acctId`) REFERENCES `accounts` (`acctId`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
