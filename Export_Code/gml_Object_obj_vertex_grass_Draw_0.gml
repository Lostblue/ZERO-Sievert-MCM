if (start_drawing == 1)
{
    gpu_set_alphatestenable(1)
    if bugfix
        gpu_set_ztestenable(1)
    if (grass_numero > 0)
    {
        if (grass_animate == 1)
        {
            for (var i = 0; i < array_length_1d(vbuff); i++)
            {
                if (global.grass_draw[i] == 1)
                {
                    if (global.erba_dinamica == 1)
                    {
                        shader_set(shd_grass)
                        shader_set_uniform_f(uni_time, current_time)
                        shader_set_uniform_f(uni_dist, (0.02 * grass_wind))
                        shader_set_uniform_f(uni_slow, (200 / grass_speed))
                        shader_set_uniform_f(uni_spd, wind_hsp)
                        shader_set_uniform_f(uni_patbool, grass_pattern)
                        shader_set_uniform_f(uni_pattern, (0.1 / pattern_size))
                    }
                    vertex_submit(vbuff[i], 4, tex[i])
                    shader_reset()
                }
            }
        }
    }
    gpu_set_alphatestenable(0)
    if bugfix
        gpu_set_ztestenable(0)
}
