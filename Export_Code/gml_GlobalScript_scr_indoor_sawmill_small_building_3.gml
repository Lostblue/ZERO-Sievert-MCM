function scr_indoor_sawmill_small_building_3(argument0, argument1, argument2, argument3) //gml_Script_scr_indoor_sawmill_small_building_3
{
    var xx = argument0
    var yy = argument1
    var dest_x = argument2
    var dest_y = argument3
    var o = obj_map_generator
    scr_place_obj_map(105, ((xx * 16) + 94), ((yy * 16) + 71))
    scr_place_obj_map(63, ((xx * 16) + 27), ((yy * 16) + 100))
    scr_place_obj_map(63, ((xx * 16) + 31), ((yy * 16) + 112))
    scr_place_obj_map(63, ((xx * 16) + 28), ((yy * 16) + 66))
    scr_place_obj_map(63, ((xx * 16) + 42), ((yy * 16) + 53))
    scr_place_obj_map(63, ((xx * 16) + 31), ((yy * 16) + 57))
    scr_place_obj_map(50, ((xx * 16) + 103), ((yy * 16) + 29))
    scr_place_obj_map(47, ((xx * 16) + 103), ((yy * 16) + 45))
    scr_place_obj_map(47, ((xx * 16) + 103), ((yy * 16) + 77))
    scr_place_obj_map(46, ((xx * 16) + 103), ((yy * 16) + 93))
    scr_place_obj_map(46, ((xx * 16) + 103), ((yy * 16) + 61))
    scr_place_obj_map(47, ((xx * 16) + 10), ((yy * 16) + 46))
    scr_place_obj_map(47, ((xx * 16) + 10), ((yy * 16) + 78))
    scr_place_obj_map(52, ((xx * 16) + 10), ((yy * 16) + 30))
    scr_place_obj_map(46, ((xx * 16) + 10), ((yy * 16) + 94))
    scr_place_obj_map(46, ((xx * 16) + 10), ((yy * 16) + 62))
    instance_create_depth(((xx * 16) + 64), ((yy * 16) + 56), 0, obj_chest_tool_box)
    instance_create_depth(((xx * 16) + 16), ((yy * 16) + 32), 0, obj_solid)
    instance_create_depth(((xx * 16) + 32), ((yy * 16) + 32), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 32), 0, obj_solid)
    instance_create_depth(((xx * 16) + 64), ((yy * 16) + 32), 0, obj_solid)
    instance_create_depth(((xx * 16) + 80), ((yy * 16) + 32), 0, obj_solid)
    instance_create_depth(((xx * 16) + 96), ((yy * 16) + 32), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 32), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 64), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 80), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 96), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 96), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 80), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 64), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 32), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 16), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 0), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 0), ((yy * 16) + 96), 0, obj_solid)
    instance_create_depth(((xx * 16) + 0), ((yy * 16) + 80), 0, obj_solid)
    instance_create_depth(((xx * 16) + 0), ((yy * 16) + 64), 0, obj_solid)
    instance_create_depth(((xx * 16) + 0), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 0), ((yy * 16) + 32), 0, obj_solid)
    var o_indoor = instance_create_depth(((xx * 16) + 64), ((yy * 16) + 96), 0, obj_indoor)
    o_indoor.tele_x = dest_x
    o_indoor.tele_y = dest_y
    var o_indoor2 = instance_create_depth((x + o.b_x[decor_id][image_index]), (y + o.b_y[decor_id][image_index]), 0, obj_indoor)
    o_indoor2.tele_x = (((xx * 16) + 8) + 64)
    o_indoor2.tele_y = (((yy * 16) + 5) + 96)
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 1), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 1), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 1), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 1), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 2), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 2), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 2), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 2), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 3), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 3), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 3), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 3), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 4), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 4), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 4), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 4), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 5), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 5), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 5), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 5), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 6), (yy + 3))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 6), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 6), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 293, (xx + 6), (yy + 6))
    tilemap_set(o.layer_tileset_wall_below_indoor, 149, (xx + 1), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 202, (xx + 2), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 149, (xx + 3), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 149, (xx + 4), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 202, (xx + 5), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 149, (xx + 6), (yy + 2))
    tilemap_set(o.layer_tileset_wall_above_indoor, 180, (xx + 0), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 54, (xx + 0), (yy + 2))
    tilemap_set(o.layer_tileset_wall_above_indoor, 54, (xx + 0), (yy + 3))
    tilemap_set(o.layer_tileset_wall_above_indoor, 54, (xx + 0), (yy + 4))
    tilemap_set(o.layer_tileset_wall_above_indoor, 54, (xx + 0), (yy + 5))
    tilemap_set(o.layer_tileset_wall_above_indoor, 212, (xx + 0), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 0), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 85, (xx + 1), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 21, (xx + 1), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 1), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 85, (xx + 2), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 21, (xx + 2), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 2), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 85, (xx + 3), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 21, (xx + 3), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 3), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 85, (xx + 4), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 21, (xx + 4), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 4), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 85, (xx + 5), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 21, (xx + 5), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 5), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 85, (xx + 6), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 21, (xx + 6), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 6), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 181, (xx + 7), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 52, (xx + 7), (yy + 2))
    tilemap_set(o.layer_tileset_wall_above_indoor, 52, (xx + 7), (yy + 3))
    tilemap_set(o.layer_tileset_wall_above_indoor, 52, (xx + 7), (yy + 4))
    tilemap_set(o.layer_tileset_wall_above_indoor, 52, (xx + 7), (yy + 5))
    tilemap_set(o.layer_tileset_wall_above_indoor, 213, (xx + 7), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 7), (yy + 7))
    return;
}
