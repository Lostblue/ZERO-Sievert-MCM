var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if keyboard_check_pressed(global.kb_now[(5 << 0)])
{
    state = 22
    audio_play_sound(snd_ui_pda_back, 10, false)
}
if keyboard_check_pressed(vk_escape)
{
    state = 22
    audio_play_sound(snd_ui_pda_back, 10, false)
    obj_controller.can_pause = 0
}
var oo = obj_controller
if mouse_check_button_pressed(mb_left)
{
    if scr_mouse_inside((camx + oo.pda_icon_back_x), (camy + oo.pda_icon_back_y), oo.pda_icon_back_w, oo.pda_icon_back_h)
    {
        state = 29
        audio_play_sound(snd_ui_pda_back, 10, false)
        oo.pda_loading_now = oo.pda_loading_max
        oo.pda_map_mouse_press = 0
    }
}
