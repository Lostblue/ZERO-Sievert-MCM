target = scr_find_target_for_mutant(npc_alert_visual_distance[npc_id])
if (target != noone)
{
    target_for_image_scale = target.x
    if scr_chance(npc_prob_attack[npc_id])
    {
        move_point_x = target.x
        move_point_y = target.y
    }
    if scr_chance(prob_disappear)
        state = 128
    if scr_chance(prob_attack1)
    {
        state = 130
        if (x > target.x)
            image_xscale = -1
        else
            image_xscale = 1
    }
}
else
    state = npc_state_patrol[npc_id]
