scr_load_macro()
scr_area_data()
audio_master_gain(0)
area = (1 << 0)
state = (0 << 0)
finish = 0
time_beetween_generation = 30
alarm[2] = time_beetween_generation
debug = 0
if (debug == 0)
    instance_create_depth(x, y, -9999, obj_loading_map)
ini_open(global.save_inventory)
area = ini_read_real("Map", "Map id", 0)
from_area = ini_read_real("Map", "From which map", 0)
ini_close()
var _extra = 0
if (area == (6 << 0))
    _extra = 1600
room_width = area_width[area]
map_height = area_height[area]
room_height = ((area_height[area] + 3600) + _extra)
for (var i = 0; i < (19 << 0); i++)
    bug_map[i] = 0
bug_found = 0
grid_map_w = (room_width div 32)
grid_map_h = (map_height div 32)
grid_tile_w = (room_width div 16)
grid_tile_h = (map_height div 16)
g_indoor_w = (room_width div 16)
g_indoor_h = (room_height div 16)
global.player_is_indoor = 0
grid_map = ds_grid_create(grid_map_w, grid_map_h)
ds_grid_clear(grid_map, -7)
grid_tile = ds_grid_create(grid_tile_w, grid_tile_h)
ds_grid_clear(grid_tile, -7)
grid_floor2 = ds_grid_create(grid_tile_w, grid_tile_h)
ds_grid_clear(grid_floor2, -1)
grid_building = ds_grid_create(grid_tile_w, grid_tile_h)
ds_grid_clear(grid_building, (0 << 0))
grid_fence = ds_grid_create(grid_tile_w, grid_tile_h)
ds_grid_clear(grid_fence, -1)
grid_rw = (room_width div 8)
grid_rh = (room_height div 8)
grid_radiation = ds_grid_create(grid_rw, grid_rh)
ds_grid_clear(grid_radiation, 0)
surf_radiation = -4
grid_strada_w = (room_width div 96)
grid_strada_h = (room_height div 96)
grid_strada = ds_grid_create(grid_strada_w, grid_strada_h)
ds_grid_clear(grid_strada, -7)
grid_train_w = (room_width div 96)
grid_train_h = (map_height div 96)
grid_train = ds_grid_create(grid_train_w, grid_train_h)
ds_grid_clear(grid_train, -7)
grid_parking_w = (room_width div 96)
grid_parking_h = (room_height div 96)
grid_parking = ds_grid_create(grid_parking_w, grid_parking_h)
ds_grid_clear(grid_parking, -7)
grid_marciapiede = ds_grid_create(grid_tile_w, grid_tile_h)
ds_grid_clear(grid_marciapiede, -7)
grid_water = ds_grid_create(grid_tile_w, g_indoor_h)
ds_grid_clear(grid_water, -7)
grid_indoor = ds_grid_create(g_indoor_w, g_indoor_h)
ds_grid_clear(grid_indoor, 0)
grid_light_indoor = ds_grid_create(g_indoor_w, g_indoor_h)
ds_grid_clear(grid_light_indoor, (1 << 0))
grid_48_x = (room_width div 48)
grid_48_y = (map_height div 48)
generator_startx = (grid_map_w div 2)
generator_starty = (grid_map_h div 2)
controllerx = generator_startx
controllery = generator_starty
debug_controller_x = 0
debug_controller_y = 0
offset_solid_dai_margini = 6
train_start_x = 0
train_start_y = 0
train_stop_x = 0
train_stop_y = 0
zaton_stop_train_x = 0
zaton_stop_train_y = 0
layer_create(100, "road_layer")
var road_tileset_sprite = 12
if (area == (7 << 0))
    road_tileset_sprite = 14
if (area == (1 << 0))
    road_tileset_sprite = 13
if (area == (3 << 0))
    road_tileset_sprite = 11
if (area == (8 << 0))
    road_tileset_sprite = 11
if (area == (6 << 0))
    road_tileset_sprite = 11
