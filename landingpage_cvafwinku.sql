-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2024 at 11:55 PM
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
-- Database: `landingpage_cvafwinku`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `facebook_URL` varchar(255) DEFAULT NULL,
  `instagram_URL` varchar(255) DEFAULT NULL,
  `whatsapp_URL` varchar(255) DEFAULT NULL,
  `twitter_URL` varchar(255) DEFAULT NULL,
  `email_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id_contact`, `id_users`, `logo`, `phone_number`, `description`, `facebook_URL`, `instagram_URL`, `whatsapp_URL`, `twitter_URL`, `email_name`) VALUES
(1, 1, 'logo.png', '0857 4178 4469', 'If you’re interested in collaborating or have any questions, feel free to reach out via email or\r\n                        on social media. I’m ready to help create engaging presentation designs!', 'https://www.facebook.com/profile.php?id=100093835693413', 'https://www.instagram.com/avin.fsr___/?next=%2F', 'https://wa.me/6285741784469?text=Halo%20saya%20ingin%20bertanya', 'https://x.com/pikfvoijau', 'afw@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id_experience` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `image_URL` varchar(255) NOT NULL,
  `years_experience` varchar(255) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id_experience`, `id_users`, `image_URL`, `years_experience`, `description`) VALUES
(1, 1, 'Chinese office.jpg', '2015 - 2017', 'I spent three years working at a leading company in Chinese, where I developed my skills\r\n                                in\r\n                                presentation design and communication. Collaborating with diverse teams, I created\r\n                                impactful\r\n                                presentations that effectively conveyed complex ideas. This experience enriched my\r\n                                professional journey and broadened my perspective on global design trends.'),
(2, 1, 'Trading office.jpg', '2017 - 2020', 'I worked for two years at a company in the cryptocurrency sector, specializing in\r\n                                presentation design. During this time, I created engaging and informative presentations\r\n                                to explain complex crypto concepts to clients and stakeholders. Using a creative\r\n                                approach, I helped the team convey innovative ideas and business strategies that\r\n                                supported the company’s growth.'),
(3, 1, 'Google office.jpg', '2017 - 2023', 'I worked at Google, specializing in presentation design. In this role, I created engaging\r\n                                and informative presentations for various teams and projects, ensuring messages were\r\n                                conveyed clearly and effectively. Through cross-departmental collaboration, I developed\r\n                                strong communication and creative skills, helping teams achieve their business goals\r\n                                with innovative and captivating designs.');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id_form` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id_form`, `email`, `message`, `created_at`) VALUES
(1, 'ada', 'adad', '2024-11-14 15:37:38'),
(2, 'ada', 'ada', '2024-11-14 15:37:51'),
(3, 'Afwinku01@gmail.com', 'qe', '2024-11-14 15:48:41'),
(4, 'Afwinku01@gmail.com', 'qe', '2024-11-14 15:48:46'),
(5, 'Afwinku01@gmail.com', 'halo guys', '2024-11-16 17:00:12'),
(6, '', 'halo guys', '2024-11-16 17:11:15'),
(7, 'faesarahman01@gmail.com', 'aegv', '2024-11-16 17:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id_portfolio` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `image_URL` varchar(255) NOT NULL,
  `title_portfolio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id_portfolio`, `id_users`, `image_URL`, `title_portfolio`) VALUES
(1, 1, 'Template design.png', 'Template Design'),
(2, 1, 'Office Design.png', 'Office Design'),
(3, 1, 'Marketing Design.png', 'Marketing Design'),
(4, 1, 'Proposal Design.png', 'Proposal Design'),
(5, 1, 'Infographic Design.png', 'Infographic Design'),
(6, 1, 'Transition Premium.png', 'Transition Premium');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id_profil` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `id_users` int(11) NOT NULL,
  `image_URL` varchar(255) NOT NULL,
  `two_name` varchar(255) NOT NULL,
  `job` varchar(255) NOT NULL,
  `facebook_URL` varchar(1000) DEFAULT NULL,
  `whatsapp_URL` varchar(1000) DEFAULT NULL,
  `instagram_URL` varchar(1000) DEFAULT NULL,
  `twitter_URL` varchar(1000) DEFAULT NULL,
  `bio` text NOT NULL,
  `full_name` varchar(500) NOT NULL,
  `birth` varchar(255) DEFAULT NULL,
  `email_name` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id_profil`, `logo`, `id_users`, `image_URL`, `two_name`, `job`, `facebook_URL`, `whatsapp_URL`, `instagram_URL`, `twitter_URL`, `bio`, `full_name`, `birth`, `email_name`) VALUES
