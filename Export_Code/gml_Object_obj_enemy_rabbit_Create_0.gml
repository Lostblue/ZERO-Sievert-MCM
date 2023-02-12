event_inherited()
npc_id = (31 << 0)
faction = npc_faction[npc_id]
hp = npc_hp[npc_id]
state = npc_state_patrol[npc_id]
sprite_index = npc_sprite_idle[npc_id]
damage_on_hit = 0
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