var xx = argument0
var yy = argument1
var dest_x = argument2
var dest_y = argument3
var o = obj_map_generator
scr_place_obj_map(62, ((xx * 16) + 21), ((yy * 16) + 110))
scr_place_obj_map(62, ((xx * 16) + 13), ((yy * 16) + 107))
scr_place_obj_map(62, ((xx * 16) + 19), ((yy * 16) + 103))
scr_place_obj_map(62, ((xx * 16) + 22), ((yy * 16) + 96))
scr_place_obj_map(62, ((xx * 16) + 11), ((yy * 16) + 99))
scr_place_obj_map(62, ((xx * 16) + 14), ((yy * 16) + 92))
scr_place_obj_map(62, ((xx * 16) + 22), ((yy * 16) + 87))
scr_place_obj_map(62, ((xx * 16) + -2), ((yy * 16) + 84))
scr_place_obj_map(62, ((xx * 16) + 14), ((yy * 16) + 84))
scr_place_obj_map(62, ((xx * 16) + 19), ((yy * 16) + 80))
scr_place_obj_map(62, ((xx * 16) + 12), ((yy * 16) + 77))
scr_place_obj_map(258, ((xx * 16) + 64), ((yy * 16) + 47))
scr_place_obj_map(275, ((xx * 16) + 16), ((yy * 16) + 47))
scr_place_obj_map(96, ((xx * 16) + 80), ((yy * 16) + 99))
scr_place_obj_map(98, ((xx * 16) + 92), ((yy * 16) + 82))
scr_place_obj_map(98, ((xx * 16) + 105), ((yy * 16) + 82))
scr_place_obj_map(100, ((xx * 16) + 96), ((yy * 16) + 111))
scr_place_obj_map(261, ((xx * 16) + 32), ((yy * 16) + 47))
scr_place_obj_map(268, ((xx * 16) + 80), ((yy * 16) + 47))
scr_place_obj_map(274, ((xx * 16) + 96), ((yy * 16) + 47))
instance_create_depth(((xx * 16) + 99), ((yy * 16) + 64), 0, obj_chest_bag)
instance_create_depth(((xx * 16) + 0), ((yy * 16) + 96), 0, obj_solid)
instance_create_depth(((xx * 16) + 0), ((yy * 16) + 80), 0, obj_solid)
instance_create_depth(((xx * 16) + 0), ((yy * 16) + 64), 0, obj_solid)
instance_create_depth(((xx * 16) + 0), ((yy * 16) + 48), 0, obj_solid)
instance_create_depth(((xx * 16) + 0), ((yy * 16) + 32), 0, obj_solid)
instance_create_depth(((xx * 16) + 0), ((yy * 16) + 16), 0, obj_solid)
instance_create_depth(((xx * 16) + 0), ((yy * 16) + 0), 0, obj_solid)
instance_create_depth(((xx * 16) + 16), ((yy * 16) + 0), 0, obj_solid)
instance_create_depth(((xx * 16) + 32), ((yy * 16) + 0), 0, obj_solid)
instance_create_depth(((xx * 16) + 48), ((yy * 16) + 0), 0, obj_solid)
instance_create_depth(((xx * 16) + 64), ((yy * 16) + 0), 0, obj_solid)
instance_create_depth(((xx * 16) + 80), ((yy * 16) + 0), 0, obj_solid)
instance_create_depth(((xx * 16) + 96), ((yy * 16) + 0), 0, obj_solid)
instance_create_depth(((xx * 16) + 112), ((yy * 16) + 0), 0, obj_solid)
instance_create_depth(((xx * 16) + 112), ((yy * 16) + 16), 0, obj_solid)
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
var o_indoor = instance_create_depth(((xx * 16) + 48), ((yy * 16) + 95), 0, obj_indoor)
o_indoor.tele_x = dest_x
o_indoor.tele_y = dest_y
var o_indoor2 = instance_create_depth((x + o.b_x[decor_id, image_index]), (y + o.b_y[decor_id, image_index]), 0, obj_indoor)
o_indoor2.tele_x = (((xx * 16) + 8) + 48)
o_indoor2.tele_y = (((yy * 16) + 5) + 95)
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 1), (yy + 2))
tilemap_set(o.layer_tileset_floor_indoor, 648, (xx + 1), (yy + 3))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 1), (yy + 4))
tilemap_set(o.layer_tileset_floor_indoor, 648, (xx + 1), (yy + 5))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 1), (yy + 6))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 2), (yy + 2))
tilemap_set(o.layer_tileset_floor_indoor, 648, (xx + 2), (yy + 3))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 2), (yy + 4))
tilemap_set(o.layer_tileset_floor_indoor, 648, (xx + 2), (yy + 5))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 2), (yy + 6))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 3), (yy + 2))
tilemap_set(o.layer_tileset_floor_indoor, 648, (xx + 3), (yy + 3))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 3), (yy + 4))
tilemap_set(o.layer_tileset_floor_indoor, 648, (xx + 3), (yy + 5))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 3), (yy + 6))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 4), (yy + 2))
tilemap_set(o.layer_tileset_floor_indoor, 648, (xx + 4), (yy + 3))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 4), (yy + 4))
tilemap_set(o.layer_tileset_floor_indoor, 648, (xx + 4), (yy + 5))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 4), (yy + 6))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 5), (yy + 2))
tilemap_set(o.layer_tileset_floor_indoor, 648, (xx + 5), (yy + 3))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 5), (yy + 4))
tilemap_set(o.layer_tileset_floor_indoor, 648, (xx + 5), (yy + 5))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 5), (yy + 6))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 6), (yy + 2))
tilemap_set(o.layer_tileset_floor_indoor, 648, (xx + 6), (yy + 3))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 6), (yy + 4))
tilemap_set(o.layer_tileset_floor_indoor, 648, (xx + 6), (yy + 5))
tilemap_set(o.layer_tileset_floor_indoor, 616, (xx + 6), (yy + 6))
tilemap_set(o.layer_tileset_wall_below_indoor, 774, (xx + 1), (yy + 1))
tilemap_set(o.layer_tileset_wall_below_indoor, 775, (xx + 2), (yy + 1))
tilemap_set(o.layer_tileset_wall_below_indoor, 774, (xx + 3), (yy + 1))
tilemap_set(o.layer_tileset_wall_below_indoor, 775, (xx + 4), (yy + 1))
tilemap_set(o.layer_tileset_wall_below_indoor, 774, (xx + 5), (yy + 1))
tilemap_set(o.layer_tileset_wall_below_indoor, 775, (xx + 6), (yy + 1))
tilemap_set(o.layer_tileset_wall_above_indoor, 805, (xx + 0), (yy + 0))
tilemap_set(o.layer_tileset_wall_above_indoor, 712, (xx + 0), (yy + 1))
tilemap_set(o.layer_tileset_wall_above_indoor, 712, (xx + 0), (yy + 2))
tilemap_set(o.layer_tileset_wall_above_indoor, 712, (xx + 0), (yy + 3))
tilemap_set(o.layer_tileset_wall_above_indoor, 712, (xx + 0), (yy + 4))
tilemap_set(o.layer_tileset_wall_above_indoor, 712, (xx + 0), (yy + 5))
tilemap_set(o.layer_tileset_wall_above_indoor, 837, (xx + 0), (yy + 6))
tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 0), (yy + 7))
tilemap_set(o.layer_tileset_wall_above_indoor, 742, (xx + 1), (yy + 0))
tilemap_set(o.layer_tileset_wall_above_indoor, 678, (xx + 1), (yy + 6))
tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 1), (yy + 7))
tilemap_set(o.layer_tileset_wall_above_indoor, 743, (xx + 2), (yy + 0))
tilemap_set(o.layer_tileset_wall_above_indoor, 678, (xx + 2), (yy + 6))
tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 2), (yy + 7))
tilemap_set(o.layer_tileset_wall_above_indoor, 742, (xx + 3), (yy + 0))
tilemap_set(o.layer_tileset_wall_above_indoor, 678, (xx + 3), (yy + 6))
tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 3), (yy + 7))
tilemap_set(o.layer_tileset_wall_above_indoor, 743, (xx + 4), (yy + 0))
tilemap_set(o.layer_tileset_wall_above_indoor, 678, (xx + 4), (yy + 6))
tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 4), (yy + 7))
tilemap_set(o.layer_tileset_wall_above_indoor, 742, (xx + 5), (yy + 0))
tilemap_set(o.layer_tileset_wall_above_indoor, 678, (xx + 5), (yy + 6))
tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 5), (yy + 7))
tilemap_set(o.layer_tileset_wall_above_indoor, 743, (xx + 6), (yy + 0))
tilemap_set(o.layer_tileset_wall_above_indoor, 678, (xx + 6), (yy + 6))
tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 6), (yy + 7))
tilemap_set(o.layer_tileset_wall_above_indoor, 806, (xx + 7), (yy + 0))
tilemap_set(o.layer_tileset_wall_above_indoor, 709, (xx + 7), (yy + 1))
tilemap_set(o.layer_tileset_wall_above_indoor, 709, (xx + 7), (yy + 2))
tilemap_set(o.layer_tileset_wall_above_indoor, 709, (xx + 7), (yy + 3))
tilemap_set(o.layer_tileset_wall_above_indoor, 709, (xx + 7), (yy + 4))
tilemap_set(o.layer_tileset_wall_above_indoor, 709, (xx + 7), (yy + 5))
tilemap_set(o.layer_tileset_wall_above_indoor, 838, (xx + 7), (yy + 6))
tilemap_set(o.layer_tileset_wall_above_indoor, 32, (xx + 7), (yy + 7))
