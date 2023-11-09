-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2023 at 02:46 PM
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
-- Database: `elearning_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_profile_image` varchar(255) NOT NULL,
  `admin_full_name` varchar(255) NOT NULL,
  `admin_username` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `date_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_profile_image`, `admin_full_name`, `admin_username`, `admin_email`, `password_hash`, `date_created`) VALUES
(1, 'profile-icons/admin-icon-female.svg', 'Len Arlene', 'lenlenlen2003', 'lenlenlen2003@gmail.com', '$2y$10$YvesZ6U9mTgNGRnjrd7uhu5.X0z0dImdmQVDSFkbydiKhQmJji2na', '2023-11-02 08:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `course_thumbnail_image` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `course_instructor` varchar(255) DEFAULT NULL,
  `course_difficulty` varchar(255) NOT NULL,
  `course_description` text NOT NULL,
  `objectives` text NOT NULL,
  `course_date_creation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_thumbnail_image`, `course_name`, `course_instructor`, `course_difficulty`, `course_description`, `objectives`, `course_date_creation`) VALUES
(1, 'course_uploads/course_thumbnail/Infothumbnail.png', 'Introduction to Information Security', 'Juheart Galindo, Kaspersky', 'Beginner', 'The \"INFORMATION SECURITY\" course is tailored for deaf learners and focuses on safeguarding digital information. The course covers key aspects of information security, such as password protection, personal data security, recognizing and avoiding online scams, device and computer security, safe internet practices, malware and virus prevention, online identity and social media account protection, and secure communication through encryption.', 'These objectives encompass safeguarding personal data and passwords, recognizing and avoiding online scams, securing devices, promoting safe internet use, preventing malware, protecting online identities, and exploring secure communication and encryption.', '2023-11-02');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `enrollment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `enrollment_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`enrollment_id`, `user_id`, `course_id`, `enrollment_date`) VALUES
(1, 1, 1, '2023-11-02 00:56:35'),
(2, 2, 1, '2023-11-07 06:16:32');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_reading`
--

CREATE TABLE `lesson_reading` (
  `lesson_reading_id` int(11) NOT NULL,
  `lesson_reading_number` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `lesson_reading_title` varchar(255) DEFAULT NULL,
  `lesson_content` text DEFAULT NULL,
  `lesson_reading_date_creation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson_reading`
--

INSERT INTO `lesson_reading` (`lesson_reading_id`, `lesson_reading_number`, `course_id`, `lesson_reading_title`, `lesson_content`, `lesson_reading_date_creation`) VALUES
(1, 1, 1, 'IS Lesson Reading 1 - Top Tips for Online Privacy and Security', '<h3><strong>\"Top Tips for Online Privacy and Security\"</strong></h3><h4>Author: Sarah Johnson</h4><p><br></p><p>In today\'s digital age, safeguarding your online privacy and security is paramount. With so much of our lives conducted online, protecting your personal information is crucial.<u> Here are some top tips to help you stay safe in the digital realm</u></p><p><br></p><p><br></p><p><strong>Strong Passwords:</strong> Use unique, complex passwords for each of your online accounts. Avoid easily guessable information like birthdays or names. Consider using a reputable password manager to keep track of them.</p><p><strong>Two-Factor Authentication (2FA):</strong> Enable 2FA wherever possible. This adds an extra layer of security by requiring a second verification step, such as a text message or fingerprint, in addition to your password.</p><p><strong>Beware of Phishing</strong>: Be cautious when clicking on links or opening attachments in emails, especially if they seem suspicious. Phishing attempts often try to trick you into revealing sensitive information.</p><p><strong>Regular Software Updates:</strong> Keep your operating system, apps, and antivirus software up to date. Updates often include security patches that address vulnerabilities.</p><p><strong>Public Wi-Fi:</strong> Avoid conducting sensitive transactions or sharing personal information while on public Wi-Fi networks. Hackers can intercept data on unsecured networks.</p><p><strong>Privacy Settings:</strong> Review and adjust the privacy settings on your social media profiles. Limit the information you share publicly.</p><p><strong>Backup Your Data:</strong> Regularly back up important data to an external drive or cloud storage. In case of a security breach or data loss, you\'ll have a copy of your information.</p><p>By following these tips, you can significantly enhance your online privacy and security.</p>', '2023-11-07'),
(2, 2, 1, 'IS Lesson Reading 2 - Creating Strong and Secure Passwords', '<h3><strong>\"Creating Strong and Secure Passwords\"</strong></h3><p><br></p><p>Author: John Smith</p><p><br></p><p>One of the fundamental building blocks of online security is having strong and secure passwords. Your passwords act as the first line of defense against unauthorized access to your accounts. Here\'s how to create and manage robust passwords</p><p><br></p><p><strong>Uniqueness:</strong> Each password should be unique for each account you have. Reusing passwords across multiple accounts increases the risk of a security breach.</p><p><strong>Complexity:</strong> Use a combination of upper and lower case letters, numbers, and special characters in your passwords. Avoid easily guessable words or phrases.</p><p><strong>Length: </strong>Longer passwords are generally more secure. Aim for a minimum of 12 characters.</p><p><strong>Avoid Personal Information:</strong> Steer clear of using easily obtainable information like birthdays, names, or common words.</p><p><strong>Consider Passphrases: </strong>Passphrases are longer combinations of words or phrases. They can be easier to remember and highly secure. For example, \"BlueSky$RainyDay$2023!\"</p><p><strong>Password Manager:</strong> Consider using a reputable password manager to generate, store, and auto-fill complex passwords for your accounts.</p><p><strong>Regular Updates: </strong>Change your passwords periodically, especially if you suspect any security issues.</p><p><strong>Two-Factor Authentication (2FA):</strong> Whenever possible, enable 2FA for an added layer of security.</p><p>Remember, your password is your digital lock. Creating strong and unique passwords is a simple yet effective way to protect your online presence from cyber threats.</p>', '2023-11-07'),
(3, 3, 1, 'IS Lesson Reading 3 - Understanding the Importance of Strong Passwords', '<p><strong>Understanding the significance of strong passwords</strong> is crucial for information security.</p><p><br></p><p><u>Strong passwords act as a critical barrier between your personal data and potential threats. </u>They are your first line of defense against unauthorized access to your accounts, devices, and sensitive information. Without strong passwords, malicious actors can easily guess or crack weak ones, potentially leading to identity theft, data breaches, and financial losses.</p><p><br></p><p>Consider the implications of a weak password. For instance, imagine a scenario where an individual uses a password like <em>\"123456\" or \"password\"</em> for their email or online banking account. Such weak passwords can be easily guessed by hackers, putting the person\'s personal and financial information at risk. Discuss the potential consequences of weak password practices and why it\'s essential to take password security seriously.</p><p><br></p><p>Moreover, you can delve into the characteristics of strong passwords, emphasizing that they typically include a combination of upper and lower case letters, numbers, and special symbols. Encourage the participants to share their strategies for creating strong, memorable passwords.</p>', '2023-11-07');

-- --------------------------------------------------------

--
-- Table structure for table `lesson_video`
--

CREATE TABLE `lesson_video` (
  `lesson_video_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `lesson_video_title` varchar(255) DEFAULT NULL,
  `lesson_video_number` int(11) NOT NULL,
  `content_source` varchar(255) NOT NULL,
  `lesson_video_link` varchar(255) DEFAULT NULL,
  `lesson_video_transcription` text DEFAULT NULL,
  `lesson_video_date_creation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson_video`
