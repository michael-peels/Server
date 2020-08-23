-- Everything is tradeable
UPDATE items SET nodrop = 1 WHERE nodrop = 0;

-- Remove defiant drops
UPDATE lootdrop_entries ld JOIN items i ON i.id =ld.item_id JOIN loottable_entries lt ON ld.lootdrop_id = lt.lootdrop_id SET ld.disabled_chance = ld.chance, ld.chance = 0  WHERE i.Name LIKE '%crude defiant%';
UPDATE lootdrop_entries ld JOIN items i ON i.id =ld.item_id JOIN loottable_entries lt ON ld.lootdrop_id = lt.lootdrop_id SET ld.disabled_chance = ld.chance, ld.chance = 0  WHERE i.Name LIKE '%simple defiant%';
UPDATE lootdrop_entries ld JOIN items i ON i.id =ld.item_id JOIN loottable_entries lt ON ld.lootdrop_id = lt.lootdrop_id SET ld.disabled_chance = ld.chance, ld.chance = 0  WHERE i.Name LIKE '%rough defiant%';
UPDATE lootdrop_entries ld JOIN items i ON i.id =ld.item_id JOIN loottable_entries lt ON ld.lootdrop_id = lt.lootdrop_id SET ld.disabled_chance = ld.chance, ld.chance = 0  WHERE i.Name LIKE '%ornate defiant%';
UPDATE lootdrop_entries ld JOIN items i ON i.id =ld.item_id JOIN loottable_entries lt ON ld.lootdrop_id = lt.lootdrop_id SET ld.disabled_chance = ld.chance, ld.chance = 0  WHERE i.Name LIKE '%flawed defiant%';
UPDATE lootdrop_entries ld JOIN items i ON i.id =ld.item_id JOIN loottable_entries lt ON ld.lootdrop_id = lt.lootdrop_id SET ld.disabled_chance = ld.chance, ld.chance = 0  WHERE i.Name LIKE '%intricate defiant%';
UPDATE lootdrop_entries ld JOIN items i ON i.id =ld.item_id JOIN loottable_entries lt ON ld.lootdrop_id = lt.lootdrop_id SET ld.disabled_chance = ld.chance, ld.chance = 0  WHERE i.Name LIKE '%elaborate defiant%';
UPDATE lootdrop_entries ld JOIN items i ON i.id =ld.item_id JOIN loottable_entries lt ON ld.lootdrop_id = lt.lootdrop_id SET ld.disabled_chance = ld.chance, ld.chance = 0  WHERE i.Name LIKE '%simple combatant%';
UPDATE lootdrop_entries ld JOIN items i ON i.id =ld.item_id JOIN loottable_entries lt ON ld.lootdrop_id = lt.lootdrop_id SET ld.disabled_chance = ld.chance, ld.chance = 0  WHERE i.Name LIKE '%simple adept%';
UPDATE lootdrop_entries ld JOIN items i ON i.id =ld.item_id JOIN loottable_entries lt ON ld.lootdrop_id = lt.lootdrop_id SET ld.disabled_chance = ld.chance, ld.chance = 0  WHERE i.Name LIKE '%rough adept%';


-- Max respawn time of 30 minutes
UPDATE spawn2 SET respawntime = 1800 WHERE respawntime > 1800;

-- Kunark flag
UPDATE zone SET zone.flag_needed = '1'
WHERE zone.short_name IN 
('burningwood', 'chardok', 'citymist', 'dalnir', 'dreadlands',	 'emeraldjungle',	'firiona', 'frontiermtns', 'kaesora', 'karnor',	 'lakeofillomen', 'nurga',
'sebilis', 'skyfire', 'swampofnohope', 'droga', 'overthere', 'timorous', 'trakanon', 'veeshan', 'warslikswood');

-- Velious flag
UPDATE zone SET zone.flag_needed = '1' WHERE zone.`expansion` = 3;

-- Luclin flag
UPDATE zone SET flag_needed = 1 WHERE zone.`expansion` = 4;

-- POP flag
UPDATE zone SET flag_needed = 1 WHERE zone.short_name = 'potranquility';

-- Task
INSERT INTO `tasks` (`id`, `type`, `duration`, `duration_code`, `title`, `description`, `reward`, `rewardid`, `cashreward`, `xpreward`, `rewardmethod`, `minlevel`, `maxlevel`, `repeatable`, `faction_reward`, `completion_emote`) VALUES (290, 0, 0, 0, 'Seeking Power', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `task_activities` (`taskid`, `activityid`, `step`, `activitytype`, `target_name`, `item_list`, `skill_list`, `spell_list`, `description_override`, `goalid`, `goalmethod`, `goalcount`, `delivertonpc`, `zones`, `optional`) VALUES (290, 0, 0, 2, 'Lady Vox', '', '-1', '0', 'Lady Vox', 73057, 0, 1, 0, '0', 0);
INSERT INTO `task_activities` (`taskid`, `activityid`, `step`, `activitytype`, `target_name`, `item_list`, `skill_list`, `spell_list`, `description_override`, `goalid`, `goalmethod`, `goalcount`, `delivertonpc`, `zones`, `optional`) VALUES (290, 1, 0, 2, 'Lord Nagafen', '', '-1', '0', 'Lord Nagafen', 32040, 0, 1, 0, '0', 0);
