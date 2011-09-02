-- 002_scripts.sql

-- Database: scripts
-- Tables affected: level_npc_items, level_npc_players
-- Description: table structures and data for the leveling NPC
-- Authors: Wolfy
-- Date: July 7th, 2011, July 29th, 2011 (r2), September 2nd, 2011 (r3)
-- Changelog:
--  - r2: drop primary key from level_npc_players, change items to level 30 items, do not drop level_npc_players at each execution
--  - r3: additional options for the leveling NPC

DROP TABLE IF EXISTS `level_npc_items`;
CREATE TABLE `level_npc_items` (
  `class` tinyint(3) NOT NULL,
  `itemId` mediumint(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO level_npc_items VALUES
-- Warriors
(1,8142),
(1,12023),
(1,8144),
(1,8120),
(1,10775),
(1,8137),
(1,8139),
(1,8140),
(1,14945),
(1,14839),
(1,12012),
(1,7552),
(1,3430),
(1,2815),
(1,9401),
(1,7723),
(1,7726),
-- Paladins
(2,10763),
(2,12023),
(2,9971),
(2,8120),
(2,9966),
(2,9432),
(2,14905),
(2,10088),
(2,14945),
(2,10089),
(2,13095),
(2,12012),
(2,13026),
(2,7726),
(2,1722),
-- Hunters
(3,15602),
(3,12023),
(3,9411),
(3,8120),
(3,8189),
(3,9409),
(3,14782),
(3,6425),
(3,9933),
(3,15599),
(3,13095),
(3,12012),
(3,9401),
(3,9401),
(3,9426),
(3,13138),
-- Rogues
(4,15156),
(4,12023),
(4,9923),
(4,8120),
(4,7477),
(4,7534),
(4,10777),
(4,14652),
(4,15168),
(4,6431),
(4,7552),
(4,12012),
(4,10761),
(4,9401),
-- Priests
(5,7720),
(5,7722),
(5,9912),
(5,7533),
(5,10021),
(5,4045),
(5,10019),
(5,10771),
(5,14257),
(5,13100),
(5,12012),
(5,12012),
(5,7713),
(5,7714),
(5,7685),
(5,13064),

-- Shamans
(7,15602),
(7,12023),
(7,9411),
(7,8120),
(7,8189),
(7,9409),
(7,14782),
(7,6425),
(7,9933),
(7,15599),
(7,13095),
(7,12012),
(7,13026),
(7,7726),
-- Mages
(8,7720),
(8,7722),
(8,9912),
(8,7533),
(8,10021),
(8,4045),
(8,10019),
(8,10771),
(8,14257),
(8,13100),
(8,12012),
(8,12012),
(8,7713),
(8,7714),
(8,7685),
(8,13064),
-- Warlocks
(9,7720),
(9,7722),
(9,9912),
(9,7533),
(9,10021),
(9,4045),
(9,10019),
(9,10771),
(9,14257),
(9,13100),
(9,12012),
(9,12012),
(9,7713),
(9,7714),
(9,7685),
(9,13064),
-- Druids (feral)
(10,15156),
(10,12023),
(10,9923),
(10,8120),
(10,7477),
(10,7534),
(10,10777),
(10,14652),
(10,15168),
(10,6431),
(10,7552),
(10,12012),
(10,10761),
-- Druids (non-feral)
(11,8201),
(11,7722),
(11,13115),
(11,7533),
(11,7477),
(11,7534),
(11,10777),
(11,9916),
(11,14605),
(11,14599),
(11,12012),
(11,12012),
(11,7713);

CREATE TABLE IF NOT EXISTS `level_npc_players` (
  `guid` int(11) NOT NULL COMMENT 'The player''s GUID'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='This table stores all players who have used the leveling NPC';

REPLACE INTO `gossip_texts` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `comment`) VALUES
(-3999001, 'Sure, count me in!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_LEVEL'),
(-3999002, 'Sure, and I want to be feral!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_DRUID_FERAL'),
(-3999003, 'Yes, but I don''t want to be feral!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_DRUID_RESTO'),
(-3999004, 'Certainly, Gary.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'npc_leveling OPTION_TELEPORT');