--

INSERT INTO `lesson_video` (`lesson_video_id`, `course_id`, `lesson_video_title`, `lesson_video_number`, `content_source`, `lesson_video_link`, `lesson_video_transcription`, `lesson_video_date_creation`) VALUES
(1, 1, 'IS Lesson Video 1 - Internet Safety Tips for Your Online Security', 1, 'video_url', 'https://youtu.be/aO858HyFbKI?si=X0Jmi0Qpbs6ZxSmq', '<p>Sample Transcription here</p>', '2023-11-05'),
(2, 1, 'IS Lesson Video 2 - How to Create Strong and Secure Passwords', 2, 'video_url', 'https://youtu.be/aEmF3Iylvr4?si=lO6vJLTfRPm-1GTF', '<p>Sample Transcriptions here.</p>', '2023-11-05'),
(3, 1, 'IS Lesson Video 3 - Teach students to recognize phishing and scams', 3, 'video_url', 'https://www.youtube.com/watch?v=R12_y2BhKbE', '<p>Sample transcriptions here</p>', '2023-11-05');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_details`
--

CREATE TABLE `quiz_details` (
  `quiz_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `quiz_name` varchar(255) NOT NULL,
  `quiz_instructions` text NOT NULL,
  `passing_score` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_details`
--

INSERT INTO `quiz_details` (`quiz_id`, `course_id`, `quiz_name`, `quiz_instructions`, `passing_score`) VALUES
(1, 1, 'Quiz 1 - IS Lesson Video 1', 'Multiple choice', 5.00);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) DEFAULT NULL,
  `question_number` int(11) DEFAULT NULL,
  `question_text` varchar(255) DEFAULT NULL,
  `choice_A` varchar(255) DEFAULT NULL,
  `choice_B` varchar(255) DEFAULT NULL,
  `choice_C` varchar(255) DEFAULT NULL,
  `choice_D` varchar(255) DEFAULT NULL,
  `correct_answer` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_questions`
--

