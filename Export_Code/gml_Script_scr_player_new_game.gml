obj_camera.follow = (3 << 0)
sprite_index = sprite_idle
image_speed = 0.25
if keyboard_check_pressed(vk_space)
{
    state = 22
    obj_camera.follow = (1 << 0)
}
var o = obj_controller
if mouse_check_button_pressed(mb_left)
{
    if (o.tut_text_page < (array_length_1d(o.tut_text) - 1))
    {
        if (o.tut_text_counter >= string_length(o.tut_text[o.tut_text_page]))
        {
            o.tut_text_page++
            o.tut_text_counter = 0
        }
    }
    else
    {
        state = 22
        obj_camera.follow = (1 << 0)
    }
}
