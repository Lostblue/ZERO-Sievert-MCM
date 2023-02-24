function scr_player_state_teleport() //gml_Script_scr_player_state_teleport
{
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    if keyboard_check_pressed(vk_escape)
        state = gml_Script_scr_player_state_move
    if global.kb_pressed[(5 << 0)]
        state = gml_Script_scr_player_state_move
    if (global.quest_unique_done[(3 << 0)] == 1)
        global.tp_to_npc_can_tp[(4 << 0)] = 1
    if (global.az_done[(13 << 0)] == 1)
        global.tp_to_npc_can_tp[(5 << 0)] = 1
    global.tp_to_npc_hover = -1
    var _sx = global.tp_to_npc_startx
    var _sy = global.tp_to_npc_starty
    var _h = 12
    for (var i = 0; i < array_length(global.tp_to_npc_x); i++)
    {
        if scr_mouse_inside((camx + _sx), ((camy + _sy) + (_h * i)), 100, _h)
        {
            if (global.tp_to_npc_can_tp[i] == 1)
                global.tp_to_npc_hover = i
        }
    }
    if (global.tp_to_npc_hover != -1)
    {
        if mouse_check_button_pressed(mb_left)
        {
            x = global.tp_to_npc_x[global.tp_to_npc_hover]
            y = global.tp_to_npc_y[global.tp_to_npc_hover]
            obj_camera.alarm[1] = 1
            state = gml_Script_scr_player_state_move
        }
    }
    for (i = 0; i < array_length(global.tp_to_npc_x); i++)
    {
        if (global.tp_to_npc_can_tp[i] == 1)
        {
            if keyboard_check_pressed(ord(string((i + 1))))
            {
                x = global.tp_to_npc_x[i]
                y = global.tp_to_npc_y[i]
                obj_camera.alarm[1] = 1
                state = gml_Script_scr_player_state_move
            }
        }
    }
    return;
}

