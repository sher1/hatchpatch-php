-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2024 at 06:53 PM
-- Server version: 8.0.39-0ubuntu0.24.04.2
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hp-php`
--

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `file`, `description`) VALUES
(2, 'Joseph Smith&#39;s First Prayer', '/songs/joseph_smiths_first_satb.pdf', 'SATB'),
(3, 'Beauty Everywhere', '/songs/beauty_everywhere_satb.pdf', 'SATB'),
(4, 'Dearest Children&#44; God is Near You', '/songs/dearest_children_god_is_near_you_satb.pdf', 'SATB'),
(5, 'Jesus&#44; Savior&#44; Pilot Me', '/songs/jesus_savior_pilot_me_1satb.pdf', 'SATB'),
(6, 'Tell me the Stories of Jesus', '/songs/tell_me_the_stories_satb.pdf', 'SATB'),
(7, 'I Know That My Reedemer Lives', '/songs/i_know_that_my_redeemer_choir_satb_.pdf', 'SATB'),
(8, 'Abide with Me', '/songs/abide_with_mesatb_choir.pdf', 'SATB'),
(9, 'We Thank Thee O God For A Prophet', '/songs/we_thank_the_choir_satb.pdf', 'SATB'),
(10, 'Come Unto Jesus', '/songs/come_unto_jesus_satb.pdf', 'SATB'),
(11, 'Jesus Once Was a Little Child', '/songs/jesus_once_was_satb.pdf', 'SATB'),
(12, 'I Need thee Every Hour', '/songs/i_need_thee_every_hour_satb.pdf', 'SATB'),
(13, 'Did You Think to Pray?', '/songs/did_you_think_satb.pdf', 'SATB'),
(14, 'Did you think to pray?', '/songs/did_youthink_choir.pdf', 'SATB (Simplified)'),
(15, 'Come&#44; Come Ye Saints', '/songs/come_come_yesaints_choir.pdf', 'SATB'),
(16, 'Mary&#39;s Joseph', '/songs/marys_joseph_choir_satb.pdf', 'SATB'),
(17, 'Love At Home SATB', '/songs/love_at_home_satb.pdf', 'SATB'),
(18, 'This is the Christmas Story', '/songs/this_is_the_christmas_story_satb.pdf', 'SATB'),
(19, 'Christmas Primary Medley &#35;2 ', '/songs/primary_christmas_medley_2sop_altoduet.pdf', 'SA'),
(20, 'Christmas Primary Medley &#35;2', '/songs/satb_p_christmas_2.pdf', 'SATB'),
(21, 'Mary&#39;s Joseph', '/songs/mary%27s_joseph_ssa_1.pdf', 'SSA'),
(22, 'Jesus Once Was a Little Child', '/songs/jesus_once_duet_sa.pdf', 'SA'),
(23, 'I Know that My Redeemer Lives', '/songs/i_know_my_redeember_lives_vocal_solo.pdf', 'Vocal Solo'),
(24, 'Come Unto Jesus', '/songs/come_unto_jesus_vocal_solo.pdf', 'Vocal Solo'),
(25, 'Jesus Once Was a Little Child', '/songs/jesus_once_was_a_child_vocalsolo.pdf', 'Vocal Solo'),
(26, 'When I am Baptized ', '/songs/when_i_am_baptized_solo.pdf', 'Vocal Solo'),
(27, 'Love At Home', '/songs/love_at_home_vocal_solo.pdf', 'Vocal Solo'),
(28, 'Little Hands', '/songs/little_hands.pdf', 'High Solo'),
(29, 'Choose the Right', '/songs/choose_the_right_vocal_solo.pdf', 'Vocal Solo'),
(30, 'When I see His Face', '/songs/when_i_see_his_face.pdf', 'Vocal Solo'),
(31, 'He will come Again', '/songs/he_will_come_again_vocal_solo.pdf', 'Vocal Solo'),
(32, 'Fear not&#44; Little Flock', '/songs/fear_not_little_flock.pdf', 'Vocal Solo'),
(33, 'Feed My Sheep', '/songs/feed_my_sheep_vocal_solo.pdf', 'Vocal Solo'),
(34, 'Expect a Miracle', '/songs/expect_a_miracle_vocal_solo.pdf', 'Vocal Solo'),
(35, 'I Feel his love', '/songs/i_feel_his-love.pdf', 'Vocal Solo'),
(36, 'This is the Christmas Story', '/songs/this_is_the_christmas_story_vocal_solo.pdf', 'Vocal Solo'),
(37, 'Mary&#39;s Joseph', '/songs/mary_s_joseph_vocal_solo1.pdf', 'Vocal Solo'),
(38, 'I Feel his love', '/songs/i_feel_his-love.pdf', 'Vocal Solo'),
(39, 'When I kneel to Pray', '/songs/when_kneel_to_pray_easy.pdf', 'Simplified Hymns'),
(40, 'When I kneel to Pray', '/songs/when_kneel_to_pray.pdf', 'Vocal Solo'),
(41, 'I Am A Child of God', '/songs/i_am_a_child_of_god_violin.pdf', 'Violin Duet'),
(42, 'When I am Baptized', '/songs/when_i_am_baptized_solo.pdf', 'Primary Songs'),
(43, 'Jesus Once Was a Little Child', '/songs/jesus_once_was_a_child_vocalsolo.pdf', 'Primary Songs'),
(44, 'Choose the Right', '/songs/choose_the_right_vocal_solo.pdf', 'Primary Songs'),
(45, 'All Things Bright and Beautiful', '/songs/all_things_bright_children_solo.pdf', 'Primary Songs'),
(46, 'When Joseph went to Bethlehem', '/songs/when_joseph_went.pdf', 'Primary Christmas'),
(47, 'Primary Christmas Medley', '/songs/primary_christmas_medley.pdf', 'Primary Christmas'),
(48, 'Primary christmas Medley &#35;2', '/songs/prim_medley_2.pdf', 'Primary Christmas'),
(49, 'Little Hands', '/songs/little_hands_alto_solo.pdf', 'Alto Solo'),
(50, 'He will come again', '/songs/he_will_come_again_alto_solo.pdf', 'Alto Solo'),
(51, 'Love at home', '/songs/love_at_home-altosolo_0.pdf', 'Alto Solo'),
(52, 'Primary Christmas Medley 2', '/songs/primary_christmas_medley_2_0.pdf', 'Alto Christmas'),
(53, 'Mary&#39;s Joseph', '/songs/mary_s_joseph_solo_alto1.pdf', 'Alto Christmas'),
(54, 'Love At Home', '/songs/love_at_home_simplified_version_piano_solo.pdf', 'Simplified Piano'),
(55, 'Did You Think to Pray', '/songs/did_you_think_to_pray_simplified.pdf', 'Simplified Hymns'),
(56, 'We Thank Thee O God&#44; For a Prophet', '/songs/we_thank_thee_o_god_for_a_prophet_simplified.pdf', 'Simplified Hymns'),
(57, 'The Wise Man and the Foolish Man', '/songs/wise_man_foolish_man.pdf', 'Simplified Hymns'),
(58, 'Beauty Everywhere - Simplified Piano', '/songs/beauty_everywhere_piano_solo.pdf', 'Simplified Piano'),
(59, 'Baa Baa Black Sheep', '/songs/baa_baa_black_sheep_simplified.pdf', 'Simplified Songs for Fun');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