INSERT INTO `quiz_questions` (`quiz_question_id`, `quiz_id`, `question_number`, `question_text`, `choice_A`, `choice_B`, `choice_C`, `choice_D`, `correct_answer`) VALUES
(1, 1, 1, 'What is the primary purpose of strong passwords?', 'To make logging in faster', 'To protect your online accounts from unauthorized access', 'To increase internet speed', 'To access public Wi-Fi networks', 'B'),
(2, 1, 2, 'What does 2FA stand for?', 'Twice the Fun Algorithm', 'Two-Factor Authentication', 'Too Fast to Access', 'Two-Step Verification', 'B'),
(3, 1, 3, 'Why should you regularly back up your data?', 'To make your computer run faster', 'To free up storage space', 'In case of a security breach or data loss', 'To improve internet connectivity', 'C'),
(4, 1, 4, 'What is phishing?', 'A type of fish', 'A method for catching online scammers', 'An attempt to obtain sensitive information through deception', 'A type of computer virus', 'C'),
(5, 1, 5, 'Why is it important to review and adjust privacy settings on social media profiles?', 'To gain more followers', 'To post more often', 'To limit the information you share publicly', 'To increase your online presence', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `middle_initial` char(2) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `suffix` varchar(10) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `terms_accepted` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `profile_image`, `first_name`, `middle_initial`, `last_name`, `suffix`, `birthday`, `address`, `phone_number`, `email_address`, `username`, `password_hash`, `terms_accepted`, `created_at`) VALUES
(1, 'profile-icons/default-icon.svg', 'Arlene', 'C.', 'Obinguar', '', '2003-03-04', 'Santa Mesa, Manila', '09771300295', 'lenarlene111@gmail.com', 'lenarlene111', '$2y$10$fXbktvGdUZFY4VNLo7pzhO9lrldW0IczNUBixZr8QtRqbO4iEjzvS', 1, '2023-11-02 08:16:08'),
(2, 'profile-icons/default-icon.svg', 'melissa', 'A.', 'magbag', '', '2001-03-01', '112chesa', '09602813768', 'melissa@gmail.com', 'melissa', '$2y$10$8AK2xK0T3dYGNhQPQljcnucldZdzMnnqp8fZ72cF6Lsp0TV3oqFy.', 1, '2023-11-07 14:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `user_lesson_reading_progress`
--

CREATE TABLE `user_lesson_reading_progress` (
  `user_reading_progress_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `lesson_reading_id` int(11) DEFAULT NULL,
  `progress_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_lesson_reading_progress`
--

INSERT INTO `user_lesson_reading_progress` (`user_reading_progress_id`, `user_id`, `course_id`, `lesson_reading_id`, `progress_status`) VALUES
(1, 2, 1, 1, 1),
(2, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_lesson_video_progress`
--

CREATE TABLE `user_lesson_video_progress` (
  `user_video_progress_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `lesson_video_id` int(11) DEFAULT NULL,
  `progress_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_lesson_video_progress`
--

INSERT INTO `user_lesson_video_progress` (`user_video_progress_id`, `user_id`, `course_id`, `lesson_video_id`, `progress_status`) VALUES
(1, 2, 1, 1, 1),
(2, 2, 1, 2, 1),
(3, 1, 1, 1, 1),
(4, 1, 1, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`admin_username`),
  ADD UNIQUE KEY `email` (`admin_email`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `lesson_reading`
--
ALTER TABLE `lesson_reading`
  ADD PRIMARY KEY (`lesson_reading_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `lesson_video`
--
ALTER TABLE `lesson_video`
  ADD PRIMARY KEY (`lesson_video_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `quiz_details`
--
ALTER TABLE `quiz_details`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`quiz_question_id`),
  ADD KEY `fk_quiz_id` (`quiz_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_lesson_reading_progress`
--
ALTER TABLE `user_lesson_reading_progress`
  ADD PRIMARY KEY (`user_reading_progress_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `lesson_reading_id` (`lesson_reading_id`);

--
-- Indexes for table `user_lesson_video_progress`
--
ALTER TABLE `user_lesson_video_progress`
  ADD PRIMARY KEY (`user_video_progress_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `lesson_video_id` (`lesson_video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lesson_reading`
--
ALTER TABLE `lesson_reading`
  MODIFY `lesson_reading_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lesson_video`
--
ALTER TABLE `lesson_video`
  MODIFY `lesson_video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `quiz_details`
--
ALTER TABLE `quiz_details`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_lesson_reading_progress`
--
ALTER TABLE `user_lesson_reading_progress`
  MODIFY `user_reading_progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_lesson_video_progress`
--
ALTER TABLE `user_lesson_video_progress`
  MODIFY `user_video_progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `lesson_reading`
--
ALTER TABLE `lesson_reading`
  ADD CONSTRAINT `lesson_reading_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `lesson_video`
--
ALTER TABLE `lesson_video`
  ADD CONSTRAINT `lesson_video_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `quiz_details`
--
ALTER TABLE `quiz_details`
  ADD CONSTRAINT `quiz_details_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD CONSTRAINT `fk_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `quiz_details` (`quiz_id`);

--
-- Constraints for table `user_lesson_reading_progress`
--
ALTER TABLE `user_lesson_reading_progress`
  ADD CONSTRAINT `user_lesson_reading_progress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `user_lesson_reading_progress_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `user_lesson_reading_progress_ibfk_3` FOREIGN KEY (`lesson_reading_id`) REFERENCES `lesson_reading` (`lesson_reading_id`);

--
-- Constraints for table `user_lesson_video_progress`
--
ALTER TABLE `user_lesson_video_progress`
  ADD CONSTRAINT `user_lesson_video_progress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `user_lesson_video_progress_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `user_lesson_video_progress_ibfk_3` FOREIGN KEY (`lesson_video_id`) REFERENCES `lesson_video` (`lesson_video_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
