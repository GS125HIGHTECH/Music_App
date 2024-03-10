-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2024 at 08:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `music`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `ID` int(11) NOT NULL,
  `ALBUM_TITLE` varchar(100) NOT NULL,
  `ARTIST` varchar(100) NOT NULL,
  `YEAR` int(11) NOT NULL,
  `IMAGE_NAME` varchar(1000) NOT NULL,
  `DESCRIPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`ID`, `ALBUM_TITLE`, `ARTIST`, `YEAR`, `IMAGE_NAME`, `DESCRIPTION`) VALUES
(1, 'Abby Road', 'The Beatles', 1961, 'https://upload.wikimedia.org/wikipedia/en/4/42/Beatles_-_Abbey_Road.jpg', 'Abbey Road is the eleventh studio album by the English rock band the Beatles, released on 26 September 1969. It is the last album the group recorded,[2] although Let It Be was the last album completed before the band\'s break-up in April 1970.[3] It was mostly recorded in April, July, and August 1969, and topped the record charts in both the United States and the United Kingdom. A double A-side single from the album, \"Something\" / \"Come Together\", was released in October, which also topped the charts in the US.'),
(2, 'Bad', 'Michael Jackson', 1987, 'https://upload.wikimedia.org/wikipedia/en/thumb/5/51/Michael_Jackson_-_Bad.png/220px-Michael_Jackson_-_Bad.png', 'Bad is the seventh studio album by the American singer and songwriter Michael Jackson. It was released on August 31, 1987, by Epic Records. Written and recorded between 1984 and 1987, Bad was Jackson\'s third and final collaboration with the producer Quincy Jones. Jackson co-produced and composed all but two tracks, and adopted an edgier image and sound, departing from his signature groove-based style and falsetto. Bad incorporates pop, rock, funk, R&B, dance, soul, and hard rock styles, and incorporated new recording technology, including digital synthesizers. The lyrical themes include media bias, paranoia, racial profiling, romance, self-improvement, and world peace. The album features appearances from Siedah Garrett and Stevie Wonder.'),
(3, 'A Night at the Opera', 'Queen', 1975, 'https://upload.wikimedia.org/wikipedia/en/4/4d/Queen_A_Night_At_The_Opera.png', 'A Night at the Opera is the fourth studio album by the British rock band Queen, released on 21 November 1975 by EMI Records in the United Kingdom and Elektra Records in the United States. Produced by Roy Thomas Baker and Queen, it was reportedly the most expensive album ever recorded at the time of its release.'),
(4, 'Unapologetic', 'Rihanna', 2012, 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Unapologetic_-_Rihanna.png/220px-Unapologetic_-_Rihanna.png', 'Unapologetic is the seventh studio album by Barbadian singer Rihanna. It was released on 19 November 2012 by Def Jam Recordings and SRP Records. It was recorded between June and November 2012, during promotion of her sixth studio album, Talk That Talk (2011). As executive producer, Rihanna enlisted previous collaborators The-Dream, David Guetta, Chase & Status, and Stargate to work alongside new collaborators such as Parker Ighile, Mike Will Made It, and Labrinth. Unapologetic is primarily a pop, synth-pop, and R&B record that incorporates elements of hip hop, EDM, dubstep, rock and reggae in its production, merging the sound of her previous albums Talk That Talk (2011), Loud (2010) and Rated R (2009).'),
(5, 'The Marshall Mathers LP', 'Eminem', 2000, 'https://upload.wikimedia.org/wikipedia/en/thumb/6/69/The_Marshall_Mathers_LP_second_cover.jpg/220px-The_Marshall_Mathers_LP_second_cover.jpg', 'The Marshall Mathers LP is the third studio album by the American rapper Eminem, released on May 23, 2000, by Aftermath Entertainment and Interscope Records. The album was produced mostly by Dr. Dre and Eminem, along with the 45 King, the Bass Brothers, and Mel-Man. Recorded over a two-month period in several studios around Detroit, the album features more introspective lyricism, including Eminem\'s thoughts on his rise from rags to riches, the criticism of his music, and his estrangement from his family and wife. A transgressive work, it incorporates horrorcore and hardcore hip hop, while also featuring satirical songs. The album includes samples or appearances by Dido, RBX, Sticky Fingaz, Bizarre, Snoop Dogg, Xzibit, Nate Dogg, and D12.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
