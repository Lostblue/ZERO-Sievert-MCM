sprite_index = sprite_idle
image_speed = image_speed_idle
if mouse_check_button_pressed(mb_left)
{
    if instance_exists(obj_consumable_medication)
    {
        with (obj_consumable_medication)
            instance_destroy()
    }
    state = 22
}
