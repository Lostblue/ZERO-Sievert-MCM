bb_w = (string_width(t) + 20)
draw_x = ((480 - bb_w) - 10)
depth = -10501
draw_y = lerp(draw_y, draw_y_limit, 0.15)
if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
}
