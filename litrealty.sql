-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2019 at 09:34 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `litrealty`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `agentId` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `fax` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`agentId`, `name`, `phone`, `fax`, `email`, `username`, `password`) VALUES
(1, 'Sue Roberts', '555-1234', '555-9876', 'sue@homesellers.com', 'Sue.Roberts', 'd953620acb80ef75f865d6346cc554f3'),
(2, 'Natasha Watkins', '555-1357', '555-9876', 'tasha@homesellers.com', 'Natasha.Watkins', 'a195ec34d345bf4c1edd013a851cfe8d'),
(3, 'Chris Clarkson', '555-2468', '555-6767', 'chris@homesellers.com', 'Chris.Clarkson', '45b255c09dc94efe83af4dd14dbc23a9'),
(4, 'Laura Blain', '555-9898', '555-6767', 'laura@homesellers.com', 'Laura.Blain', 'eab2e780b6c0a48ca3e46738d64073eb'),
(5, 'Dave Lindale', '555-8833', '555-9876', 'dave@homesellers.com', 'Dave.Lindale', '1aace466130ac0e9bd56e6b42c9944a3');

-- --------------------------------------------------------

--
-- Table structure for table `archive`
--

CREATE TABLE `archive` (
  `id` int(11) NOT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `listingNum` int(11) DEFAULT '0',
  `styleId` int(11) DEFAULT '0',
  `typeId` int(11) DEFAULT '0',
  `bedrooms` int(11) DEFAULT '0',
  `bathrooms` float DEFAULT '0',
  `squarefeet` int(11) DEFAULT '0',
  `berRating` varchar(2) NOT NULL,
  `description` text,
  `lotsize` varchar(25) DEFAULT NULL,
  `garagesize` tinyint(4) DEFAULT '0',
  `garageId` int(11) DEFAULT '0',
  `agentId` int(11) DEFAULT '0',
  `photo` varchar(50) DEFAULT NULL,
  `price` double DEFAULT '0',
  `dateAdded` date NOT NULL,
  `vendorid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `archive`
--

INSERT INTO `archive` (`id`, `street`, `city`, `listingNum`, `styleId`, `typeId`, `bedrooms`, `bathrooms`, `squarefeet`, `berRating`, `description`, `lotsize`, `garagesize`, `garageId`, `agentId`, `photo`, `price`, `dateAdded`, `vendorid`) VALUES
(53, 'sdf', 'sdf', 23, 1, 1, 32, 23, 23, '1', 'sdf', '23', 23, 1, 2, NULL, 233, '2019-12-02', 1),
(54, '51 Seville Lawns, Margaretsfields, Callan Road', 'Kilkenny', 727218, 1, 1, 5, 2.5, 2100, 'G', 'Property Partners Buggy are delighted to bring to the market this three bedroom duplex property. The property is located just one mile from Kilkenny City Centre in an area known as Margaretsfields. This residence is in excellent condition for sale and would ideally suit an owner occupier or investor alike. Viewing is strongly recommended.', '70x140', 2, 2, 5, '727218.jpg', 159900, '2019-12-02', 1),
(55, '11 Thomas Street', 'Waterford', 727213, 5, 1, 3, 2, 1800, 'D2', 'Thomas Street is located off Merchants Quay which has a number of shops, bars and restaurants. The property is five minutes walk from Waterford city centre, Plunkett Station, Bus Áras and Aldi Supermarket.\n\nThe property is currently occupied and has a good rental yield with further potential. ', '70x110', 1, 2, 4, '727213.jpg', 99900, '2019-12-02', 1),
(56, 'St Annes Road, Nr. McSwiney Villas, Gurranabraher', 'Cork', 197681, 5, 1, 3, 1.5, 1650, 'F', 'This two bedroom mid terrace extended property is ideally located at 29 St. Annes Road, just off McSwiney Villas, close to City Centre It is within a few minutes walking distance of Blarney St., Shandon St., and the North Main st. Ideal starter home or investment property.The property stands on an elevated site which commands fantastic views of the City.\nThis property is priced to sell. Early viewing is recommended.', '100x110', 2, 1, 1, '197681.jpg', 159500, '2019-12-02', 1),
(57, '29 Riverbank Hall, Addison Park, Glasnevin', 'Dublin 11', 52, 1, 1, 1700, 1, 1000, 'A1', 'A winning combination of a superb address and perfectly positioned beautiful one bedroom 1st floor apartment set amidst impressive landscaped gardens. Tremendous thought and superb design were the key elements in creating the aesthetically pleasing mix of luxurious apartments. No. 29 Riverbank Hall is a spacious and well appointed first floor apartment that will not disappoint. Enjoying an enviable sunny orientation, flooded with natural light throughout the day. The accommodation briefly consists of entrance hall with storage cupboard, spacious lounge with double glazed French door leading to sunny balcony, fully fitted kitchen, bathroom & w.c. combined. Gas fired radiator central heating. Designated car space. Built in wardrobe in bedroom with double glazed French door to balcony. Conveniently located in the heart of Glasnevin. The commuting distance to city centre is short, close to shops, restaurants, Deli\'s, Creche and a wealth of local amenities. Easy access to M50, M1, Dublin Airport, DCU Campus. A perfect purchase for first time buyers and an ideal investment opportunity with high annual rental yield', '70x100', 1, 1, 1, '523986.jpg', 116900, '2019-12-02', 1),
(58, '29 Riverbank Hall, Addison Park, Glasnevin', 'Dublin 11', 52, 1, 1, 1700, 1, 1000, 'A1', 'A winning combination of a superb address and perfectly positioned beautiful one bedroom 1st floor apartment set amidst impressive landscaped gardens. Tremendous thought and superb design were the key elements in creating the aesthetically pleasing mix of luxurious apartments. No. 29 Riverbank Hall is a spacious and well appointed first floor apartment that will not disappoint. Enjoying an enviable sunny orientation, flooded with natural light throughout the day. The accommodation briefly consists of entrance hall with storage cupboard, spacious lounge with double glazed French door leading to sunny balcony, fully fitted kitchen, bathroom & w.c. combined. Gas fired radiator central heating. Designated car space. Built in wardrobe in bedroom with double glazed French door to balcony. Conveniently located in the heart of Glasnevin. The commuting distance to city centre is short, close to shops, restaurants, Deli\'s, Creche and a wealth of local amenities. Easy access to M50, M1, Dublin Airport, DCU Campus. A perfect purchase for first time buyers and an ideal investment opportunity with high annual rental yield', '70x100', 1, 1, 1, NULL, 116900, '2019-12-03', 0),
(59, '29 Riverbank Hall, Addison Park, Glasnevin', 'Dublin 11456456', 523986, 1, 1, 1700, 1, 1000, 'A1', 'A winning combination of a superb address and perfectly positioned beautiful one bedroom 1st floor apartment set amidst impressive landscaped gardens. Tremendous thought and superb design were the key elements in creating the aesthetically pleasing mix of luxurious apartments. No. 29 Riverbank Hall is a spacious and well appointed first floor apartment that will not disappoint. Enjoying an enviable sunny orientation, flooded with natural light throughout the day. The accommodation briefly consists of entrance hall with storage cupboard, spacious lounge with double glazed French door leading to sunny balcony, fully fitted kitchen, bathroom & w.c. combined. Gas fired radiator central heating. Designated car space. Built in wardrobe in bedroom with double glazed French door to balcony. Conveniently located in the heart of Glasnevin. The commuting distance to city centre is short, close to shops, restaurants, Deli\'s, Creche and a wealth of local amenities. Easy access to M50, M1, Dublin Airport, DCU Campus. A perfect purchase for first time buyers and an ideal investment opportunity with high annual rental yield', '70x100', 1, 1, 1, NULL, 116900, '2019-12-03', 0),
(60, 'fgh', 'fgh', 56, 1, 1, 56, 56, 56, 'A1', 'fgh', '56', 56, 1, 1, NULL, 657, '2019-12-03', 1),
(61, 'fgh', 'fgh', 456, 1, 1, 456, 546, 456, 'A1', 'fgh', '456', 45, 1, 1, NULL, 456, '2019-12-03', 1),
(62, '29 Riverbank Hall, Addison Park, Glasnevin', 'Dublin 1145345345', 523986, 1, 1, 1700, 1, 1000, 'A1', 'A winning combination of a superb address and perfectly positioned beautiful one bedroom 1st floor apartment set amidst impressive landscaped gardens. Tremendous thought and superb design were the key elements in creating the aesthetically pleasing mix of luxurious apartments. No. 29 Riverbank Hall is a spacious and well appointed first floor apartment that will not disappoint. Enjoying an enviable sunny orientation, flooded with natural light throughout the day. The accommodation briefly consists of entrance hall with storage cupboard, spacious lounge with double glazed French door leading to sunny balcony, fully fitted kitchen, bathroom & w.c. combined. Gas fired radiator central heating. Designated car space. Built in wardrobe in bedroom with double glazed French door to balcony. Conveniently located in the heart of Glasnevin. The commuting distance to city centre is short, close to shops, restaurants, Deli\'s, Creche and a wealth of local amenities. Easy access to M50, M1, Dublin Airport, DCU Campus. A perfect purchase for first time buyers and an ideal investment opportunity with high annual rental yield', '70x100', 1, 1, 1, '778954.jpg', 116900, '2019-12-03', 1),
(63, '29 Riverbank Hall, Addison Park, Glasnevin', 'Dublin 11567567567', 523986, 1, 1, 1700, 1, 1000, 'A1', 'A winning combination of a superb address and perfectly positioned beautiful one bedroom 1st floor apartment set amidst impressive landscaped gardens. Tremendous thought and superb design were the key elements in creating the aesthetically pleasing mix of luxurious apartments. No. 29 Riverbank Hall is a spacious and well appointed first floor apartment that will not disappoint. Enjoying an enviable sunny orientation, flooded with natural light throughout the day. The accommodation briefly consists of entrance hall with storage cupboard, spacious lounge with double glazed French door leading to sunny balcony, fully fitted kitchen, bathroom & w.c. combined. Gas fired radiator central heating. Designated car space. Built in wardrobe in bedroom with double glazed French door to balcony. Conveniently located in the heart of Glasnevin. The commuting distance to city centre is short, close to shops, restaurants, Deli\'s, Creche and a wealth of local amenities. Easy access to M50, M1, Dublin Airport, DCU Campus. A perfect purchase for first time buyers and an ideal investment opportunity with high annual rental yield', '70x100', 1, 1, 1, '778954.jpg', 116900, '2019-12-03', 1),
(64, '29 Riverbank Hall, Addison Park, Glasnevin', 'Dublin 1134534534', 523986, 1, 1, 1700, 1, 1000, 'A1', 'A winning combination of a superb address and perfectly positioned beautiful one bedroom 1st floor apartment set amidst impressive landscaped gardens. Tremendous thought and superb design were the key elements in creating the aesthetically pleasing mix of luxurious apartments. No. 29 Riverbank Hall is a spacious and well appointed first floor apartment that will not disappoint. Enjoying an enviable sunny orientation, flooded with natural light throughout the day. The accommodation briefly consists of entrance hall with storage cupboard, spacious lounge with double glazed French door leading to sunny balcony, fully fitted kitchen, bathroom & w.c. combined. Gas fired radiator central heating. Designated car space. Built in wardrobe in bedroom with double glazed French door to balcony. Conveniently located in the heart of Glasnevin. The commuting distance to city centre is short, close to shops, restaurants, Deli\'s, Creche and a wealth of local amenities. Easy access to M50, M1, Dublin Airport, DCU Campus. A perfect purchase for first time buyers and an ideal investment opportunity with high annual rental yield', '70x100', 1, 1, 1, '778954.jpg', 116900, '2019-12-03', 1),
(65, '10 Bloomfield, Monaleen', 'Limerickdfgdfgdfg', 664622, 1, 1, 2, 1, 975, 'A1', 'A truly superb well laid out and beautifully maintained first floor apartment situated in this magnificent residential location immediately adjacent to The Newtown Shopping Centre, Castletroy College and Monaleen National School. Inspection very highly recommended.', '70x100', 1, 1, 1, NULL, 125900, '2019-12-03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `garagetypes`
--

CREATE TABLE `garagetypes` (
  `garageId` int(11) NOT NULL,
  `gType` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `garagetypes`
--

INSERT INTO `garagetypes` (`garageId`, `gType`) VALUES
(1, 'attached'),
(2, 'detached'),
(3, 'carport');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `street` varchar(50) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  `listingNum` int(11) DEFAULT '0',
  `styleId` int(11) DEFAULT '0',
  `typeId` int(11) DEFAULT '0',
  `bedrooms` int(11) DEFAULT '0',
  `bathrooms` float DEFAULT '0',
  `squarefeet` int(11) DEFAULT '0',
  `berRating` varchar(2) NOT NULL,
  `description` text,
  `lotsize` varchar(25) DEFAULT NULL,
  `garagesize` tinyint(4) DEFAULT '0',
  `garageId` int(11) DEFAULT '0',
  `agentId` int(11) DEFAULT '0',
  `photo` varchar(50) DEFAULT NULL,
  `price` double DEFAULT '0',
  `dateAdded` date NOT NULL,
  `vendorid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `street`, `city`, `listingNum`, `styleId`, `typeId`, `bedrooms`, `bathrooms`, `squarefeet`, `berRating`, `description`, `lotsize`, `garagesize`, `garageId`, `agentId`, `photo`, `price`, `dateAdded`, `vendorid`) VALUES
