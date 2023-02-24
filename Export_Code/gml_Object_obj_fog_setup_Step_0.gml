x = obj_player.x
y = obj_player.y
depth = 35
if (global.fog_fow_on == 1)
{
    var _dir = (point_direction(obj_player.x, obj_player.y, mouse_x, mouse_y) + 360)
    var _off = 400
    var _angle_diff = (global.angle_fow / 2)
    global.field_of_view_x1 = (obj_player.x + lengthdir_x(_off, (_dir + _angle_diff)))
    global.field_of_view_y1 = (obj_player.y + lengthdir_y(_off, (_dir + _angle_diff)))
    global.field_of_view_x2 = (obj_player.x + lengthdir_x(_off, (_dir - _angle_diff)))
    global.field_of_view_y2 = (obj_player.y + lengthdir_y(_off, (_dir - _angle_diff)))
}
