if scr_chance((65 + (global.sk_k[(72 << 0)] / 2)))
{
    if (global.sk_k[(72 << 0)] >= 30 && scr_chance((global.sk_k[(72 << 0)] / 3)))
        instance_create_depth(x, y, 0, obj_enemy_human_bandit_elite)
    else if scr_chance((10 + global.sk_k[(72 << 0)]))
        instance_create_depth(x, y, 0, obj_enemy_human_bandit_regular)
    else
        instance_create_depth(x, y, 0, obj_enemy_human_bandit_novice)
}
alert[0] = 10
