var _u_pos = u_pos
var _u_pos2 = u_pos2
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if (global.fog_of_war_draw == 1)
{
    if instance_exists(obj_player)
    {
        var _vb = vb
        var _camx = round(camx)
        var _camy = round(camy)
        if (!surface_exists(surface_shadow))
        {
            surface_shadow = surface_create(surf_w, surf_h)
            var _surf_a = 0
            if (global.fog_fow_on == 1)
                _surf_a = 1
            surface_set_target(surface_shadow)
            draw_clear_alpha(c_black, _surf_a)
            if (global.fog_fow_on == 1)
            {
                var _angle_diff = (global.angle_fow / 2)
                var _px = (obj_player.x - _camx)
                var _py = (obj_player.y - _camy)
                var _dir = (point_direction(mouse_x, mouse_y, obj_player.x, obj_player.y) + 360)
                var _dir2 = (_dir + 180)
                var _off = 450
                var _v1x = (_px + lengthdir_x(_off, (_dir + _angle_diff)))
                var _v1y = (_py + lengthdir_y(_off, (_dir + _angle_diff)))
                var _v2x = (_px + lengthdir_x(_off, (_dir2 + _angle_diff)))
                var _v2y = (_py + lengthdir_y(_off, (_dir2 + _angle_diff)))
                var _v3x = (_px + lengthdir_x(_off, (_dir2 - _angle_diff)))
                var _v3y = (_py + lengthdir_y(_off, (_dir2 - _angle_diff)))
                var _v4x = (_px + lengthdir_x(_off, (_dir - _angle_diff)))
                var _v4y = (_py + lengthdir_y(_off, (_dir - _angle_diff)))
                draw_primitive_begin(6)
                gpu_set_blendmode(bm_subtract)
                draw_vertex(_px, _py)
                draw_vertex(_v1x, _v1y)
                draw_vertex(_v2x, _v2y)
                draw_vertex(_v3x, _v3y)
                draw_vertex(_v4x, _v4y)
                draw_primitive_end()
                draw_sprite(s_glow_fow, 0, _px, _py)
                gpu_set_blendmode(bm_normal)
            }
            shader_set(shd_fog_new)
            shader_set_uniform_f(light_pos, (obj_player.x - _camx), (obj_player.y - _camy))
            shader_set_uniform_f(cam_pos, _camx, _camy)
            vertex_submit(_vb, 4, -1)
            shader_reset()
            surface_reset_target()
        }
        draw_surface_ext(surface_shadow, _camx, _camy, 1, 1, 0, c_black, global.fog_alpha)
        if (surface_reset == 1)
        {
            surface_free(surface_shadow)
            surface_reset = 0
        }
    }
}
