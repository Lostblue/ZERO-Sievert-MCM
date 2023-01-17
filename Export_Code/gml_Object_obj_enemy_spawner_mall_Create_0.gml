if scr_chance(12)
{
    if scr_chance(13)
        instance_create_depth(x, y, 0, obj_loner_enemy2)
    else if scr_chance(25)
        instance_create_depth(x, y, 0, obj_enemy_human_bandit_elite)
    else if scr_chance(1)
        instance_create_depth(x, y, 0, obj_enemy_big)
    else
        instance_create_depth(x, y, 0, obj_enemy_blink)
}
