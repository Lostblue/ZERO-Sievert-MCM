event_inherited()
npc_id = (36 << 0)
faction = npc_faction[npc_id]
hp = npc_hp[npc_id]
state = npc_state_patrol[npc_id]
sprite_index = npc_sprite_idle[npc_id]
timer = 0
timer_max = 240
spawn_amount = 1
spawn_max = 10
max_same_time = 6
repeat (2 + irandom(2))
    instance_create_depth((x + irandom_range(-16, 16)), (y + irandom_range(-16, 16)), 0, obj_enemy_ghoul)
if (global.mutator_mutant == 1)
{
    chance = 0
    switch global.mutator_difficulty
    {
        case 0:
            chance = (10 * global.livello_now)
            break
        case 1:
            chance = 20
            break
        case 2:
            chance = 40
            break
        case 3:
            chance = 60
            break
    }

    if scr_chance(chance)
    {
        if scr_chance(chance)
        {
            if scr_chance(chance)
            {
                if (hp < 100)
                    hp += 15
                else
                    hp *= 1.15
            }
            if (hp < 100)
                hp += 15
            else
                hp *= 1.15
        }
        if (hp < 100)
            hp += 15
        else
            hp *= 1.15
        hp = floor(hp)
    }
}