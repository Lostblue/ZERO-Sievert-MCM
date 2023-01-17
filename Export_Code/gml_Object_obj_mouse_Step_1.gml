if instance_exists(obj_player)
{
    if (obj_player.state == 40 || obj_player.state == 43 || obj_player.state == 45 || obj_player.state == 49 || obj_player.state == 50 || obj_player.state == 42 || obj_player.state == 41 || obj_player.state == 44 || obj_player.state == 48)
        object_set_mask(obj_mouse, 201)
    else
        object_set_mask(obj_mouse, 202)
}
