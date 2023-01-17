var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if (obj_player.state == 23 || obj_player.state == 39 || obj_player.state == 55)
    draw_sprite(sprite_index, image_index, (x - camx), (y - camy))
if (obj_player.state == 28 || obj_player.state == 29 || obj_player.state == 30 || obj_player.state == 31 || obj_player.state == 34 || obj_player.state == 50 || obj_player.state == 32 || obj_player.state == 54 || obj_player.state == 33 || obj_player.state == 35 || obj_player.state == 55 || obj_player.state == 67)
{
    draw_sprite(sprite_index, 4, (x - camx), (y - camy))
    draw_set_font(font0)
}
