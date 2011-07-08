-- 002_scripts.sql

-- Database: scripts
-- Tables affected: level_npc_items, level_npc_player
-- Description: table structures and data for the leveling NPC
-- Authors: Wolfy
-- Date: July 7th, 2011
-- Changelog:

DROP TABLE IF EXISTS `level_npc_items`;
CREATE TABLE `level_npc_items` (
  `class` tinyint(3) NOT NULL,
  `itemId` mediumint(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `level_npc_items` (`class`, `itemId`) VALUES
(2, 6579),
(1, 3231),
(1, 6545),
(1, 6576),
(1, 4800),
(1, 9810),
(1, 2868),
(1, 9813),
(1, 4706),
(1, 15269),
(1, 790),
(1, 15113),
(1, 5540),
(1, 3039),
(1, 4372),
(2, 6383),
(2, 6731),
(2, 9814),
(2, 9815),
(2, 6573),
(2, 2868),
(2, 6577),
(2, 9805),
(2, 3491),
(4, 820),
(4, 2078),
(4, 5319),
(4, 3313),
(4, 4788),
(4, 3314),
(4, 3315),
(4, 2899),
(4, 14561),
(5, 14157),
(5, 6569),
(5, 6513),
(5, 6568),
(5, 14374),
(5, 3647),
(5, 3066),
(5, 15526),
(5, 15224),
(5, 7558),
(5, 5211),
(7, 4575),
(7, 3195),
(7, 5319),
(7, 6552),
(7, 15305),
(7, 4788),
(7, 15310),
(7, 3314),
(7, 6553),
(7, 9775),
(7, 9777),
(8, 4437),
(8, 1769),
(8, 6531),
(8, 14174),
(8, 14168),
(8, 6540),
(8, 4699),
(8, 14166),
(9, 4437),
(9, 1769),
(9, 6531),
(9, 14174),
(9, 14168),
(9, 6540),
(9, 4699),
(9, 14166),
(8, 5211),
(9, 5211),
(11, 4575),
(11, 15313),
(11, 30505),
(11, 6709),
(11, 2312),
(11, 15308),
(11, 9777),
(3, 6584),
(3, 15313),
(3, 15329),
(3, 15117),
(3, 3057),
(3, 4794),
(3, 3058),
(3, 15526),
(3, 15269),
(3, 3039);

DROP TABLE IF EXISTS `level_npc_players`;
CREATE TABLE `level_npc_players` (
  `guid` int(11) NOT NULL COMMENT 'The player''s GUID',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table stores all players who have used the leveling NPC';

REPLACE INTO `gossip_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `comment`) VALUES
(-3999001, 'Sure, count me in!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_LEVEL');