(59, '29 Riverbank Hall, Addison Park, Glasnevin', 'Dublin 114534534', 523986, 1, 1, 1700, 1, 1000, 'A1', 'A winning combination of a superb address and perfectly positioned beautiful one bedroom 1st floor apartment set amidst impressive landscaped gardens. Tremendous thought and superb design were the key elements in creating the aesthetically pleasing mix of luxurious apartments. No. 29 Riverbank Hall is a spacious and well appointed first floor apartment that will not disappoint. Enjoying an enviable sunny orientation, flooded with natural light throughout the day. The accommodation briefly consists of entrance hall with storage cupboard, spacious lounge with double glazed French door leading to sunny balcony, fully fitted kitchen, bathroom & w.c. combined. Gas fired radiator central heating. Designated car space. Built in wardrobe in bedroom with double glazed French door to balcony. Conveniently located in the heart of Glasnevin. The commuting distance to city centre is short, close to shops, restaurants, Deli\'s, Creche and a wealth of local amenities. Easy access to M50, M1, Dublin Airport, DCU Campus. A perfect purchase for first time buyers and an ideal investment opportunity with high annual rental yield', '70x100', 1, 1, 1, '778954.jpg', 116900, '2019-12-03', 1),
(46, 'fd', 'f', 5, 1, 1, 5, 5, 5, '1', 'f', '5', 5, 1, 0, NULL, 5, '2019-11-24', 1),
(47, 'edrfg', 'dfg', 23, 1, 1, 342, 23, 23, '1', 'dfg', '3', 3, 1, NULL, '23.jpg', 3, '2019-11-25', 1),
(48, 'edrfg', 'dfg', 23, 1, 1, 342, 23, 23, '1', 'dfg', '3', 3, 1, NULL, '23.jpg', 3, '2019-11-25', 1),
(49, 'sdf', 'sd', 5, 1, 1, 2, 5, 234, '1', 'sdf', '2', 2, 1, 3, NULL, 5, '2019-11-25', 1),
(58, '29 Riverbank Hall, Addison Park, Glasnevin', 'Dublin 11435345', 523986, 1, 1, 1700, 1, 1000, 'A1', 'A winning combination of a superb address and perfectly positioned beautiful one bedroom 1st floor apartment set amidst impressive landscaped gardens. Tremendous thought and superb design were the key elements in creating the aesthetically pleasing mix of luxurious apartments. No. 29 Riverbank Hall is a spacious and well appointed first floor apartment that will not disappoint. Enjoying an enviable sunny orientation, flooded with natural light throughout the day. The accommodation briefly consists of entrance hall with storage cupboard, spacious lounge with double glazed French door leading to sunny balcony, fully fitted kitchen, bathroom & w.c. combined. Gas fired radiator central heating. Designated car space. Built in wardrobe in bedroom with double glazed French door to balcony. Conveniently located in the heart of Glasnevin. The commuting distance to city centre is short, close to shops, restaurants, Deli\'s, Creche and a wealth of local amenities. Easy access to M50, M1, Dublin Airport, DCU Campus. A perfect purchase for first time buyers and an ideal investment opportunity with high annual rental yield', '70x100', 1, 1, 1, '778954.jpg', 116900, '2019-12-03', 1),
(50, 'gfhdh', 'fdgh', 456, 1, 1, 4356, 3456, 456, '1', 'dfgh', '456', 45, 1, 0, NULL, 456, '2019-11-28', 1),
(51, 'sdf', 'sdfs', 234, 1, 1, 324, 234, 234, 'A1', 'sdf', '234', 24, 1, 0, NULL, 234, '2019-11-28', 1),
(52, 'sdfg', 'dfg', 435, 1, 1, 35, 345, 345, 'A1', 'dfg', '43', 3, 1, 0, NULL, 345, '2019-12-01', 1),
(55, '6 Ashbrook Lawn, Ennis Road', 'Limerick', 377190, 1, 1, 4, 2, 2100, 'A1', 'This is a fine upstanding 4 bedroom semi detached property in Ashbrook, Ennis Road. All of the necessary component parts are in place to have a very comfortable family home in one of Limericks most popular residential areas. You are within comfortable walking distance of all necessary amenities of both a social, sporting and educational nature. There is a large green area almost directly in front of the property ensuring safe play from traffic and also the rear garden is South facing ensuring a plentiful supply of daylight and sunlight for those seeking relaxation to the rear of the property.', '70x200', 0, 1, 1, '377190.jpg', 179000, '2019-12-02', 1),
(54, '29 Riverbank Hall, Addison Park, Glasnevin', 'Dublin 11', 523986, 1, 1, 1700, 1, 1000, 'A1', 'A winning combination of a superb address and perfectly positioned beautiful one bedroom 1st floor apartment set amidst impressive landscaped gardens. Tremendous thought and superb design were the key elements in creating the aesthetically pleasing mix of luxurious apartments. No. 29 Riverbank Hall is a spacious and well appointed first floor apartment that will not disappoint. Enjoying an enviable sunny orientation, flooded with natural light throughout the day. The accommodation briefly consists of entrance hall with storage cupboard, spacious lounge with double glazed French door leading to sunny balcony, fully fitted kitchen, bathroom & w.c. combined. Gas fired radiator central heating. Designated car space. Built in wardrobe in bedroom with double glazed French door to balcony. Conveniently located in the heart of Glasnevin. The commuting distance to city centre is short, close to shops, restaurants, Deli\'s, Creche and a wealth of local amenities. Easy access to M50, M1, Dublin Airport, DCU Campus. A perfect purchase for first time buyers and an ideal investment opportunity with high annual rental yield', '70x100', 1, 1, 1, NULL, 116900, '2019-12-02', 0),
(19, '29 Riverbank Hall, Addison Park, Glasnevin', 'Dublin 114564564546', 523986, 1, 1, 1700, 1, 1000, 'A1', 'A winning combination of a superb address and perfectly positioned beautiful one bedroom 1st floor apartment set amidst impressive landscaped gardens. Tremendous thought and superb design were the key elements in creating the aesthetically pleasing mix of luxurious apartments. No. 29 Riverbank Hall is a spacious and well appointed first floor apartment that will not disappoint. Enjoying an enviable sunny orientation, flooded with natural light throughout the day. The accommodation briefly consists of entrance hall with storage cupboard, spacious lounge with double glazed French door leading to sunny balcony, fully fitted kitchen, bathroom & w.c. combined. Gas fired radiator central heating. Designated car space. Built in wardrobe in bedroom with double glazed French door to balcony. Conveniently located in the heart of Glasnevin. The commuting distance to city centre is short, close to shops, restaurants, Deli\'s, Creche and a wealth of local amenities. Easy access to M50, M1, Dublin Airport, DCU Campus. A perfect purchase for first time buyers and an ideal investment opportunity with high annual rental yield', '70x100', 1, 1, 1, '778954.jpg', 116900, '2019-12-03', 1),
(20, '6 Ashbrook Lawn, Ennis Road', 'Limerick', 377190, 2, 1, 4, 2, 2100, 'B2', 'This is a fine upstanding 4 bedroom semi detached property in Ashbrook, Ennis Road. All of the necessary component parts are in place to have a very comfortable family home in one of Limericks most popular residential areas. You are within comfortable walking distance of all necessary amenities of both a social, sporting and educational nature. There is a large green area almost directly in front of the property ensuring safe play from traffic and also the rear garden is South facing ensuring a plentiful supply of daylight and sunlight for those seeking relaxation to the rear of the property.', '70x200', 0, 4, 1, '377190.jpg', 179000, '2016-09-26', 1),
(21, '5 Donnybrook Close, Donnybrook', 'Dublin 8', 368089, 2, 1, 4, 1.5, 1800, 'C3', 'The property is built c.1989 and enjoys a particularly bright and well-appointed internal layout with emphasis being placed on space and light. Well maintained over the years the spacious interior offers great scope for the new purchaser to further enhance in creating the perfect town residence particularly ideal for down sizers or those simply looking for a well located and easily maintained home. A storm porch leads to the hall door which opens to the inviting hallway. A clever and effective design feature is the internal window from the hall through to the living room which draws the eye immediately to this gracious reception room complete with marble fireplace. The living room in turn has access to the rear patio area and garden via two sliding doors and also opens through to the dining room to the front of the house via glass panelled double doors. The kitchen is located off the living room and is bright with a range of fitted Siematic wall and floor units incorporating glass display cabinets, gold effect fitted towel rail, door knobs, recessed lighting, integrated appliances and tiled floor. The kitchen opens out to a carpeted tri-aspect bay enjoying the perfect orientation for capturing light throughout the day. It also provides a choice position for a dining table and chairs taking full advantage of the view of the delightful rear garden. There is a utility off the kitchen with access to the side passage. There is also a guest w.c. positioned off the hall.Located off the Stillorgan Road, on route into town, the driveway to this exclusive cul-de-sac is positioned between Airfield Park and Beaver Row. It is within walking distance of Donnybrook Village with its boutiques, selection of coffee shops and speciality food shops. This property is located truly in the heart of Dublin 4 with RTE Studios, Donnybrook Rugby Stadium, David Lloyd Riverview, UCD Belfield Campus, The Merrion SC and St Vincent`s Hospital literally all within easy walking distance. Transport is readily available with direct bus routes in and out of town.', '70x120', 1, 2, 5, '368089.jpg', 185900, '2019-09-30', 1),
(22, '65 Sarsfield Terrace, Off Richmond Hill', 'Cork', 132927, 2, 5, 5, 1.5, 1750, 'D1', 'Quality 10-year old home in a great location. Corner lot with plenty of space. Large two-tiered deck and inground pool.', '100x100', 2, 1, 2, '132927.jpg', 132900, '2019-09-14', 1),
(23, '36 Bulfin Road, Inchicore', 'Dublin 8', 493498, 5, 1, 3, 2, 1575, 'E1', 'Beautiful three bedroom mid terrace family home, with generous garden and west facing orientation. The house enjoys an excellent situation set back from the Bulfin Road. To the front of the house is a well maintained garden, which could easily be modified to accommodate off street parking. On entering there is a wide hallway with a living room to the right hand side. This is a bright room with a feature fireplace and solid wooden floors. Further down the hallway is a second living room, which is a generous space that looks out to an attractive back garden. At the end of the hallway is a kitchen extension which accommodates a dining space and access the back garden. The back garden is beautifully maintained with evergreen trees providing privacy. The house is well located between Inchicore and Kilmainham Villages. Both villages are a hive of activity with coffees shops, bakeries and convenience stores. The house is well served by public transport; with the Goldenbridge LUAS stop only a five minute walk away and a Dublin Bike station down the road.', '80x110', 2, 1, 5, '493498.jpg', 139900, '2016-06-16', 1),
(26, '56 Aisling Heights, Raheen', 'Limerick', 466794, 2, 1, 4, 1.5, 1775, 'C2', 'Convenience is the name of this home\'s game. Close to work and fun. Maintenance free exterior and updated interior. Move-in ready.', '120x150', 2, 1, 3, '466794.jpg', 139500, '2019-10-14', 1),
(27, 'The Cresent, Kilminchy', 'Portlaoise', 141036, 2, 2, 4, 2, 1400, 'B1', 'LIT Realty is pleased to welcome this property to the sales market. This family home is located with walking distance to all amenities. This property comprises of four bedrooms (3 double rooms) master bedroom with ensuite, large family bathroom, kitchen, dining room & sitting room to the front of the property. Please call to arrange an appointment. ', '60x60', 2, 1, 4, '141036.jpg', 159900, '2019-10-14', 1),
(29, '31 Friar Street', 'Cork', 424375, 2, 1, 4, 2, 2100, 'G', 'Looking for a gem of a property in Cork City Centre, where you can just move in and hang your hat ? Well look no more !! No. 31 Friar Street is a superbly presented and recently renovated two bedroom town house with a host of tasteful extras including top quality joinery finish, modern fitted kitchen and two double bedrooms each with their own en suite bathroom. ', '150x200', 3, 2, 2, '424375.jpg', 162900, '2019-08-01', 1),
(30, '27 Fortwilliam Demesne, Fortwilliam', 'Belfast', 491686, 3, 1, 3, 2, 1500, 'F', 'Great location close to Belfast City Centre. Leading schools all within the catchment area of the development. Located off the Antrim Road and just off Fortwilliam Park, we present to the market 27 Fortwilliam Demesne which is an immaculately presented detached four-bedroom property. This exclusive development was constructed in approx. 2006 and will be of instant appeal to both young professionals and families alike. The property is situated within a quiet area offering high levels of privacy. Sales in this development are few and far between making no.27 a must see for any house hunters looking in the BT15 locality.', '200x100', 2, 1, 5, '491686.jpg', 119900, '0000-00-00', 0),
(31, '10 Bloomfield, Monaleen', 'Limerick', 664622, 3, 1, 2, 1, 975, 'A2', 'A truly superb well laid out and beautifully maintained first floor apartment situated in this magnificent residential location immediately adjacent to The Newtown Shopping Centre, Castletroy College and Monaleen National School. Inspection very highly recommended.', '70x100', 1, 1, 1, '664622.jpg', 125900, '0000-00-00', 0),
(32, '12 Mount Rochfort Close', 'Co. Dublin', 854605, 8, 1, 4, 1.5, 2000, 'B2', 'Hardwood trim throughout. This is a real gem. Three-seasons back porch, large yard, finished basement, and third-floor office make this a winner!', '80x120', 1, 2, 2, '854605.jpg', 279900, '0000-00-00', 0),
(45, 'fgd', 'fgd', 44, 1, 1, 4544, 44, 44, '1', 'dfgdf', '44', 44, 1, 5, '44.jpg', 44545, '2019-11-18', 1),
(44, 'a', 'dfgdf', 34, 1, 1, 34, 34, 34, '1', 'ergdf', '34', 34, 1, 0, NULL, 34, '2019-11-18', 1),
(28, '46 Newtown Park, Annacotty', 'Limerick', 874524, 1, 2, 3, 2, 780, 'A3', 'No. 46 Newtown Park is a stunning three bed duplex townhouse offering style and light throughout. The space on offer in this property is exceptional and is replicated throughout both floors. Enjoying an unbeatable cul de sac location situated within a small exclusive enclave of mature residential properties, which offers a wonderful peaceful setting, yet is within striking distance of a wealth of amenities. Newtown Park is a particularly well maintained development and creates a wonderful first impression as the grounds and complex are beautifully presented throughout. The property further benefits from off street allocated parking.Newtown Park is nestled in the surroundings of beautifully landscaped gardens and large open green areas. The development comprises a mix of superbly designed and exceptionally spacious family homes, with duplex and ground level apartments to the rear. Newtown Shopping Centre, which includes a Mace, a hairdresser, bar, restaurants and a pharmacy is just around the corner as is the Crescent College (secondary). The University of Limerick and access to M7 is a short drive away.All in all, No 46 is sure to appeal to many a discerning buyer from first time buyers, professionals, to astute investors seeking a strong rental income, with a minimal undertaking of time and effort.', '85x80', 3, 2, 2, '874524.jpg', 180000, '0000-00-00', 0),
(41, 'dd', 'd', 2, 1, 1, 2, 2, 2, 'd', 'ed', 'd', 3, 1, NULL, '2.jpg', 2, '2019-11-01', 1),
(42, 'dd', 'd', 2, 2, 2, 2, 2, 2, 'd', 'dd', 'd', 3, 2, NULL, '2.jpg', 2, '2019-11-01', 1),
(43, 'dd', 'yy', 2, 5, 1, 2, 2, 2, 'd', 'tyyt', 't', 3, 2, NULL, '2.jpg', 2, '2019-11-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `propertytypes`
--

CREATE TABLE `propertytypes` (
  `typeId` int(11) NOT NULL,
  `pType` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `propertytypes`
--

INSERT INTO `propertytypes` (`typeId`, `pType`) VALUES
(1, 'Residential-single'),
(2, 'Residential-multi'),
(3, 'Commercial');

-- --------------------------------------------------------

--
-- Table structure for table `styles`
--

CREATE TABLE `styles` (
  `styleId` int(11) NOT NULL,
  `pStyle` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `styles`
--

INSERT INTO `styles` (`styleId`, `pStyle`) VALUES
(1, 'Bungalow'),
(2, 'Semi Detached'),
(3, 'Detached '),
(4, 'Cottage'),
(5, 'Terrace'),
(8, 'Duplex'),
(9, 'Condo'),
(10, 'Apartment'),
(11, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendorId` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendorId`, `name`, `phone`, `email`) VALUES
(1, 'Brendan Ahern', '02303923', '3333@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`agentId`),
  ADD KEY `agentId` (`agentId`);

--
-- Indexes for table `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `listingNum` (`listingNum`),
  ADD KEY `vendorid` (`vendorid`);

--
-- Indexes for table `garagetypes`
--
ALTER TABLE `garagetypes`
  ADD PRIMARY KEY (`garageId`),
  ADD KEY `garageId` (`garageId`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `listingNum` (`listingNum`),
  ADD KEY `vendorid` (`vendorid`);

--
-- Indexes for table `propertytypes`
--
ALTER TABLE `propertytypes`
  ADD PRIMARY KEY (`typeId`),
  ADD KEY `typeId` (`typeId`);

--
-- Indexes for table `styles`
--
ALTER TABLE `styles`
  ADD PRIMARY KEY (`styleId`),
  ADD KEY `styleId` (`styleId`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendorId`),
  ADD KEY `vendorId` (`vendorId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `agentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `archive`
--
ALTER TABLE `archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `garagetypes`
--
ALTER TABLE `garagetypes`
  MODIFY `garageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `propertytypes`
--
ALTER TABLE `propertytypes`
  MODIFY `typeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `styles`
--
ALTER TABLE `styles`
  MODIFY `styleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
