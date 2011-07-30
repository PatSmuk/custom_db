-- 002_scripts.sql

-- Database: scripts
-- Tables affected: level_npc_items, level_npc_players
-- Description: table structures and data for the leveling NPC
-- Authors: Wolfy
-- Date: July 7th, 2011, July 29th, 2011 (r2)
-- Changelog:
--  - r2: drop primary key from level_npc_players, change items to level 30 items, do not drop level_npc_players at each execution

DROP TABLE IF EXISTS `level_npc_items`;
CREATE TABLE `level_npc_items` (
  `class` tinyint(3) NOT NULL,
  `itemId` mediumint(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `level_npc_items` (`class`, `itemId`) VALUES
-- Warrior
(1, 3186),
(1, 3849),
(1, 6599),
(1, 7915),
(1, 15551),
(1, 9868),
(1, 4076),
(1, 7418),
(1, 6404),
(1, 15571),
(1, 15566),
(1, 12009),
(1, 9860),
(1, 15285),

-- Paladin
(2, 3851),
(2, 7915),
(2, 15551),
(2, 9868),
(2, 4076),
(2, 7418),
(2, 6404),
(2, 15571),
(2, 15566),
(2, 12009),
(2, 9860),

-- Hunter
(3, 3850),
(3, 3850),
(3, 3210),
(3, 3041),
(3, 15285),
(3, 4048),
(3, 6607),
(3, 15343),
(3, 4051),
(3, 6396),
(3, 15127),
(3, 9827),
(3, 15351),
(3, 12009),
(3, 9860),

-- Rogue -- NEEDS CHANGING
(4, 7407),
(4, 4055),
(4, 6408),
(4, 10406),
(4, 4054),
(4, 15140),
(4, 15349),
(4, 6410),
(4, 12248),
(4, 12248),
(4, 12009),
(4, 9860),

-- Priest
(5, 6610),
(5, 9853),
(5, 11985),
(5, 14200),
(5, 7367),
(5, 7368),
(5, 9845),
(5, 9846),
(5, 14211),
(5, 9847),
(5, 3185),
(5, 11290),

-- Shaman
(7, 7407),
(7, 15142),
(7, 14583),
(7, 14584),
(7, 7414),
(7, 14587),
(7, 15148),
(7, 15143),
(7, 11985),
(7, 9860),
(7, 15225),
(7, 15543),

-- Mage
(8, 6610),
(8, 9853),
(8, 11985),
(8, 14200),
(8, 7367),
(8, 7368),
(8, 9845),
(8, 9846),
(8, 14211),
(8, 9847),
(8, 3185),
(8, 11290),

-- Warlock
(9, 6610),
(9, 9853),
(9, 11985),
(9, 14200),
(9, 7367),
(9, 7368),
(9, 9845),
(9, 9846),
(9, 14211),
(9, 9847),
(9, 3185),
(9, 11290),

-- Druid
(11, 7407),
(11, 15142),
(11, 14583),
(11, 14584),
(11, 7414),
(11, 14587),
(11, 15148),
(11, 15143),
(11, 11985),
(11, 9860),
(11, 3185);

CREATE TABLE IF NOT EXISTS `level_npc_players` (
  `guid` int(11) NOT NULL COMMENT 'The player''s GUID'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table stores all players who have used the leveling NPC';

REPLACE INTO `gossip_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `comment`) VALUES
(-3999001, 'Sure, count me in!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_LEVEL');