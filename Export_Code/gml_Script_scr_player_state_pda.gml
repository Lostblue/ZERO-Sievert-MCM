if keyboard_check_pressed(global.kb_now[(10 << 0)])
    state = 22
if keyboard_check_pressed(vk_escape)
{
    state = 22
    obj_controller.can_pause = 0
}
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
var oo = obj_controller
if (oo.pda_loading_now == (oo.pda_loading_max - 1))
    audio_play_sound(snd_ui_pda_open_finish, 10, false)
oo.icon_hover = -1
for (var i = 0; i < array_length_1d(oo.pda_icon_id); i++)
{
    if scr_mouse_inside((camx + oo.pda_icon_x[i]), (camy + oo.pda_icon_y[i]), oo.icone_w, oo.icone_w)
    {
        oo.icon_hover = oo.pda_icon_id[i]
        if (oo.icon_hover != oo.icon_hover_before)
            audio_play_sound(snd_ui_pda_app_hover, 10, false)
    }
}
if mouse_check_button_pressed(mb_left)
{
    if (oo.icon_hover == (0 << 0))
    {
        state = 28
        audio_play_sound(snd_ui_pda_app_pressed, 10, false)
        scr_draw_surface_cover()
    }
    if (oo.icon_hover == (1 << 0))
    {
        state = 30
        audio_play_sound(snd_ui_pda_app_pressed, 10, false)
        obj_controller.alarm[1] = 1
    }
    if (oo.icon_hover == (2 << 0))
    {
        state = 31
        audio_play_sound(snd_ui_pda_app_pressed, 10, false)
    }
    if (oo.icon_hover == (4 << 0))
    {
        state = 33
        audio_play_sound(snd_ui_pda_app_pressed, 10, false)
    }
    if (oo.icon_hover == (3 << 0))
    {
        state = 32
        audio_play_sound(snd_ui_pda_app_pressed, 10, false)
    }
    if (oo.icon_hover == (5 << 0))
    {
        state = 35
        audio_play_sound(snd_ui_pda_app_pressed, 10, false)
    }
    if scr_mouse_inside((camx + oo.pda_icon_back_x), (camy + oo.pda_icon_back_y), oo.pda_icon_back_w, oo.pda_icon_back_h)
    {
        state = 22
        audio_play_sound(snd_ui_pda_back, 10, false)
    }
}
if keyboard_check_pressed(global.kb_now[(5 << 0)])
{
    state = 22
    audio_play_sound(snd_ui_pda_back, 10, false)
}
oo.icon_hover_before = oo.icon_hover
