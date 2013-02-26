-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2013 at 08:26 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `proceducms`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(20) CHARACTER SET utf8 NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`) VALUES
(1, 'adrian', 'adrian@carve.ro', 'mesaj');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) CHARACTER SET utf8 NOT NULL,
  `url_slug` varchar(20) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `url_slug`, `content`) VALUES
(1, 'home', 'home', '<div class="article">\r\n						<h1>Lorem Ipsum Dolor Sit Ameth.</h1>\r\n						<p><img class="left" src="images/thumb.jpg" alt=""/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas enim quam, aliquet quis tempus et, luctus feugiat leo. Fusce laoreet ornare velit non luctus. Pellentesque euismod malesuada mi, id consectetur quam volutpat a. In leo mi, porta at volutpat sagittis, volutpat et est. Nam tincidunt tincidunt tristique. Nunc sit amet luctus elit. Fusce aliquet dapibus ante eget dictum. Morbi eu luctus dui. Etiam metus nibh, laoreet ac facilisis vel, sagittis et ligula. Maecenas pulvinar justo id orci congue condimentum. Proin sagittis hendrerit ornare. Praesent vulputate elementum purus, nec vehicula mauris blandit ac. Pellentesque sodales volutpat mattis. Etiam suscipit imperdiet enim, nec tempus nisl lacinia in. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n					\r\n						<p>Sed lorem magna, dictum quis varius nec, auctor non nunc. Ut nibh odio, mollis sed sodales vitae, pulvinar ut magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas scelerisque ipsum vel dolor eleifend tincidunt. Duis viverra urna ut mauris auctor non interdum felis vulputate. Quisque vel diam dolor, in vehicula sapien. Donec aliquet ornare rhoncus.</p>\r\n					\r\n						<p>Sed lorem magna, dictum quis varius nec, auctor non nunc. Ut nibh odio, mollis sed sodales vitae, pulvinar ut magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas scelerisque ipsum vel dolor eleifend tincidunt. Duis viverra urna ut mauris auctor non interdum felis vulputate. Quisque vel diam dolor, in vehicula sapien. Donec aliquet ornare rhoncus.</p>\r\n					</div>\r\n					<div class="article">\r\n						<h1>Another article</h1>\r\n						<p><img class="left" src="images/thumb.jpg" alt=""/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas enim quam, aliquet quis tempus et, luctus feugiat leo. Fusce laoreet ornare velit non luctus. Pellentesque euismod malesuada mi, id consectetur quam volutpat a. In leo mi, porta at volutpat sagittis, volutpat et est. Nam tincidunt tincidunt tristique. Nunc sit amet luctus elit. Fusce aliquet dapibus ante eget dictum. Morbi eu luctus dui. Etiam metus nibh, laoreet ac facilisis vel, sagittis et ligula. Maecenas pulvinar justo id orci congue condimentum. Proin sagittis hendrerit ornare. Praesent vulputate elementum purus, nec vehicula mauris blandit ac. Pellentesque sodales volutpat mattis. Etiam suscipit imperdiet enim, nec tempus nisl lacinia in. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n					\r\n						<p>Sed lorem magna, dictum quis varius nec, auctor non nunc. Ut nibh odio, mollis sed sodales vitae, pulvinar ut magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas scelerisque ipsum vel dolor eleifend tincidunt. Duis viverra urna ut mauris auctor non interdum felis vulputate. Quisque vel diam dolor, in vehicula sapien. Donec aliquet ornare rhoncus.</p>\r\n					\r\n						<p>Sed lorem magna, dictum quis varius nec, auctor non nunc. Ut nibh odio, mollis sed sodales vitae, pulvinar ut magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas scelerisque ipsum vel dolor eleifend tincidunt. Duis viverra urna ut mauris auctor non interdum felis vulputate. Quisque vel diam dolor, in vehicula sapien. Donec aliquet ornare rhoncus.</p>\r\n					</div>'),
(2, 'about', 'about', '\r\n						<h1>About me.</h1>\r\n						<p><img class="left" src="images/thumb.jpg" alt=""/>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas enim quam, aliquet quis tempus et, luctus feugiat leo. Fusce laoreet ornare velit non luctus. Pellentesque euismod malesuada mi, id consectetur quam volutpat a. In leo mi, porta at volutpat sagittis, volutpat et est. Nam tincidunt </p>\r\n'),
(3, 'projects', 'projects', NULL),
(4, 'testimonials', 'testimonials', NULL),
(5, 'contact', 'contact', '<h1 style="margin-right: 600px;">Contact</h1>\r\n					<form action="contact.php" method="post">\r\n						<label for="name">Name:</label><br/>\r\n						<input type="text" id="name" value="name" name="name"/><br/>\r\n						<label for="email">Email:</label><br/>\r\n						<input type="text" id="email" value="email" name="email"/><br/>\r\n						<label for="message">Message:</label><br/>\r\n						<textarea id="name" value="name" name="message"></textarea><br/>\r\n						<input type="submit" value="Submit!"/>\r\n					</form>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET utf8 NOT NULL,
  `password` char(32) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin@email.org', '167dc44a97c5c37d34a5c527a8052187');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
