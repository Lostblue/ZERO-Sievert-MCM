var xx = argument0
var yy = argument1
ds_grid_set(grid_fence, (xx + 0), (yy + 13), 1468)
ds_grid_set(grid_fence, (xx + 0), (yy + 12), 1468)
ds_grid_set(grid_fence, (xx + 0), (yy + 11), 1468)
ds_grid_set(grid_fence, (xx + 0), (yy + 10), 1468)
ds_grid_set(grid_fence, (xx + 0), (yy + 9), 1468)
ds_grid_set(grid_fence, (xx + 0), (yy + 5), 1468)
ds_grid_set(grid_fence, (xx + 0), (yy + 4), 1468)
ds_grid_set(grid_fence, (xx + 0), (yy + 3), 1468)
ds_grid_set(grid_fence, (xx + 0), (yy + 2), 1468)
ds_grid_set(grid_fence, (xx + 0), (yy + 1), 1468)
ds_grid_set(grid_fence, (xx + 0), (yy + 0), 1468)
ds_grid_set(grid_fence, (xx + 1), (yy + 0), 1468)
ds_grid_set(grid_fence, (xx + 2), (yy + 0), 1468)
ds_grid_set(grid_fence, (xx + 3), (yy + 0), 1468)
ds_grid_set(grid_fence, (xx + 4), (yy + 0), 1468)
ds_grid_set(grid_fence, (xx + 5), (yy + 0), 1468)
ds_grid_set(grid_fence, (xx + 9), (yy + 0), 1468)
ds_grid_set(grid_fence, (xx + 10), (yy + 0), 1468)
ds_grid_set(grid_fence, (xx + 11), (yy + 0), 1468)
ds_grid_set(grid_fence, (xx + 12), (yy + 0), 1468)
ds_grid_set(grid_fence, (xx + 13), (yy + 0), 1468)
ds_grid_set(grid_fence, (xx + 14), (yy + 0), 1468)
ds_grid_set(grid_fence, (xx + 14), (yy + 1), 1468)
ds_grid_set(grid_fence, (xx + 14), (yy + 2), 1468)
ds_grid_set(grid_fence, (xx + 14), (yy + 3), 1468)
ds_grid_set(grid_fence, (xx + 14), (yy + 4), 1468)
ds_grid_set(grid_fence, (xx + 14), (yy + 5), 1468)
ds_grid_set(grid_fence, (xx + 14), (yy + 9), 1468)
ds_grid_set(grid_fence, (xx + 14), (yy + 10), 1468)
ds_grid_set(grid_fence, (xx + 14), (yy + 11), 1468)
ds_grid_set(grid_fence, (xx + 14), (yy + 12), 1468)
ds_grid_set(grid_fence, (xx + 14), (yy + 13), 1468)
ds_grid_set(grid_fence, (xx + 14), (yy + 14), 1468)
ds_grid_set(grid_fence, (xx + 13), (yy + 14), 1468)
ds_grid_set(grid_fence, (xx + 12), (yy + 14), 1468)
ds_grid_set(grid_fence, (xx + 11), (yy + 14), 1468)
ds_grid_set(grid_fence, (xx + 10), (yy + 14), 1468)
ds_grid_set(grid_fence, (xx + 9), (yy + 14), 1468)
ds_grid_set(grid_fence, (xx + 5), (yy + 14), 1468)
ds_grid_set(grid_fence, (xx + 4), (yy + 14), 1468)
ds_grid_set(grid_fence, (xx + 3), (yy + 14), 1468)
ds_grid_set(grid_fence, (xx + 2), (yy + 14), 1468)
ds_grid_set(grid_fence, (xx + 1), (yy + 14), 1468)
ds_grid_set(grid_fence, (xx + 0), (yy + 14), 1468)
scr_place_obj_map(18, ((xx * 16) + 112), ((yy * 16) + 112))
scr_place_obj_map(15, ((xx * 16) + 144), ((yy * 16) + 192))
scr_place_obj_map(15, ((xx * 16) + 96), ((yy * 16) + 192))
scr_place_obj_map(14, ((xx * 16) + 144), ((yy * 16) + 64))
scr_place_obj_map(14, ((xx * 16) + 96), ((yy * 16) + 64))
scr_place_obj_map(12, ((xx * 16) + 48), ((yy * 16) + 160))
scr_place_obj_map(12, ((xx * 16) + 48), ((yy * 16) + 112))
scr_place_obj_map(13, ((xx * 16) + 176), ((yy * 16) + 160))
scr_place_obj_map(13, ((xx * 16) + 176), ((yy * 16) + 112))
scr_place_obj_map(38, ((xx * 16) + 176), ((yy * 16) + 32))
scr_place_obj_map(38, ((xx * 16) + 176), ((yy * 16) + 224))
scr_place_obj_map(38, ((xx * 16) + 16), ((yy * 16) + 224))
scr_place_obj_map(38, ((xx * 16) + 16), ((yy * 16) + 32))
instance_create_depth(((xx * 16) + 96), ((yy * 16) + 144), 0, obj_enemy_human_bandit_novice)
instance_create_depth(((xx * 16) + 144), ((yy * 16) + 144), 0, obj_enemy_human_bandit_novice)
instance_create_depth(((xx * 16) + 80), ((yy * 16) + 80), 0, obj_enemy_human_bandit_novice)
instance_create_depth(((xx * 16) + 32), ((yy * 16) + 48), 0, obj_chest_medication_box)
instance_create_depth(((xx * 16) + 208), ((yy * 16) + 48), 0, obj_weapon_box_common)
