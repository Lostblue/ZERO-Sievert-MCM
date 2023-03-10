radiation_amount_shader = shader_get_uniform(shd_gray, "gray_amount")
global.night_vision = 0
radiation_amount = 0
shader_radiation_time = shader_get_uniform(shd_radiation, "grain_time")
shader_radiation_intensity = shader_get_uniform(shd_radiation, "grain_intensity")
surface_inventory = -4
global.surface_nvg = -4
contrast_amount = -0.25
brightness_amount = 0.17
gamma_amount = 1
grain_amount = 0.2
uni_time = shader_get_uniform(shd_watcher_attack1, "time")
var_time_var = 0
uni_mouse_pos = shader_get_uniform(shd_watcher_attack1, "mouse_pos")
var_mouse_pos_x = (mouse_x - camera_get_view_x(0))
var_mouse_pos_y = (mouse_y - camera_get_view_y(0))
uni_resolution = shader_get_uniform(shd_watcher_attack1, "resolution")
var_resolution_x = camera_get_view_width(0)
var_resolution_y = camera_get_view_height(0)
uni_circle_radius = shader_get_uniform(shd_watcher_attack1, "circleRadius")
var_circle_radius = 0.25
uni_circle_zoom_min = shader_get_uniform(shd_watcher_attack1, "minZoom")
var_circle_zoom_min = 0.4
uni_circle_zoom_max = shader_get_uniform(shd_watcher_attack1, "maxZoom")
var_circle_zoom_max = 0.6
