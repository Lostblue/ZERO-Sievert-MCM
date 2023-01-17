depth = (obj_player.depth - 150)
obj_player.hp += (med_hp[item_id] / med_duration[item_id])
obj_player.bleed -= (med_bleed[item_id] / med_duration[item_id])
obj_player.radiation += (med_radiation[item_id] / med_duration[item_id])
obj_player.hspd = 0
obj_player.vspd = 0
if (mouse_check_button_pressed(mb_left) && obj_player.state == 22)
    instance_destroy()