layer_tileset_road = layer_tilemap_create("road_layer", 0, 0, road_tileset_sprite, grid_strada_w, grid_strada_h)
layer_create(75, "railroad_layer")
layer_tileset_railroad = layer_tilemap_create("railroad_layer", 0, 0, 19, grid_train_w, grid_train_h)
layer_create(125, "water_layer")
layer_tileset_water = layer_tilemap_create("water_layer", 0, 0, 10, grid_tile_w, g_indoor_h)
var k = (0 << 0)
water_tile_off[k] = 0
water_tile_off_dx[k] = 8
water_tile_off_sx[k] = -8
water_tile_off_su[k] = -8
water_tile_off_giu[k] = 8
k = (1 << 0)
water_tile_off[k] = 2
water_tile_off_dx[k] = 8
water_tile_off_sx[k] = -8
water_tile_off_su[k] = 8
water_tile_off_giu[k] = 8
k = (2 << 0)
water_tile_off[k] = 1
water_tile_off_dx[k] = 16
water_tile_off_sx[k] = -16
water_tile_off_su[k] = -16
water_tile_off_giu[k] = 16
k = (3 << 0)
water_tile_off[k] = 3
water_tile_off_dx[k] = 8
water_tile_off_sx[k] = -8
water_tile_off_su[k] = -16
water_tile_off_giu[k] = 0
var j = 0
water_solid_cell[j] = 12
j++
water_solid_cell[j] = 13
j++
water_solid_cell[j] = 14
j++
water_solid_cell[j] = 28
j++
water_solid_cell[j] = 30
j++
water_solid_cell[j] = 31
j++
water_solid_cell[j] = 47
j++
water_solid_cell[j] = 63
j++
water_solid_cell[j] = 62
j++
water_solid_cell[j] = 60
j++
water_solid_cell[j] = 76
j++
water_solid_cell[j] = 61
j++
water_solid_cell[j] = 77
j++
water_solid_cell[j] = 44
j++
water_solid_cell[j] = 45
j++
water_solid_cell[j] = 46
j++
water_solid_cell[j] = 78
layer_create(90, "parking_layer")
layer_tileset_parking = layer_tilemap_create("parking_layer", 0, 0, 17, grid_parking_w, grid_parking_h)
layer_create(200, "floor_layer")
layer_create(-50, "fence_layer")
layer_create(-8400, "wall_above_layer")
layer_create(-8200, "wall_below_layer")
layer_create(50, "fence_shadow_layer")
layer_create(175, "wall_swamp")
layer_create(190, "indoor_floor")
layer_create(25, "indoor_wall_below")
layer_create(-8300, "indoor_wall_above")
layer_create(-8450, "cartelli_layer")
layer_tileset_floor = layer_tilemap_create("floor_layer", 0, 0, area_tileset_floor[area], grid_tile_w, grid_tile_h)
layer_tileset_wall_above = layer_tilemap_create("wall_above_layer", 0, 0, area_tileset_wall[area], grid_tile_w, grid_tile_h)
layer_tileset_wall_below = layer_tilemap_create("wall_below_layer", 0, 0, area_tileset_wall[area], grid_tile_w, grid_tile_h)
grid_w_i = ds_grid_create(grid_tile_w, g_indoor_h)
ds_grid_clear(grid_w_i, 0)
layer_tileset_floor_indoor = layer_tilemap_create("indoor_floor", 0, 0, 3, grid_tile_w, g_indoor_h)
layer_tileset_wall_below_indoor = layer_tilemap_create("indoor_wall_below", 0, 0, 3, grid_tile_w, g_indoor_h)
layer_tileset_wall_above_indoor = layer_tilemap_create("indoor_wall_above", 0, 0, 3, grid_tile_w, g_indoor_h)
layer_tileset_cartelli = layer_tilemap_create("cartelli_layer", 0, 0, 3, grid_tile_w, g_indoor_h)
surface_map = -4
surface_floor2 = -4
can_draw_surf_floor2 = 0
grid_map = 0
layer_create(-11000, "layer_mouse")
layer_create(-10000, "layer_draw_item")
layer_create(-9900, "layer_draw_inv_hud")
layer_create(-9500, "layer_light")
instance_create_depth(0, 0, 0, obj_player)
instance_create_layer(0, 0, "layer_draw_inv_hud", obj_controller)
instance_create_layer(0, 0, "layer_draw_inv_hud", obj_sound_controller)
instance_create_layer(0, 0, "layer_draw_inv_hud", obj_particles_controller)
instance_create_layer(0, 0, "layer_light", obj_light_controller)
instance_create_layer(0, 0, "layer_mouse", obj_mouse)
instance_create_depth(0, 0, 0, obj_object_shadow)
instance_create_depth(0, 0, 0, obj_shader_controller)
instance_create_depth(0, 0, 0, obj_meteo_controller)
instance_create_depth(0, 0, 0, obj_minimap)
instance_create_depth(0, 0, 0, obj_light_general)
