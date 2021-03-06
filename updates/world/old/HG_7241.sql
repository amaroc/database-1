DELETE FROM `script_waypoint` WHERE `entry`= '18956';
INSERT INTO `script_waypoint` VALUES
(18956,0,-154.648,160.766,0.010,0, ''),
(18956,1,-108.962,173.265,0.009,0, ''),
(18956,2,-76.542,167.338,0.011,0, ''),
(18956,3,-64.825,117.893,0.007,0, ''),
(18956,4,-35.280,100.856,0.007,0, ''),
(18956,5,1.840,97.970,0.009,0, ''),
(18956,6,43.308,62.320,0.008,0, ''),
(18956,7,38.143,4.074,0.008,0, ''),
(18956,8,-4.681,-0.093,0.006,0, '');
DELETE FROM creature WHERE id = '18956';
DELETE FROM gameobject WHERE guid IN ('3480880','222304');
INSERT INTO `gameobject` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
('222304', 183051, 556, 1, -158.003, 158.826, 0.0105987, 5.39804, 0, 0, 0.428266, -0.903653, 25, 0, 1);
UPDATE `creature_template` SET `npcflag` = '1' WHERE `entry` = '18956';
UPDATE `creature_template` SET `MovementType`='1' WHERE `entry`='18956';
UPDATE `quest_template` SET `ReqCreatureOrGOId2` = '18956' WHERE `entry`= '10097';
UPDATE `creature_template` SET `ScriptName` = 'npc_lakka' WHERE `entry` = '18956';
UPDATE `gameobject_template` SET `data2` = '396608' WHERE `entry` = '183051';
UPDATE `gameobject_template` SET `flags` = '4' WHERE `entry` = '183051';
INSERT INTO `script_texts` (`entry`,`content_default`,`content_loc1`,`content_loc2`,`content_loc3`,`content_loc4`,`content_loc5`,`content_loc6`,`content_loc7`,`content_loc8`,`sound`,`type`,`language`,`emote`,`comment`) VALUES
 (-1900253,'Well done! Hurry, though we don\'t want to be caught!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,''),
 (-1900254,'Thank you for freeing me, $n! I\'m going to make my way to Shattrath!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'');
