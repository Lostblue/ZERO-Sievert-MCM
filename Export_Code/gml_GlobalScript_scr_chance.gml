function scr_chance(argument0) //gml_Script_scr_chance
{
    if (random(100) <= argument0)
        return 1;
    return;
}


var chance = 0
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

    if ((global.mutator_human == 1) ||  global.mutator_mutant == 1))
{
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
if (argument1 == 2 && global.mutator_mutant == 1)
{
    if scr_chance(chance)
        {
        if scr_chance(chance)
            {
            if scr_chance(chance)
                    npc_damage_melee[npc_id] += 5
                npc_damage_melee[npc_id] += 5
            }
        npc_damage_melee[npc_id] += 5
        }
    if scr_chance(chance)
        {
        if scr_chance(chance)
            {
            if scr_chance(chance)
                    npc_spd_alerted[npc_id] += 0.07
                npc_spd_alerted[npc_id] += 0.07
            }
        npc_spd_alerted[npc_id] += 0.07
        }
}