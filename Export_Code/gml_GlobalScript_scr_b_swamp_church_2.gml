function scr_b_swamp_church_2(argument0, argument1) //gml_Script_scr_b_swamp_church_2
{
    var xx = argument0
    var yy = argument1
    ds_grid_set(grid_fence, (xx + 19), (yy + 8), 1474)
    ds_grid_set(grid_fence, (xx + 19), (yy + 9), 1474)
    ds_grid_set(grid_fence, (xx + 19), (yy + 10), 1474)
    ds_grid_set(grid_fence, (xx + 19), (yy + 11), 1474)
    ds_grid_set(grid_fence, (xx + 19), (yy + 12), 1474)
    ds_grid_set(grid_fence, (xx + 19), (yy + 13), 1474)
    ds_grid_set(grid_fence, (xx + 19), (yy + 14), 1474)
    ds_grid_set(grid_fence, (xx + 19), (yy + 15), 1474)
    ds_grid_set(grid_fence, (xx + 19), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 18), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 17), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 16), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 15), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 12), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 11), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 10), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 9), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 8), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 7), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 6), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 5), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 4), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 3), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 2), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 16), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 15), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 14), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 13), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 12), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 11), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 10), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 9), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 8), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 7), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 6), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 5), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 4), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 3), 1474)
    ds_grid_set(grid_fence, (xx + 1), (yy + 2), 1474)
    ds_grid_set(grid_fence, (xx + 2), (yy + 2), 1474)
    ds_grid_set(grid_fence, (xx + 3), (yy + 2), 1474)
    ds_grid_set(grid_fence, (xx + 4), (yy + 2), 1474)
    ds_grid_set(grid_fence, (xx + 5), (yy + 2), 1474)
    ds_grid_set(grid_fence, (xx + 6), (yy + 2), 1474)
    ds_grid_set(grid_fence, (xx + 7), (yy + 2), 1474)
    ds_grid_set(grid_fence, (xx + 8), (yy + 2), 1474)
    ds_grid_set(grid_fence, (xx + 9), (yy + 2), 1474)
    scr_place_obj_map(18, ((xx * 16) + 256), ((yy * 16) + 304))
    scr_place_obj_map(18, ((xx * 16) + 288), ((yy * 16) + 144))
    scr_place_obj_map(92, ((xx * 16) + 128), ((yy * 16) + 176))
    scr_place_obj_map(92, ((xx * 16) + 96), ((yy * 16) + 176))
    scr_place_obj_map(92, ((xx * 16) + 64), ((yy * 16) + 176))
    scr_place_obj_map(92, ((xx * 16) + 128), ((yy * 16) + 144))
    scr_place_obj_map(92, ((xx * 16) + 96), ((yy * 16) + 144))
    scr_place_obj_map(92, ((xx * 16) + 64), ((yy * 16) + 144))
    scr_place_obj_map(92, ((xx * 16) + 128), ((yy * 16) + 112))
    scr_place_obj_map(92, ((xx * 16) + 96), ((yy * 16) + 112))
    scr_place_obj_map(92, ((xx * 16) + 64), ((yy * 16) + 112))
    scr_place_obj_map(92, ((xx * 16) + 128), ((yy * 16) + 80))
    scr_place_obj_map(92, ((xx * 16) + 96), ((yy * 16) + 80))
    scr_place_obj_map(92, ((xx * 16) + 64), ((yy * 16) + 80))
    scr_place_obj_map(91, ((xx * 16) + 148), ((yy * 16) + 128))
    scr_place_obj_map(90, ((xx * 16) + 192), ((yy * 16) + 144))
    instance_create_depth(((xx * 16) + 208), ((yy * 16) + 288), 0, obj_enemy_spider)
    instance_create_depth(((xx * 16) + 144), ((yy * 16) + 208), 0, obj_enemy_spider)
    instance_create_depth(((xx * 16) + 176), ((yy * 16) + 176), 0, obj_enemy_spider)
    instance_create_depth(((xx * 16) + 80), ((yy * 16) + 224), 0, obj_enemy_spider)
    instance_create_depth(((xx * 16) + 176), ((yy * 16) + 144), 0, obj_weapon_box_common)
    instance_create_depth(((xx * 16) + 288), ((yy * 16) + 160), 0, obj_chest_medication_box)
    return;
}

