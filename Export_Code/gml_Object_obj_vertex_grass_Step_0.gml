if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
}
if (global.general_debug == 1)
{
    if keyboard_check_direct(vk_numpad1)
        grass_wind += 0.01
    if keyboard_check_direct(vk_numpad2)
        grass_wind -= 0.01
    if keyboard_check_direct(vk_numpad3)
        grass_speed += 0.01
    if keyboard_check_direct(vk_numpad4)
        grass_speed -= 0.01
    if keyboard_check_direct(vk_numpad5)
        wind_hsp += 0.01
    if keyboard_check_direct(vk_numpad6)
        wind_hsp -= 0.01
    if keyboard_check_direct(vk_numpad7)
        pattern_size += 0.1
    if keyboard_check_direct(vk_numpad8)
        pattern_size -= 0.1
}
