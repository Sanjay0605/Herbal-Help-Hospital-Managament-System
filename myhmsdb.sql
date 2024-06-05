-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 08:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL,
  `medrec` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`, `medrec`) VALUES
(4, 1, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-14', '10:00:00', 1, 0, ''),
(4, 2, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-02-28', '10:00:00', 0, 1, ''),
(4, 3, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Amit', 1000, '2020-02-19', '03:00:00', 0, 1, ''),
(11, 4, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'ashok', 500, '2020-02-29', '20:00:00', 1, 1, ''),
(4, 5, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-02-28', '12:00:00', 1, 1, ''),
(4, 6, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-26', '15:00:00', 0, 1, ''),
(2, 8, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'Ganesh', 550, '2020-03-21', '10:00:00', 1, 1, ''),
(5, 9, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'Ganesh', 550, '2020-03-19', '20:00:00', 1, 0, ''),
(4, 10, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '0000-00-00', '14:00:00', 1, 0, ''),
(4, 11, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-03-27', '15:00:00', 1, 1, ''),
(9, 12, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Kumar', 800, '2020-03-26', '12:00:00', 1, 1, ''),
(9, 13, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Tiwary', 450, '2020-03-26', '14:00:00', 1, 1, ''),
(13, 14, 'kiran', 'lal', 'Male', 'kiran@gmail.com', '8765432915', 'ashok', 500, '2024-02-24', '10:00:00', 1, 1, ''),
(13, 15, 'kiran', 'lal', 'Male', 'kiran@gmail.com', '8765432915', 'Abbis', 1500, '2024-02-16', '12:00:00', 0, 1, ''),
(13, 16, 'kiran', 'lal', 'Male', 'kiran@gmail.com', '8765432915', 'Amit', 1000, '2024-02-28', '14:00:00', 1, 1, ''),
(14, 17, 'shashwat', 'hotani', 'Male', 'shashwat@gmail.com', '9208728020', 'Amit', 1000, '2024-03-01', '12:00:00', 1, 1, ''),
(13, 18, 'kiran', 'lal', 'Male', 'kiran@gmail.com', '8765432915', 'ashok', 500, '2024-04-11', '12:00:00', 1, 0, ''),
(14, 19, 'shashwat', 'hotani', 'Male', 'shashwat@gmail.com', '9208728020', 'ashok', 500, '2024-04-20', '14:00:00', 1, 1, ''),
(1, 20, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'ashok', 500, '2024-04-17', '12:00:00', 1, 1, ''),
(2, 21, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'ashok', 500, '2024-04-18', '08:00:00', 1, 1, ''),
(6, 22, 'Sushant', 'Singh', 'Male', 'sushant@gmail.com', '9059986865', 'ashok', 500, '2024-04-20', '10:00:00', 1, 1, ''),
(19, 23, 'sanjana', 'patwari', 'Female', 'sanjana@gmail.com', '9880275680', 'ashok', 500, '2024-04-20', '08:00:00', 1, 1, ''),
(22, 24, 'rohanlal', 'lal', 'Male', 'rohanlal@gmail.com', '2984727718', 'ashok', 500, '2024-05-03', '12:00:00', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anu', 'anu@gmail.com', '7896677554', 'Hey Admin'),
(' Viki', 'viki@gmail.com', '9899778865', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aakash', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('Karthick', 'karthi@gmail.com', '9898989898', 'Good service'),
('Abbis', 'abbis@gmail.com', '8979776868', 'Love your service'),
('Asiq', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('ashok', 'ashok123', 'ashok@gmail.com', 'General', 500),
('arun', 'arun123', 'arun@gmail.com', 'Cardiologist', 600),
('Dinesh', 'dinesh123', 'dinesh@gmail.com', 'General', 700),
('Ganesh', 'ganesh123', 'ganesh@gmail.com', 'Pediatrician', 550),
('Kumar', 'kumar123', 'kumar@gmail.com', 'Pediatrician', 800),
('Amit', 'amit123', 'amit@gmail.com', 'Cardiologist', 1000),
('Abbis', 'abbis123', 'abbis@gmail.com', 'Neurologist', 1500),
('Tiwary', 'tiwary123', 'tiwary@gmail.com', 'Pediatrician', 450),
('ashish', 'ashish123', 'ashish@gmail.com', 'General', 900),
('Vivek', 'vivek1234', 'vivek@gmail.com', 'Cardiologist', 900),
('Aniket', 'aniket123', 'aniket@gmail.com', 'Cardiologist', 550),
('Parth', '$2y$10$zZ5RJ3H8Do5aBVz7cslbO.MSCfQgd/50hSbZu/kb7rIJ7eTn89Mye', 'parth@gmail.com', 'Neurologist', 900),
('Goutham', '$2y$10$PMyGYozB9/gZgyj7ZN0Kb.FcfDKrNCsETtzPef4KwvtuSzA3d/jw2', 'goutham@gmail.com', 'Neurologist', 700),
('Sita', '$2y$10$zmfZTkpftd8nR1uLViQOCOc4sJpEARfvCILrzTN4sm5Zy383IUPFa', 'sita@gmail.com', 'Cardiologist', 600),
('avinash', '$2y$10$glP7k6MgOS8hVfEChS.q.eGMzp6WL8JMCP2c/r6WGkm4CqKp1Q3/e', 'avinash@gmail.com', 'Neurologist', 750),
('wakir', '$2y$10$vtMa3y4KOaZNNGyHN8UxCe/XKJvzPBN1WIZo3ppNGMus3c8zjx4gW', 'wakir@gmail.com', 'Pediatrician', 800),
('zakir', '$2y$10$WsOwO9qabhhsPomAM2RmRu7/qOYh2.W8XeVUDqtgfnqydRq3pUTF6', 'zakir@gmail.com', 'Neurologist', 900),
('seema', '$2y$10$ZCGm74i2pgPuIUrLk0Ah1.ax0KTYxTze.nHRkun/Po2a39f7qAmMi', 'seema@gmail.com', 'Cardiologist', 200),
('sima', '$2y$10$d8sFsEgYgKH52YLJ8S.mf.qqeDY3sQoXcGQzNzb626bNRcskhGooK', 'sima@gmail.com', 'Neurologist', 600);

-- --------------------------------------------------------

--
-- Table structure for table `herb`
--

CREATE TABLE `herb` (
  `hid` int(11) NOT NULL,
  `ingredient` varchar(250) NOT NULL,
  `localname` varchar(100) NOT NULL,
  `sciname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `herb`
