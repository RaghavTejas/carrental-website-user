
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE DATABASE IF NOT EXISTS `caab` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `caab`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `v_id` int(222) NOT NULL AUTO_INCREMENT,
  `cimage` varchar(222) NOT NULL,
  `cname` varchar(222) NOT NULL,
  `seat` varchar(222) NOT NULL,
  `price` varchar(222) NOT NULL,
  `comfort` varchar(222) NOT NULL,
  `fuel` varchar(222) NOT NULL,
  `gps` varchar(222) NOT NULL,
  `km` varchar(222) NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;




CREATE TABLE IF NOT EXISTS `admin_dir` (
  `a_id` int(222) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin_dir`
--

INSERT INTO `admin_dir` (`a_id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(222) NOT NULL AUTO_INCREMENT,
  `name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `Message` varchar(222) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `personal`
--

CREATE TABLE IF NOT EXISTS `personal` (
  `p_id`  int(222) NOT NULL AUTO_INCREMENT,
  `c_id` int(222) NOT NULL,
  `fname` varchar(222) NOT NULL,
  `lname` varchar(222) NOT NULL,
  `phone` int(222) NOT NULL,
  `cod` int(222) NOT NULL,
  `address` varchar(222) NOT NULL,
  `pickup` varchar(222) NOT NULL,
  `date` varchar(15) NOT NULL,
  `days` int(222) NOT NULL,
  `costperday` int(222) NOT NULL,
  `totalcost` int(222) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;


-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE IF NOT EXISTS `user_info` (
  `id` int(222) NOT NULL AUTO_INCREMENT,
  `name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `Dfrom` varchar(222) NOT NULL,
  `Dto` varchar(222) NOT NULL,
  `date` varchar(222) NOT NULL,
  `time` varchar(222) NOT NULL,
  `adult` varchar(222) NOT NULL,
  `child` varchar(222) NOT NULL,
  `text` text NOT NULL,
  `pack` varchar(222) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*create PROCEDURE statement*/
CREATE DEFINER=`root`@`localhost` PROCEDURE `book_detail`() NOT DETERMINISTIC CONTAINS SQL SQL SECURITY DEFINER SELECT p.p_id,p.c_id,a.cname,p.date,p.pickup,p.totalcost from personal p,admin a where p.c_id=a.v_id;