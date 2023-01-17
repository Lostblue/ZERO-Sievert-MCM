if (argument1 >= 1)
{
    if scr_chance(argument0)
    {
        if scr_chance(argument0)
        {
            if scr_chance((argument0 / 2))
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
    if (argument1 == 2)
    {
        if scr_chance(argument0)
        {
            if scr_chance(argument0)
            {
                if scr_chance((argument0 / 2))
                    npc_damage_melee[npc_id] += 5
                npc_damage_melee[npc_id] += 5
            }
            npc_damage_melee[npc_id] += 5
        }
        if scr_chance(argument0)
        {
            if scr_chance(argument0)
            {
                if scr_chance((argument0 / 2))
                    npc_spd_alerted[npc_id] += 0.07
                npc_spd_alerted[npc_id] += 0.07
            }
            npc_spd_alerted[npc_id] += 0.07
        }
    }
}
else if (random(100) <= argument0)
    return 1;
