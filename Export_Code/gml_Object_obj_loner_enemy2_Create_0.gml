event_inherited()
alert_player_max_value = 20
npc_id = (12 << 0)
faction = npc_faction[npc_id]
hp = npc_hp[npc_id]
state = npc_state_patrol[npc_id]
sprite_index = npc_sprite_idle[npc_id]
arma_now = npc_arma[npc_id]
ammo_magazine = arma_magazine[arma_now]
ammo_now = arma_magazine[arma_now]
if scr_chance(global.sk_k[(72 << 0)])
{
    if scr_chance(global.sk_k[(72 << 0)])
    {
        if scr_chance(global.sk_k[(72 << 0)])
        {
            if (hp < 100)
                hp += 30
            else
                hp *= 1.3
        }
        else if (hp < 100)
            hp += 20
        else
            hp *= 1.2
    }
    else if (hp < 100)
        hp += 10
    else
        hp *= 1.1
}