--

INSERT INTO `herb` (`hid`, `ingredient`, `localname`, `sciname`) VALUES
(1, 'garlic cloves', 'lehsun', 'allium sativum'),
(2, 'cumin', 'Jeera', 'Cuminium '),
(3, 'Basil leaves', 'tulsi', 'ocimum sanctum'),
(4, 'fenugreek seeds', 'methi dana', 'trigonella foenum-graecum'),
(5, 'aloe vera ', 'gheekumari', 'aloebarbadensis miller'),
(6, 'amla', 'amla', 'Phyllanthus emblica'),
(7, 'coconut oil', 'nariyal thel', 'Cocos nucifera'),
(8, 'Chamomile', 'babune', 'Matricaria chamomilla'),
(9, 'Peppermint', 'Pudina', 'Mentha piperita'),
(10, 'Lavender', 'Bursera', 'Lavandula angustifolia'),
(11, 'Milk', 'doodh', 'Bos taurus'),
(12, 'Turmeric', 'Haldi', 'Curcuma Longa'),
(13, 'ashwagandha', 'ashwagandha', 'Withania somnifera'),
(14, 'Cashew leaves\r\n', 'Kaju', 'Anacardium occidentale L.'),
(15, 'Pistachio', 'Pista', 'Pistacia vera L.'),
(16, 'Nutgall tree ', 'Nutgall ', 'Rhus javanica L.'),
(17, 'Vishaphala ', 'Vacha', 'Actaea spicata L.'),
(23, 'Honey', 'Shahed', 'Apis Mellifera'),
(34, 'Jasmine', 'Mogra', 'Jasminum spp.'),
(78, 'Lady Finger', 'Bhindi tori', 'Abelmoschus esculentus (L.) Moench');

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL,
  `medical_record` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`, `medical_record`) VALUES
(1, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', '9876543210', 'ram123', 'ram123', ''),
(2, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'alia123', 'alia123', ''),
(3, 'Shahrukh', 'khan', 'Male', 'shahrukh@gmail.com', '8976898463', 'shahrukh123', 'shahrukh123', ''),
(4, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'kishan123', 'kishan123', ''),
(5, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'gautam123', 'gautam123', ''),
(6, 'Sushant', 'Singh', 'Male', 'sushant@gmail.com', '9059986865', 'sushant123', 'sushant123', ''),
(7, 'Nancy', 'Deborah', 'Female', 'nancy@gmail.com', '9128972454', 'nancy123', 'nancy123', ''),
(8, 'Kenny', 'Sebastian', 'Male', 'kenny@gmail.com', '9809879868', 'kenny123', 'kenny123', ''),
(9, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'william123', 'william123', ''),
(10, 'Peter', 'Norvig', 'Male', 'peter@gmail.com', '9609362815', 'peter123', 'peter123', ''),
(11, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'shraddha123', 'shraddha123', '{\"pid\":\"11\",\"medication\":\"tyllenol\",\"condition\":\"sickness\",\"allergy\":\"a lot\",\"surgreq\":\"YES\"}'),
(12, 'sanj', 'p', 'Male', 'hello@gmail.com', '1234567891', 'hellohello', 'hellohello', ''),
(13, 'kiran', 'lal', 'Male', 'kiran@gmail.com', '8765432915', 'kiran123', 'kiran123', '{\"pid\":\"13\",\"medication\":\"paracetemol\",\"condition\":\"fever\",\"allergy\":\"pollen\",\"surgreq\":\"NO\"}'),
(14, 'shashwat', 'hotani', 'Male', 'shashwat@gmail.com', '9208728020', 'gmail123', 'gmail123', '{\"email\":\"shashwat@gmail.com\",\"medication\":\"tyllenol\",\"condition\":\"fever\",\"allergy\":\"pollen\",\"surgreq\":\"NO\"}'),
(16, 'srijan', 'patil', 'Male', 'srijan@gmail.com', '1234567234', 'srijan123', 'srijan123', NULL),
(17, 'samridhi', 'Makkar', 'Female', 'sama@gmail.com', '1234567282', 'sama123', 'sama123', NULL),
(18, 'Ram', 'Kumar', 'Male', 'ramam@gmail.com', '4323456543', 'hello12345', 'hello12345', NULL),
(19, 'sanjana', 'patwari', 'Female', 'sanjana@gmail.com', '9880275680', 'sanjana123', 'sanjana123', '{\"pid\":\"19\",\"medication\":\"xytelelone\",\"condition\":\"Hair Loss\",\"allergy\":\"none\",\"surgreq\":\"NO\"}'),
(20, 'uyuiyiuy', 'jhjhjhh', 'Male', 'sdfgb@gmail.com', '++++++++++', 't@BP5hMpexp', 't@BP5hMpexp', NULL),
(21, 'Rahul', 'Srivastava', 'Male', 'rahul@gmail.com', '3029281778', 'rahul123', 'rahul123', NULL),
(22, 'rohanlal', 'lal', 'Male', 'rohanlal@gmail.com', '2984727718', 'rohan123', 'rohan123', '{\"pid\":\"22\",\"medication\":\"rheteonol\",\"condition\":\"Hair Loss\",\"allergy\":\"None\",\"surgreq\":\"NO\"}');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time DEFAULT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Tiwary', 9, 13, 'William', 'Blake', '2020-03-26', NULL, 'Cough', 'Skin dryness', 'Intake fruits with more water content'),
('ashok', 13, 14, 'kiran', 'lal', '2024-02-24', NULL, 'high fever', 'twice a day', 'turmeric paste'),
('Amit', 14, 17, 'shashwat', 'hotani', '2024-03-01', NULL, 'fever', '5 times a day', 'sleep'),
('ashok', 14, 19, 'shashwat', 'hotani', '2024-04-20', NULL, 'Joint Pain', 'Thrice a day', 'Turmeric Paste'),
('ashok', 6, 22, 'Sushant', 'Singh', '2024-04-20', NULL, 'Headache', 'Apply as necessary', 'Peppermint Oil'),
('ashok', 2, 21, 'Alia', 'Bhatt', '2024-04-18', NULL, 'Acne', 'Twice a day', 'Tea Tree Oil'),
('ashok', 1, 20, 'Ram', 'Kumar', '2024-04-17', NULL, 'Diarrhea', 'Once a day', 'Jeera Water'),
('ashok', 11, 4, 'Shraddha', 'Kapoor', '2020-02-29', NULL, 'Hair Loss', 'Twice a week before hair wash', 'Lavender Oil'),
('', 11, 4, 'Shraddha', 'Kapoor', '2020-02-29', NULL, 'Hair Loss', 'Twice a week before hair wash', 'Lavender Oil'),
('', 11, 4, 'Shraddha', 'Kapoor', '2020-02-29', NULL, 'Hair Loss', 'Twice a week before hair wash', 'Lavender Oil'),
('', 11, 4, 'Shraddha', 'Kapoor', '2020-02-29', NULL, 'Hair Loss', 'Twice a week before hair wash', 'Lavender Oil'),
('ashok', 19, 23, 'sanjana', 'patwari', '2024-04-20', NULL, 'Hair Loss ', 'Twice everyday', 'Rosemary Oil'),
('ashok', 22, 24, 'rohanlal', 'lal', '2024-05-03', NULL, 'Hair Loss', 'Five times a day', 'Turmeric Paste ');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `rid` int(11) NOT NULL,
  `rname` varchar(50) NOT NULL,
  `ingredient` varchar(100) NOT NULL,
  `proced` varchar(500) NOT NULL,
  `videolink` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`rid`, `rname`, `ingredient`, `proced`, `videolink`) VALUES
(12, 'Jeera Tea', 'Jeera, Water', 'Soak cumin seeds overnight, strain, and drink the water in the morning.', 'https://www.youtube.com/watch?v=U1nrh977ng4'),
(13, 'Fenugreek Morning Boost', 'Fenugreek seeds', 'Soak fenugreek seeds overnight and consume them in the morning.', 'https://www.youtube.com/watch?v=F_SsLAMvFOs'),
(14, 'Aloe Wellness Elixir', 'aloe vera ', 'Extract gel from aloe vera leaves; apply topically or mix with water and consume.', 'https://www.youtube.com/watch?v=3RGtb11fDyg'),
(15, 'Triphala Tonic ', 'Amla, haritaki, bibhitaki', 'Mix equal parts of triphala powders and consume with water before bedtime.', 'https://www.youtube.com/watch?v=9rke10KnZPE'),
(16, 'Coconut Oil Detox', 'Coconut oil', 'Swish coconut oil in the mouth for 10-15 minutes; spit it', 'https://www.youtube.com/watch?v=h95fAV-SdDQ'),
(17, 'Chamomile Tea', 'Chamomile flowers, water', 'Steep chamomile flowers in hot water; drink before bedtime.', 'https://www.youtube.com/watch?v=0NDmI0BOCI4'),
(18, 'Tulsi Brew', 'Tulsi, water', 'Prepare Tulsi tea by boiling leaves in water; use in cooking or as a tea.', 'https://www.youtube.com/watch?v=MklCtTD6DRU'),
(19, 'Peppermint oil', 'Peppermint ', 'Dilute oil, apply on temples, and massage for headache relief.', 'https://www.youtube.com/watch?v=UrXG9vzJJG0'),
(20, 'Lavender Oil', 'Lavender', 'Dilute oil, apply on temples, and massage for headache relief.', 'https://www.youtube.com/watch?v=6c3Tum8lOlc'),
(21, 'Neti Pot', 'Saline solution', 'Use a Neti Pot to rinse nasal passages with saline solution.', 'https://www.youtube.com/watch?v=i3E1zWP2JM4'),
(22, 'Tea Tree Relief', 'Tea Tree Oil', 'Mix tea tree oil with carrier oil and apply on affected areas.', 'https://youtu.be/-sFxuf9N6bo?si=Avp8Irih4_AY4M4L'),
(23, 'Okra Wellness Elixir', 'Ladyfinger(okra), water', 'Boil chopped okra in water, cool, and drink the slimy water for digestive relief.', 'https://youtube.com/shorts/vYeXRE8Qju0?si=2Y_bxYK42IifW7wS'),
(44, 'Honey Garlic Paste', 'Honey', 'Grind garlic and mix honey to make a paste. Apply it to throat.', 'https://youtu.be/QlueBClEsCg?si=dTI7406twbw6k3bO'),
(51, 'Turmeric Milk', 'Turmeric', 'Mix a teaspoon of turmeric in a glass of warm milk.', 'https://www.youtube.com/watch?v=L_F8VeK8VPQ'),
(87, 'Ginger Tea Elixir', 'Ginger, Tea leaves, Honey', 'Boil water with crushed ginger, add tea leaves, strain, and add honey if desired.', 'https://youtube.com/shorts/wP44a-jvBl0?si=WwafMRzQkfKWvhXp'),
(89, 'Honey Lemon Soother', 'Lemon, Tea, Honey', 'Mix honey and lemon in warm water or tea; consume as directed.', 'https://youtu.be/69Yw36oSILQ?si=2ZdhySWoeSXJimyR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `herb`
--
ALTER TABLE `herb`
  ADD PRIMARY KEY (`hid`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`rid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