(1, 'logo.png', 1, 'profil-picture1.png', 'AFWINKU FAESA R', 'Presentation Designer', 'https://www.facebook.com/profile.php?id=100093835693413', 'https://wa.me/6285741784469?text=Halo%20saya%20ingin%20bertanya', 'https://www.instagram.com/avin.fsr___/?next=%2F', 'https://x.com/pikfvoijau', 'Hi! I’m Faesa, a presentation designer with 7 years of experience. I help businesses and professionals communicate their ideas through clear and engaging slides. With a blend of creativity and strategic design, I ensure each presentation captivates the audience and achieves its purpose. Let’s make your presentations unforgettable!', 'Afwinku Faesa Rahman', 'Friday, 18 April 2008', 'afwinku01@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id_service` int(11) NOT NULL,
  `id_users` int(11) NOT NULL,
  `bio` varchar(1000) DEFAULT NULL,
  `icon_URL` varchar(255) NOT NULL,
  `title_servis` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id_service`, `id_users`, `bio`, `icon_URL`, `title_servis`, `description`) VALUES
(1, 1, 'With over seven years of experience in presentation design, I offer services that help businesses\r\n                    and professionals communicate their ideas effectively. I blend creativity and strategic thinking\r\n                    to create engaging and clear presentations. Ready to elevate your content and make it\r\n                    unforgettable!', 'Custom logo.png', 'Presentation Design', 'Engaging presentations that effectively communicate your ideas and captivate your\r\n                                audience.'),
(2, 1, 'With over seven years of experience in presentation design, I offer services that help businesses\r\n                    and professionals communicate their ideas effectively. I blend creativity and strategic thinking\r\n                    to create engaging and clear presentations. Ready to elevate your content and make it\r\n                    unforgettable!', 'Videografis logo.png', 'Visual Storytelling', 'Transforming complex concepts into clear, memorable visual narratives that resonate with\r\n                                viewers.'),
(3, 1, 'With over seven years of experience in presentation design, I offer services that help businesses\r\n                    and professionals communicate their ideas effectively. I blend creativity and strategic thinking\r\n                    to create engaging and clear presentations. Ready to elevate your content and make it\r\n                    unforgettable!', 'Template logo.png', 'Custom Template', 'Professionally designed templates tailored to your brand, ensuring consistency and ease\r\n                                of\r\n                                use.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_users` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `adress` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_users`, `name`, `adress`) VALUES
(1, 'Afwinku Faesa Rahman', 'RT.05, RT.08, Dusu Gundi, Desa Suruh, Kecamatan Suruh, Kabupaten Semarang, Jawa Tengah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`),
  ADD KEY `id_users` (`id_users`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id_experience`),
  ADD KEY `id_users` (`id_users`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id_form`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id_portfolio`),
  ADD KEY `id_users` (`id_users`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id_profil`),
  ADD KEY `id_users` (`id_users`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_service`),
  ADD KEY `id_users` (`id_users`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_users`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id_experience` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id_form` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id_portfolio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id_profil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id_service` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_users` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`) ON DELETE CASCADE;

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`) ON DELETE CASCADE;

--
-- Constraints for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD CONSTRAINT `portfolio_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`) ON DELETE CASCADE;

--
-- Constraints for table `profil`
--
ALTER TABLE `profil`
  ADD CONSTRAINT `profil_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`) ON DELETE CASCADE;

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_ibfk_1` FOREIGN KEY (`id_users`) REFERENCES `users` (`id_users`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
