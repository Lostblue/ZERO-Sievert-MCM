var xx = argument0
var yy = argument1
scr_place_obj_map(18, ((xx * 16) + 107), ((yy * 16) + 127))
scr_place_obj_map(9, ((xx * 16) + 32), ((yy * 16) + 144))
scr_place_obj_map(9, ((xx * 16) + 80), ((yy * 16) + 64))
scr_place_obj_map(10, ((xx * 16) + 128), ((yy * 16) + 32))
scr_place_obj_map(10, ((xx * 16) + 32), ((yy * 16) + 96))
scr_place_obj_map(11, ((xx * 16) + 128), ((yy * 16) + 128))
scr_place_obj_map(11, ((xx * 16) + 32), ((yy * 16) + 48))
instance_create_depth(((xx * 16) + 112), ((yy * 16) + 64), 0, obj_enemy_spawner_bandit)
instance_create_depth(((xx * 16) + 64), ((yy * 16) + 112), 0, obj_enemy_spawner_bandit)
instance_create_depth(((xx * 16) + 80), ((yy * 16) + 80), 0, obj_enemy_spawner_bandit)
instance_create_depth(((xx * 16) + 128), ((yy * 16) + 144), 0, obj_weapon_box_common)
instance_create_depth(((xx * 16) + 32), ((yy * 16) + 64), 0, obj_chest_tool_box)
