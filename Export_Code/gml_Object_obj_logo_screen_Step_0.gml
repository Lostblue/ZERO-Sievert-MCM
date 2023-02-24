if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any))
{
    video_close()
    room_goto(r_starting_menu)
}
