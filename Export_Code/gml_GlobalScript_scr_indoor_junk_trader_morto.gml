function scr_indoor_junk_trader_morto(argument0, argument1, argument2, argument3) //gml_Script_scr_indoor_junk_trader_morto
{
    var xx = argument0
    var yy = argument1
    var dest_x = argument2
    var dest_y = argument3
    var o = obj_map_generator
    scr_place_obj_map(324, ((xx * 16) + 178), ((yy * 16) + 169))
    scr_place_obj_map(311, ((xx * 16) + 105), ((yy * 16) + 194))
    scr_place_obj_map(311, ((xx * 16) + 105), ((yy * 16) + 113))
    scr_place_obj_map(104, ((xx * 16) + 161), ((yy * 16) + 94))
    scr_place_obj_map(104, ((xx * 16) + 148), ((yy * 16) + 90))
    scr_place_obj_map(104, ((xx * 16) + 190), ((yy * 16) + 136))
    scr_place_obj_map(104, ((xx * 16) + 183), ((yy * 16) + 132))
    scr_place_obj_map(104, ((xx * 16) + 188), ((yy * 16) + 122))
    scr_place_obj_map(104, ((xx * 16) + 179), ((yy * 16) + 111))
    scr_place_obj_map(104, ((xx * 16) + 110), ((yy * 16) + 155))
    scr_place_obj_map(104, ((xx * 16) + 110), ((yy * 16) + 139))
    scr_place_obj_map(104, ((xx * 16) + 125), ((yy * 16) + 126))
    scr_place_obj_map(104, ((xx * 16) + 135), ((yy * 16) + 92))
    scr_place_obj_map(104, ((xx * 16) + 118), ((yy * 16) + 112))
    scr_place_obj_map(104, ((xx * 16) + 108), ((yy * 16) + 123))
    scr_place_obj_map(105, ((xx * 16) + 114), ((yy * 16) + 164))
    scr_place_obj_map(105, ((xx * 16) + 184), ((yy * 16) + 208))
    scr_place_obj_map(62, ((xx * 16) + 181), ((yy * 16) + 110))
    scr_place_obj_map(62, ((xx * 16) + 163), ((yy * 16) + 100))
    scr_place_obj_map(62, ((xx * 16) + 161), ((yy * 16) + 95))
    scr_place_obj_map(62, ((xx * 16) + 167), ((yy * 16) + 93))
    scr_place_obj_map(62, ((xx * 16) + 173), ((yy * 16) + 102))
    scr_place_obj_map(62, ((xx * 16) + 182), ((yy * 16) + 101))
    scr_place_obj_map(62, ((xx * 16) + 178), ((yy * 16) + 93))
    scr_place_obj_map(23, ((xx * 16) + 111), ((yy * 16) + 104))
    scr_place_obj_map(23, ((xx * 16) + 118), ((yy * 16) + 101))
    scr_place_obj_map(23, ((xx * 16) + 105), ((yy * 16) + 99))
    scr_place_obj_map(23, ((xx * 16) + 113), ((yy * 16) + 97))
    scr_place_obj_map(23, ((xx * 16) + 123), ((yy * 16) + 96))
    scr_place_obj_map(23, ((xx * 16) + 104), ((yy * 16) + 108))
    scr_place_obj_map(321, ((xx * 16) + 105), ((yy * 16) + 89))
    scr_place_obj_map(277, ((xx * 16) + 100), ((yy * 16) + 143))
    scr_place_obj_map(279, ((xx * 16) + 176), ((yy * 16) + 143))
    scr_place_obj_map(279, ((xx * 16) + 160), ((yy * 16) + 143))
    scr_place_obj_map(279, ((xx * 16) + 112), ((yy * 16) + 143))
    scr_place_obj_map(279, ((xx * 16) + 128), ((yy * 16) + 143))
    scr_place_obj_map(280, ((xx * 16) + 144), ((yy * 16) + 143))
    scr_place_obj_map(322, ((xx * 16) + 118), ((yy * 16) + 87))
    instance_create_depth(((xx * 16) + 146), ((yy * 16) + 105), 0, obj_chest_junk_trader)
    instance_create_depth(((xx * 16) + 136), ((yy * 16) + 158), 0, obj_chest_junk_trader_morto)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 208), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 192), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 176), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 160), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 144), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 128), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 96), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 80), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 64), 0, obj_solid)
    instance_create_depth(((xx * 16) + 48), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 64), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 80), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 96), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 128), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 144), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 160), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 176), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 192), ((yy * 16) + 48), 0, obj_solid)
    instance_create_depth(((xx * 16) + 192), ((yy * 16) + 64), 0, obj_solid)
    instance_create_depth(((xx * 16) + 192), ((yy * 16) + 80), 0, obj_solid)
    instance_create_depth(((xx * 16) + 192), ((yy * 16) + 96), 0, obj_solid)
    instance_create_depth(((xx * 16) + 192), ((yy * 16) + 112), 0, obj_solid)
    instance_create_depth(((xx * 16) + 192), ((yy * 16) + 128), 0, obj_solid)
    instance_create_depth(((xx * 16) + 192), ((yy * 16) + 144), 0, obj_solid)
    instance_create_depth(((xx * 16) + 192), ((yy * 16) + 160), 0, obj_solid)
    instance_create_depth(((xx * 16) + 192), ((yy * 16) + 176), 0, obj_solid)
    instance_create_depth(((xx * 16) + 192), ((yy * 16) + 192), 0, obj_solid)
    instance_create_depth(((xx * 16) + 192), ((yy * 16) + 208), 0, obj_solid)
    instance_create_depth(((xx * 16) + 176), ((yy * 16) + 208), 0, obj_solid)
    instance_create_depth(((xx * 16) + 160), ((yy * 16) + 208), 0, obj_solid)
    instance_create_depth(((xx * 16) + 144), ((yy * 16) + 208), 0, obj_solid)
    instance_create_depth(((xx * 16) + 128), ((yy * 16) + 208), 0, obj_solid)
    instance_create_depth(((xx * 16) + 112), ((yy * 16) + 208), 0, obj_solid)
    instance_create_depth(((xx * 16) + 96), ((yy * 16) + 208), 0, obj_solid)
    instance_create_depth(((xx * 16) + 80), ((yy * 16) + 208), 0, obj_solid)
    instance_create_depth(((xx * 16) + 64), ((yy * 16) + 208), 0, obj_solid)
    ds_grid_set(obj_map_generator.grid_water, (xx + 3), (yy + 4), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 1), ((yy div 2) + 2), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 91, (xx + 3), (yy + 4))
    ds_grid_set(obj_map_generator.grid_water, (xx + 3), (yy + 5), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 1), ((yy div 2) + 2), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 96, (xx + 3), (yy + 5))
    ds_grid_set(obj_map_generator.grid_water, (xx + 3), (yy + 6), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 1), ((yy div 2) + 3), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 96, (xx + 3), (yy + 6))
    ds_grid_set(obj_map_generator.grid_water, (xx + 3), (yy + 7), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 1), ((yy div 2) + 3), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 96, (xx + 3), (yy + 7))
    ds_grid_set(obj_map_generator.grid_water, (xx + 3), (yy + 8), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 1), ((yy div 2) + 4), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 96, (xx + 3), (yy + 8))
    ds_grid_set(obj_map_generator.grid_water, (xx + 3), (yy + 9), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 1), ((yy div 2) + 4), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 96, (xx + 3), (yy + 9))
    ds_grid_set(obj_map_generator.grid_water, (xx + 3), (yy + 10), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 1), ((yy div 2) + 5), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 96, (xx + 3), (yy + 10))
    ds_grid_set(obj_map_generator.grid_water, (xx + 3), (yy + 11), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 1), ((yy div 2) + 5), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 96, (xx + 3), (yy + 11))
    ds_grid_set(obj_map_generator.grid_water, (xx + 3), (yy + 12), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 1), ((yy div 2) + 6), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 96, (xx + 3), (yy + 12))
    ds_grid_set(obj_map_generator.grid_water, (xx + 3), (yy + 13), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 1), ((yy div 2) + 6), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 101, (xx + 3), (yy + 13))
    ds_grid_set(obj_map_generator.grid_water, (xx + 4), (yy + 4), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 2), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 113, (xx + 4), (yy + 4))
    ds_grid_set(obj_map_generator.grid_water, (xx + 4), (yy + 5), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 2), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 4), (yy + 5))
    ds_grid_set(obj_map_generator.grid_water, (xx + 4), (yy + 6), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 3), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 4), (yy + 6))
    ds_grid_set(obj_map_generator.grid_water, (xx + 4), (yy + 7), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 3), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 4), (yy + 7))
    ds_grid_set(obj_map_generator.grid_water, (xx + 4), (yy + 8), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 4), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 4), (yy + 8))
    ds_grid_set(obj_map_generator.grid_water, (xx + 4), (yy + 9), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 4), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 4), (yy + 9))
    ds_grid_set(obj_map_generator.grid_water, (xx + 4), (yy + 10), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 5), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 4), (yy + 10))
    ds_grid_set(obj_map_generator.grid_water, (xx + 4), (yy + 11), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 5), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 4), (yy + 11))
    ds_grid_set(obj_map_generator.grid_water, (xx + 4), (yy + 12), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 6), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 4), (yy + 12))
    ds_grid_set(obj_map_generator.grid_water, (xx + 4), (yy + 13), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 6), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 102, (xx + 4), (yy + 13))
    ds_grid_set(obj_map_generator.grid_water, (xx + 5), (yy + 4), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 2), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 100, (xx + 5), (yy + 4))
    ds_grid_set(obj_map_generator.grid_water, (xx + 5), (yy + 5), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 2), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 5), (yy + 5))
    ds_grid_set(obj_map_generator.grid_water, (xx + 5), (yy + 6), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 3), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 5), (yy + 6))
    ds_grid_set(obj_map_generator.grid_water, (xx + 5), (yy + 7), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 3), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 5), (yy + 7))
    ds_grid_set(obj_map_generator.grid_water, (xx + 5), (yy + 8), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 4), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 5), (yy + 8))
    ds_grid_set(obj_map_generator.grid_water, (xx + 5), (yy + 9), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 4), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 5), (yy + 9))
    ds_grid_set(obj_map_generator.grid_water, (xx + 5), (yy + 10), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 5), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 5), (yy + 10))
    ds_grid_set(obj_map_generator.grid_water, (xx + 5), (yy + 11), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 5), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 5), (yy + 11))
    ds_grid_set(obj_map_generator.grid_water, (xx + 5), (yy + 12), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 6), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 95, (xx + 5), (yy + 12))
    ds_grid_set(obj_map_generator.grid_water, (xx + 5), (yy + 13), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 2), ((yy div 2) + 6), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 102, (xx + 5), (yy + 13))
    ds_grid_set(obj_map_generator.grid_water, (xx + 6), (yy + 4), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 3), ((yy div 2) + 2), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 93, (xx + 6), (yy + 4))
    ds_grid_set(obj_map_generator.grid_water, (xx + 6), (yy + 5), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 3), ((yy div 2) + 2), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 98, (xx + 6), (yy + 5))
    ds_grid_set(obj_map_generator.grid_water, (xx + 6), (yy + 6), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 3), ((yy div 2) + 3), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 98, (xx + 6), (yy + 6))
    ds_grid_set(obj_map_generator.grid_water, (xx + 6), (yy + 7), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 3), ((yy div 2) + 3), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 98, (xx + 6), (yy + 7))
    ds_grid_set(obj_map_generator.grid_water, (xx + 6), (yy + 8), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 3), ((yy div 2) + 4), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 98, (xx + 6), (yy + 8))
    ds_grid_set(obj_map_generator.grid_water, (xx + 6), (yy + 9), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 3), ((yy div 2) + 4), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 98, (xx + 6), (yy + 9))
    ds_grid_set(obj_map_generator.grid_water, (xx + 6), (yy + 10), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 3), ((yy div 2) + 5), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 98, (xx + 6), (yy + 10))
    ds_grid_set(obj_map_generator.grid_water, (xx + 6), (yy + 11), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 3), ((yy div 2) + 5), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 98, (xx + 6), (yy + 11))
    ds_grid_set(obj_map_generator.grid_water, (xx + 6), (yy + 12), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 3), ((yy div 2) + 6), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 98, (xx + 6), (yy + 12))
    ds_grid_set(obj_map_generator.grid_water, (xx + 6), (yy + 13), -1)
    ds_grid_set(obj_map_generator.grid_map, ((xx div 2) + 3), ((yy div 2) + 6), -1)
    tilemap_set(obj_map_generator.layer_tileset_water, 103, (xx + 6), (yy + 13))
    var o_indoor = instance_create_depth(((xx * 16) + 128), ((yy * 16) + 190), 0, obj_indoor)
    o_indoor.tele_x = dest_x
    o_indoor.tele_y = dest_y
    var o_indoor2 = instance_create_depth((x + o.b_x[decor_id][image_index]), (y + o.b_y[decor_id][image_index]), 0, obj_indoor)
    o_indoor2.tele_x = (((xx * 16) + 8) + 128)
    o_indoor2.tele_y = (((yy * 16) + 5) + 190)
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 6), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 6), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 6), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 432, (xx + 6), (yy + 7))
    tilemap_set(o.layer_tileset_floor_indoor, 425, (xx + 6), (yy + 8))
    tilemap_set(o.layer_tileset_floor_indoor, 402, (xx + 6), (yy + 9))
    tilemap_set(o.layer_tileset_floor_indoor, 402, (xx + 6), (yy + 10))
    tilemap_set(o.layer_tileset_floor_indoor, 402, (xx + 6), (yy + 11))
    tilemap_set(o.layer_tileset_floor_indoor, 402, (xx + 6), (yy + 12))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 7), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 7), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 7), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 432, (xx + 7), (yy + 7))
    tilemap_set(o.layer_tileset_floor_indoor, 425, (xx + 7), (yy + 8))
    tilemap_set(o.layer_tileset_floor_indoor, 402, (xx + 7), (yy + 9))
    tilemap_set(o.layer_tileset_floor_indoor, 402, (xx + 7), (yy + 10))
    tilemap_set(o.layer_tileset_floor_indoor, 402, (xx + 7), (yy + 11))
    tilemap_set(o.layer_tileset_floor_indoor, 402, (xx + 7), (yy + 12))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 8), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 8), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 8), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 432, (xx + 8), (yy + 7))
    tilemap_set(o.layer_tileset_floor_indoor, 425, (xx + 8), (yy + 8))
    tilemap_set(o.layer_tileset_floor_indoor, 371, (xx + 8), (yy + 9))
    tilemap_set(o.layer_tileset_floor_indoor, 371, (xx + 8), (yy + 10))
    tilemap_set(o.layer_tileset_floor_indoor, 371, (xx + 8), (yy + 11))
    tilemap_set(o.layer_tileset_floor_indoor, 371, (xx + 8), (yy + 12))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 9), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 9), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 9), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 432, (xx + 9), (yy + 7))
    tilemap_set(o.layer_tileset_floor_indoor, 425, (xx + 9), (yy + 8))
    tilemap_set(o.layer_tileset_floor_indoor, 371, (xx + 9), (yy + 9))
    tilemap_set(o.layer_tileset_floor_indoor, 371, (xx + 9), (yy + 10))
    tilemap_set(o.layer_tileset_floor_indoor, 371, (xx + 9), (yy + 11))
    tilemap_set(o.layer_tileset_floor_indoor, 371, (xx + 9), (yy + 12))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 10), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 10), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 10), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 432, (xx + 10), (yy + 7))
    tilemap_set(o.layer_tileset_floor_indoor, 425, (xx + 10), (yy + 8))
    tilemap_set(o.layer_tileset_floor_indoor, 402, (xx + 10), (yy + 9))
    tilemap_set(o.layer_tileset_floor_indoor, 402, (xx + 10), (yy + 10))
    tilemap_set(o.layer_tileset_floor_indoor, 338, (xx + 10), (yy + 11))
    tilemap_set(o.layer_tileset_floor_indoor, 338, (xx + 10), (yy + 12))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 11), (yy + 4))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 11), (yy + 5))
    tilemap_set(o.layer_tileset_floor_indoor, 400, (xx + 11), (yy + 6))
    tilemap_set(o.layer_tileset_floor_indoor, 432, (xx + 11), (yy + 7))
    tilemap_set(o.layer_tileset_floor_indoor, 425, (xx + 11), (yy + 8))
    tilemap_set(o.layer_tileset_floor_indoor, 402, (xx + 11), (yy + 9))
    tilemap_set(o.layer_tileset_floor_indoor, 402, (xx + 11), (yy + 10))
    tilemap_set(o.layer_tileset_floor_indoor, 338, (xx + 11), (yy + 11))
    tilemap_set(o.layer_tileset_floor_indoor, 338, (xx + 11), (yy + 12))
    tilemap_set(o.layer_tileset_wall_below_indoor, 155, (xx + 3), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 187, (xx + 3), (yy + 3))
    tilemap_set(o.layer_tileset_wall_below_indoor, 155, (xx + 4), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 187, (xx + 4), (yy + 3))
    tilemap_set(o.layer_tileset_wall_below_indoor, 155, (xx + 5), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 187, (xx + 5), (yy + 3))
    tilemap_set(o.layer_tileset_wall_below_indoor, 155, (xx + 6), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 187, (xx + 6), (yy + 3))
    tilemap_set(o.layer_tileset_wall_below_indoor, 155, (xx + 7), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 187, (xx + 7), (yy + 3))
    tilemap_set(o.layer_tileset_wall_below_indoor, 461, (xx + 7), (yy + 4))
    tilemap_set(o.layer_tileset_wall_below_indoor, 462, (xx + 7), (yy + 6))
    tilemap_set(o.layer_tileset_wall_below_indoor, 494, (xx + 7), (yy + 7))
    tilemap_set(o.layer_tileset_wall_below_indoor, 469, (xx + 7), (yy + 8))
    tilemap_set(o.layer_tileset_wall_below_indoor, 465, (xx + 7), (yy + 11))
    tilemap_set(o.layer_tileset_wall_below_indoor, 532, (xx + 7), (yy + 12))
    tilemap_set(o.layer_tileset_wall_below_indoor, 155, (xx + 8), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 187, (xx + 8), (yy + 3))
    tilemap_set(o.layer_tileset_wall_below_indoor, 465, (xx + 8), (yy + 6))
    tilemap_set(o.layer_tileset_wall_below_indoor, 534, (xx + 8), (yy + 8))
    tilemap_set(o.layer_tileset_wall_below_indoor, 527, (xx + 8), (yy + 9))
    tilemap_set(o.layer_tileset_wall_below_indoor, 529, (xx + 8), (yy + 10))
    tilemap_set(o.layer_tileset_wall_below_indoor, 155, (xx + 9), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 187, (xx + 9), (yy + 3))
    tilemap_set(o.layer_tileset_wall_below_indoor, 493, (xx + 9), (yy + 5))
    tilemap_set(o.layer_tileset_wall_below_indoor, 533, (xx + 9), (yy + 11))
    tilemap_set(o.layer_tileset_wall_below_indoor, 155, (xx + 10), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 187, (xx + 10), (yy + 3))
    tilemap_set(o.layer_tileset_wall_below_indoor, 532, (xx + 10), (yy + 6))
    tilemap_set(o.layer_tileset_wall_below_indoor, 499, (xx + 10), (yy + 7))
    tilemap_set(o.layer_tileset_wall_below_indoor, 502, (xx + 10), (yy + 8))
    tilemap_set(o.layer_tileset_wall_below_indoor, 465, (xx + 10), (yy + 9))
    tilemap_set(o.layer_tileset_wall_below_indoor, 465, (xx + 10), (yy + 12))
    tilemap_set(o.layer_tileset_wall_below_indoor, 155, (xx + 11), (yy + 2))
    tilemap_set(o.layer_tileset_wall_below_indoor, 187, (xx + 11), (yy + 3))
    tilemap_set(o.layer_tileset_wall_above_indoor, 93, (xx + 3), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 60, (xx + 3), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 60, (xx + 3), (yy + 2))
    tilemap_set(o.layer_tileset_wall_above_indoor, 60, (xx + 3), (yy + 3))
    tilemap_set(o.layer_tileset_wall_above_indoor, 60, (xx + 3), (yy + 4))
    tilemap_set(o.layer_tileset_wall_above_indoor, 60, (xx + 3), (yy + 5))
    tilemap_set(o.layer_tileset_wall_above_indoor, 60, (xx + 3), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 60, (xx + 3), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 60, (xx + 3), (yy + 8))
    tilemap_set(o.layer_tileset_wall_above_indoor, 60, (xx + 3), (yy + 9))
    tilemap_set(o.layer_tileset_wall_above_indoor, 60, (xx + 3), (yy + 10))
    tilemap_set(o.layer_tileset_wall_above_indoor, 60, (xx + 3), (yy + 11))
    tilemap_set(o.layer_tileset_wall_above_indoor, 60, (xx + 3), (yy + 12))
    tilemap_set(o.layer_tileset_wall_above_indoor, 125, (xx + 3), (yy + 13))
    tilemap_set(o.layer_tileset_wall_above_indoor, 91, (xx + 4), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 123, (xx + 4), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 27, (xx + 4), (yy + 13))
    tilemap_set(o.layer_tileset_wall_above_indoor, 91, (xx + 5), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 123, (xx + 5), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 27, (xx + 5), (yy + 13))
    tilemap_set(o.layer_tileset_wall_above_indoor, 91, (xx + 6), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 123, (xx + 6), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 27, (xx + 6), (yy + 13))
    tilemap_set(o.layer_tileset_wall_above_indoor, 91, (xx + 7), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 123, (xx + 7), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 27, (xx + 7), (yy + 13))
    tilemap_set(o.layer_tileset_wall_above_indoor, 91, (xx + 8), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 123, (xx + 8), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 27, (xx + 8), (yy + 13))
    tilemap_set(o.layer_tileset_wall_above_indoor, 91, (xx + 9), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 123, (xx + 9), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 27, (xx + 9), (yy + 13))
    tilemap_set(o.layer_tileset_wall_above_indoor, 91, (xx + 10), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 123, (xx + 10), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 27, (xx + 10), (yy + 13))
    tilemap_set(o.layer_tileset_wall_above_indoor, 91, (xx + 11), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 123, (xx + 11), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 27, (xx + 11), (yy + 13))
    tilemap_set(o.layer_tileset_wall_above_indoor, 94, (xx + 12), (yy + 0))
    tilemap_set(o.layer_tileset_wall_above_indoor, 58, (xx + 12), (yy + 1))
    tilemap_set(o.layer_tileset_wall_above_indoor, 58, (xx + 12), (yy + 2))
    tilemap_set(o.layer_tileset_wall_above_indoor, 58, (xx + 12), (yy + 3))
    tilemap_set(o.layer_tileset_wall_above_indoor, 58, (xx + 12), (yy + 4))
    tilemap_set(o.layer_tileset_wall_above_indoor, 58, (xx + 12), (yy + 5))
    tilemap_set(o.layer_tileset_wall_above_indoor, 58, (xx + 12), (yy + 6))
    tilemap_set(o.layer_tileset_wall_above_indoor, 58, (xx + 12), (yy + 7))
    tilemap_set(o.layer_tileset_wall_above_indoor, 58, (xx + 12), (yy + 8))
    tilemap_set(o.layer_tileset_wall_above_indoor, 58, (xx + 12), (yy + 9))
    tilemap_set(o.layer_tileset_wall_above_indoor, 58, (xx + 12), (yy + 10))
    tilemap_set(o.layer_tileset_wall_above_indoor, 58, (xx + 12), (yy + 11))
    tilemap_set(o.layer_tileset_wall_above_indoor, 58, (xx + 12), (yy + 12))
    tilemap_set(o.layer_tileset_wall_above_indoor, 126, (xx + 12), (yy + 13))
    instance_create_depth(((xx * 16) + 152), ((yy * 16) + 138), 0, obj_door_gears)
    return;
}

