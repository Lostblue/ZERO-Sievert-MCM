var _quest_id = argument0
var _quest_type = argument1
var i_have_the_quest = 0
for (var i = 0; i < 30; i++)
{
    if (global.save_quest_id[i] == _quest_id)
    {
        for (var j = 0; j < array_length_2d(global.quest_type, _quest_id); j++)
        {
            if (global.quest_type[i, j] == _quest_type)
            {
                if (global.save_quest_amount_now[i, j] < global.quest_amount_max[_quest_id, j])
                {
                    global.save_quest_amount_now[i, j] = 1
                    obj_controller.alarm[1] = 1
                }
            }
        }
    }
}
