-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2013 at 05:13 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `message`) VALUES
(1, 'adri', 'adri@da.com', 'adadadadadada'),
(2, 'adrian', 'admin@email.org', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(3, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(4, 'Carve', 'test@test.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(5, 'Carve', 'test@test.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(6, 'adrian', 'admin@email.org', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(7, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(8, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(9, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(10, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(11, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(12, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(13, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(14, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(15, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(16, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(17, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(18, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(19, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(20, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(21, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(22, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(23, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. '),
(24, 'name', 'adrian@carve.ro', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ornare purus eu turpis imperdiet vel lacinia nunc ultrices. Sed dictum, sapien non condimentum auctor, arcu nibh congue massa, ac auctor mi sapien fermentum nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus venenatis tristique dolor quis fermentum. Donec sagittis, augue et suscipit dignissim, lectus odio lobortis nisi, ut pellentesque nisi lorem blandit metus. Maecenas rhoncus elementum tortor, eget pretium massa iaculis nec. Integer fringilla pulvinar ante, in condimentum ligula tempor eget. Vestibulum nunc enim, fermentum sed mattis sollicitudin, gravida at turpis. Sed porta lectus vitae nulla eleifend vitae varius urna volutpat. ');

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
(4, 'testimonials', 'testimonials', '<h1 style="margin-right: 500px;">Testimonials</h1>\r\n					<form action="testimonial.php" method="post">\r\n						<label for="name">Name:</label><br/>\r\n						<input type="text" id="name" value="name" name="name"/><br/>\r\n						<label for="testimonial">Testimonial:</label><br/>\r\n						<textarea id="testimonial" value="testimonial" name="testimonial"></textarea><br/>\r\n						<input type="submit" value="Submit!"/>\r\n					</form>	'),
(5, 'contact', 'contact', '<h1 style="margin-right: 600px;">Contact</h1>\r\n					<form action="contact.php" method="post">\r\n						<label for="name">Name:</label><br/>\r\n						<input type="text" id="name" value="name" name="name"/><br/>\r\n						<label for="email">Email:</label><br/>\r\n						<input type="text" id="email" value="email" name="email"/><br/>\r\n						<label for="message">Message:</label><br/>\r\n						<textarea id="name" value="name" name="message"></textarea><br/>\r\n						<input type="submit" value="Submit!"/>\r\n					</form>');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `name` varchar(35) CHARACTER SET utf8 NOT NULL,
  `testimonial` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `published`, `name`, `testimonial`) VALUES
(1, 1, 'Gheorghe Ion', 'Very nice site!'),
(2, 1, 'Hello Kitty', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec facilisis turpis nec nisl porta commodo. Phasellus imperdiet massa id tellus. '),
(3, 0, 'Test Unpublished', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec facilisis turpis nec nisl porta commodo. Phasellus imperdiet massa id tellus. '),
(4, 1, 'Popescu Kitty', 'testimonialtestimonialtestimonialtestimonialtestimonialtestimonialtestimonial'),
(5, 0, 'Popescu Kitty', 'testimonialtestimonialtestimonialtestimonialtestimonialtestimonialtestimonial'),
(6, 0, 'Popescu Kitty', 'testimonialtestimonialtestimonialtestimonialtestimonialtestimonialtestimonial'),
(7, 0, 'Popescu Kitty', 'testimonialtestimonialtestimonialtestimonialtestimonialtestimonialtestimonial');

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
