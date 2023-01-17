function scr_b_forest_loner_10x10_1(argument0, argument1) //gml_Script_scr_b_forest_loner_10x10_1
{
    var xx = argument0
    var yy = argument1
    ds_grid_set(grid_fence, (xx + 9), (yy + 6), 1468)
    ds_grid_set(grid_fence, (xx + 9), (yy + 5), 1468)
    ds_grid_set(grid_fence, (xx + 0), (yy + 6), 1468)
    ds_grid_set(grid_fence, (xx + 0), (yy + 5), 1468)
    ds_grid_set(grid_fence, (xx + 9), (yy + 4), 1468)
    ds_grid_set(grid_fence, (xx + 9), (yy + 3), 1468)
    ds_grid_set(grid_fence, (xx + 9), (yy + 2), 1468)
    ds_grid_set(grid_fence, (xx + 9), (yy + 1), 1468)
    ds_grid_set(grid_fence, (xx + 9), (yy + 0), 1468)
    ds_grid_set(grid_fence, (xx + 8), (yy + 0), 1468)
    ds_grid_set(grid_fence, (xx + 7), (yy + 0), 1468)
    ds_grid_set(grid_fence, (xx + 6), (yy + 0), 1468)
    ds_grid_set(grid_fence, (xx + 5), (yy + 0), 1468)
    ds_grid_set(grid_fence, (xx + 4), (yy + 0), 1468)
    ds_grid_set(grid_fence, (xx + 3), (yy + 0), 1468)
    ds_grid_set(grid_fence, (xx + 2), (yy + 0), 1468)
    ds_grid_set(grid_fence, (xx + 1), (yy + 0), 1468)
    ds_grid_set(grid_fence, (xx + 0), (yy + 4), 1468)
    ds_grid_set(grid_fence, (xx + 0), (yy + 3), 1468)
    ds_grid_set(grid_fence, (xx + 0), (yy + 2), 1468)
    ds_grid_set(grid_fence, (xx + 0), (yy + 1), 1468)
    ds_grid_set(grid_fence, (xx + 0), (yy + 0), 1468)
    scr_place_obj_map(34, ((xx * 16) + 16), ((yy * 16) + 64))
    scr_place_obj_map(18, ((xx * 16) + 80), ((yy * 16) + 112))
    instance_create_depth(((xx * 16) + 64), ((yy * 16) + 96), 0, obj_loner_novice)
    instance_create_depth(((xx * 16) + 96), ((yy * 16) + 96), 0, obj_loner_novice)
    instance_create_depth(((xx * 16) + 80), ((yy * 16) + 80), 0, obj_loner_novice)
    instance_create_depth(((xx * 16) + 32), ((yy * 16) + 80), 0, obj_chest_wood_box)
    instance_create_depth(((xx * 16) + 128), ((yy * 16) + 32), 0, obj_chest_medication_box)
    return;
}

