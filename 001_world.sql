-- 001_world.sql

-- Database: world
-- Tables affected: playercreateinfo_spell, playercreateinfo_item, item_template (r2)
-- Description: gives all new players epic mounts
-- Authors: Wolfy
-- Date: January 2nd, 2011, February 5th, 2011 (r2)
-- Changelog:
--   - r2: fix item requirements on the mount so players < 60 can use it

DELETE FROM playercreateinfo_spell WHERE Spell IN ('33388', '33391');
INSERT INTO `playercreateinfo_spell` (`race`, `class`, `Spell`, `Note`) VALUES

('1', '1', '33388', 'Riding, rank 1'), ('1', '1', '33391', 'Riding, rank 2'),
('1', '2', '33388', 'Riding, rank 1'), ('1', '2', '33391', 'Riding, rank 2'),
('1', '4', '33388', 'Riding, rank 1'), ('1', '4', '33391', 'Riding, rank 2'),
('1', '5', '33388', 'Riding, rank 1'), ('1', '5', '33391', 'Riding, rank 2'),
('1', '8', '33388', 'Riding, rank 1'), ('1', '8', '33391', 'Riding, rank 2'),
('1', '9', '33388', 'Riding, rank 1'), ('1', '9', '33391', 'Riding, rank 2'),

('2', '1', '33388', 'Riding, rank 1'), ('2', '1', '33391', 'Riding, rank 2'),
('2', '3', '33388', 'Riding, rank 1'), ('2', '3', '33391', 'Riding, rank 2'),
('2', '4', '33388', 'Riding, rank 1'), ('2', '4', '33391', 'Riding, rank 2'),
('2', '7', '33388', 'Riding, rank 1'), ('2', '7', '33391', 'Riding, rank 2'),
('2', '9', '33388', 'Riding, rank 1'), ('2', '9', '33391', 'Riding, rank 2'),

('3', '1', '33388', 'Riding, rank 1'), ('3', '1', '33391', 'Riding, rank 2'),
('3', '2', '33388', 'Riding, rank 1'), ('3', '2', '33391', 'Riding, rank 2'),
('3', '3', '33388', 'Riding, rank 1'), ('3', '3', '33391', 'Riding, rank 2'),
('3', '4', '33388', 'Riding, rank 1'), ('3', '4', '33391', 'Riding, rank 2'),
('3', '5', '33388', 'Riding, rank 1'), ('3', '5', '33391', 'Riding, rank 2'),

('4', '1', '33388', 'Riding, rank 1'), ('4', '1', '33391', 'Riding, rank 2'),
('4', '3', '33388', 'Riding, rank 1'), ('4', '3', '33391', 'Riding, rank 2'),
('4', '4', '33388', 'Riding, rank 1'), ('4', '4', '33391', 'Riding, rank 2'),
('4', '5', '33388', 'Riding, rank 1'), ('4', '5', '33391', 'Riding, rank 2'),
('4', '11', '33388', 'Riding, rank 1'), ('4', '11', '33391', 'Riding, rank 2'),

('5', '1', '33388', 'Riding, rank 1'), ('5', '1', '33391', 'Riding, rank 2'),
('5', '4', '33388', 'Riding, rank 1'), ('5', '4', '33391', 'Riding, rank 2'),
('5', '5', '33388', 'Riding, rank 1'), ('5', '5', '33391', 'Riding, rank 2'),
('5', '8', '33388', 'Riding, rank 1'), ('5', '8', '33391', 'Riding, rank 2'),
('5', '9', '33388', 'Riding, rank 1'), ('5', '9', '33391', 'Riding, rank 2'),

('6', '1', '33388', 'Riding, rank 1'), ('6', '1', '33391', 'Riding, rank 2'),
('6', '3', '33388', 'Riding, rank 1'), ('6', '3', '33391', 'Riding, rank 2'),
('6', '7', '33388', 'Riding, rank 1'), ('6', '7', '33391', 'Riding, rank 2'),
('6', '11', '33388', 'Riding, rank 1'), ('6', '11', '33391', 'Riding, rank 2'),

('7', '1', '33388', 'Riding, rank 1'), ('7', '1', '33391', 'Riding, rank 2'),
('7', '4', '33388', 'Riding, rank 1'), ('7', '4', '33391', 'Riding, rank 2'),
('7', '8', '33388', 'Riding, rank 1'), ('7', '8', '33391', 'Riding, rank 2'),
('7', '9', '33388', 'Riding, rank 1'), ('7', '9', '33391', 'Riding, rank 2'),

('8', '1', '33388', 'Riding, rank 1'), ('8', '1', '33391', 'Riding, rank 2'),
('8', '3', '33388', 'Riding, rank 1'), ('8', '3', '33391', 'Riding, rank 2'),
('8', '4', '33388', 'Riding, rank 1'), ('8', '4', '33391', 'Riding, rank 2'),
('8', '5', '33388', 'Riding, rank 1'), ('8', '5', '33391', 'Riding, rank 2'),
('8', '7', '33388', 'Riding, rank 1'), ('8', '7', '33391', 'Riding, rank 2'),
('8', '8', '33388', 'Riding, rank 1'), ('8', '8', '33391', 'Riding, rank 2');

DELETE FROM playercreateinfo_item WHERE itemid = '19902';
INSERT INTO `playercreateinfo_item` (`race`, `class`, `itemid`, `amount`) VALUES 
('1', '1', '19902', '1'),
('1', '2', '19902', '1'),
('1', '4', '19902', '1'),
('1', '5', '19902', '1'),
('1', '8', '19902', '1'),
('1', '9', '19902', '1'),

('2', '1', '19902', '1'),
('2', '3', '19902', '1'),
('2', '4', '19902', '1'),
('2', '7', '19902', '1'),
('2', '9', '19902', '1'),

('3', '1', '19902', '1'),
('3', '2', '19902', '1'),
('3', '3', '19902', '1'),
('3', '4', '19902', '1'),
('3', '5', '19902', '1'),

('4', '1', '19902', '1'),
('4', '3', '19902', '1'),
('4', '4', '19902', '1'),
('4', '5', '19902', '1'),
('4', '11', '19902', '1'),

('5', '1', '19902', '1'),
('5', '4', '19902', '1'),
('5', '5', '19902', '1'),
('5', '8', '19902', '1'),
('5', '9', '19902', '1'),

('6', '1', '19902', '1'),
('6', '3', '19902', '1'),
('6', '7', '19902', '1'),
('6', '11', '19902', '1'),

('7', '1', '19902', '1'),
('7', '4', '19902', '1'),
('7', '8', '19902', '1'),
('7', '9', '19902', '1'),

('8', '1', '19902', '1'),
('8', '3', '19902', '1'),
('8', '4', '19902', '1'),
('8', '5', '19902', '1'),
('8', '7', '19902', '1'),
('8', '8', '19902', '1');

UPDATE item_template SET RequiredLevel = 1 WHERE entry = 19902;
