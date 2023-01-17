if (state != 126 && state != 127 && state != 128)
    event_inherited()
if (state == 126)
{
    sprite_index = sprite_disappear
    image_speed = ims_disappear
}
if (state == 127)
{
    sprite_index = sprite_disappear
    image_speed = (-ims_disappear)
}
if (state == 128)
{
    sprite_index = sprite_attack_1
    image_speed = ims_attack1
    if (image_index >= (sprite_get_number(sprite_attack_1) - 1))
        image_speed = 0
}
