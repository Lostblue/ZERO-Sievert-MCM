var pos_x = argument0
var pos_y = argument1
var range = irandom_range((argument2 div 2), argument2)
var _dir = irandom(360)
move_point_x = (pos_x + lengthdir_x(range, _dir))
move_point_y = (pos_y + lengthdir_y(range, _dir))
