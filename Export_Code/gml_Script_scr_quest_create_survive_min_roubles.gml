var _quest_id = argument0
var i = argument1
var _amount_max = argument2
global.quest_type[_quest_id, i] = (9 << 0)
global.quest_amount_now[_quest_id, i] = 0
global.quest_amount_max[_quest_id, i] = _amount_max
global.quest_survive_map[_quest_id, i] = argument3
global.quest_survive_min_roubles[_quest_id, i] = argument4
