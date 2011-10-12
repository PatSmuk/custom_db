-- 002_scripts.sql

-- Database: scripts
-- Tables affected: level_npc_items, level_npc_players
-- Description: table structures and data for the leveling NPC
-- Authors: Wolfy
-- Date: July 7th, 2011, July 29th, 2011 (r2), September 2nd, 2011 (r3), September 7th, 2011 (r4), September 10th, 2011 (r5)
-- Changelog:
--  - r2: drop primary key from level_npc_players, change items to level 30 items, do not drop level_npc_players at each execution
--  - r3: additional options for the leveling NPC
--  - r4: new items for level 50
--  - r5: new items for level 60

DROP TABLE IF EXISTS `level_npc_items`;
CREATE TABLE `level_npc_items` (
  `class` tinyint(3) NOT NULL,
  `itemId` mediumint(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO level_npc_items VALUES
-- Warriors
(1, 16730),
(1, 16731),
(1, 16732),
(1, 16733),
(1, 16734),
(1, 16735),
(1, 16736),
(1, 16737),
(1, 2244),
(1, 13044),
(1, 18673),
(1, 18701),
(1, 18302),
(1, 11755),
-- Paladins
(2, 16722),
(2, 16723),
(2, 16724),
(2, 16725),
(2, 16726),
(2, 16727),
(2, 16728),
(2, 16729),
(2, 18321),
(2, 13167),
(2, 10835),
(2, 11991),
(2, 13283),
(2, 18317),
-- Hunters
(3, 16674),
(3, 16675),
(3, 16676),
(3, 16677),
(3, 16678),
(3, 16679),
(3, 16680),
(3, 16681),
(3, 13036),
(3, 13014),
(3, 13003),
(3, 13022),
(3, 13139),
(3, 18701),
(3, 18302),
(3, 11755),
-- Rogues
(4, 16707),
(4, 16708),
(4, 16709),
(4, 16710),
(4, 16711),
(4, 16712),
(4, 16713),
(4, 16721),
(4, 10828),
(4, 18310),
(4, 18701),
(4, 18302),
(4, 13177),
-- Priests
(5, 16690),
(5, 16691),
(5, 16692),
(5, 16693),
(5, 16694),
(5, 16695),
(5, 16696),
(5, 16697),
(5, 18048),
(5, 13261),
(5, 13534),
(5, 13283),
(5, 11991),
(5, 18317),
-- Shamans
(7, 16666),
(7, 16667),
(7, 16668),
(7, 16669),
(7, 16670),
(7, 16671),
(7, 16672),
(7, 16673),
(7, 13027),
(7, 17943),
(7, 13167),
(7, 10835),
(7, 18701),
(7, 18302),
(7, 18317),
-- Mages
(8, 16682),
(8, 16683),
(8, 16684),
(8, 16685),
(8, 16686),
(8, 16687),
(8, 16688),
(8, 16689),
(8, 23124),
(8, 13534),
(8, 13283),
(8, 11991),
(8, 18317),
-- Warlocks
(9, 16698),
(9, 16699),
(9, 16700),
(9, 16701),
(9, 16702),
(9, 16703),
(9, 16704),
(9, 16705),
(9, 23124),
(9, 13534),
(9, 13283),
(9, 11991),
(9, 18317),
-- Druids
(11, 16706),
(11, 16714),
(11, 16715),
(11, 16716),
(11, 16717),
(11, 16718),
(11, 16719),
(11, 16720),
(11, 18321),
(11, 13261),
(11, 18311),
(11, 13283),
(11, 18302),
(11, 18289);

CREATE TABLE IF NOT EXISTS `level_npc_players` (
  `guid` int(11) NOT NULL COMMENT 'The player''s GUID'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table stores all players who have used the leveling NPC';

REPLACE INTO `gossip_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `comment`) VALUES
(-3999001, 'Sure, count me in!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_LEVEL'),
(-3999002, 'Sure, and I want to be feral!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_DRUID_FERAL'),
(-3999003, 'Yes, but I don''t want to be feral!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_DRUID_RESTO'),
(-3999004, 'Certainly, Gary.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_TELEPORT'),
(-3999005, 'Sure, and I want to be holy specialized!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_PALA_HOLY'),
(-3999006, 'Yes, but I don''t want to be holy!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_PALA_NO_HOLY'),
(-3999007, 'Sure, and I want to be enhancement specialized!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_SHAM_ENH'),
(-3999008, 'Yes, but I don''t want to be enhancement!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_SHAM_NO_ENH');