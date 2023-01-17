if instance_exists(obj_player)
{
    x = obj_player.x
    y = obj_player.y
    var o = obj_map_generator
    depth = -9890
    var camx = camera_get_view_x(view_camera[0])
    var camy = camera_get_view_y(view_camera[0])
    var cam_w = camera_get_view_width(view_camera[0])
    var cam_h = camera_get_view_height(view_camera[0])
    if (room == room1)
    {
        if (global.player_is_indoor == 0)
        {
            if (obj_map_generator.area == (4 << 0))
            {
                var offset = 100
                var a = (33 << 0)
                part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), ((camx + cam_w) + offset), (camy - offset), ((camy + cam_h) + offset), 0, 0)
                if scr_chance(50)
                    part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], particle_amount[a])
            }
            if (obj_map_generator.area == (1 << 0) || obj_map_generator.area == (2 << 0) || obj_map_generator.area == (3 << 0) || obj_map_generator.area == (4 << 0) || obj_map_generator.area == (6 << 0))
            {
                if (obj_player.y < o.map_height)
                {
                    offset = 100
                    a = (35 << 0)
                    part_emitter_region(particles_system[a], partciles_emitter[a], camx, ((camx + cam_w) + offset), (camy - offset), ((camy + cam_h) + offset), 0, 0)
                    if scr_chance(25)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], particle_amount[a])
                }
            }
        }
    }
    if (room == room1)
    {
        if (global.player_is_indoor == 0)
        {
            switch global.meteo_rain
            {
                case (0 << 0):
                    global.meteo_rain_alpha = 0
                    break
                case (1 << 0):
                    var offsetx = 64
                    var region_h = 16
                    if scr_chance(75)
                    {
                        a = (3 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offsetx), ((camx + cam_w) + offsetx), (camy - region_h), camy, 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    }
                    if scr_chance(40)
                    {
                        a = (4 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], camx, (camx + cam_w), camy, (camy + cam_h), 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    }
                    break
                case (2 << 0):
                    offsetx = 64
                    region_h = 16
                    if scr_chance(100)
                    {
                        a = (3 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offsetx), ((camx + cam_w) + offsetx), (camy - region_h), camy, 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 2)
                    }
                    if scr_chance(60)
                    {
                        a = (4 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], camx, (camx + cam_w), camy, (camy + cam_h), 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    }
                    break
                case (3 << 0):
                    offsetx = 64
                    region_h = 16
                    if scr_chance(100)
                    {
                        a = (3 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offsetx), ((camx + cam_w) + offsetx), (camy - region_h), camy, 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 11)
                    }
                    if scr_chance(100)
                    {
                        a = (4 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], camx, (camx + cam_w), camy, (camy + cam_h), 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 8)
                    }
                    break
                case (10 << 0):
                    offsetx = 64
                    region_h = 16
                    if scr_chance(75)
                    {
                        a = (5 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offsetx), ((camx + cam_w) + offsetx), (camy - region_h), camy, 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    }
                    if scr_chance(40)
                    {
                        a = (6 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], camx, (camx + cam_w), camy, (camy + cam_h), 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    }
                    break
                case (11 << 0):
                    offsetx = 64
                    region_h = 16
                    if scr_chance(100)
                    {
                        a = (5 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offsetx), ((camx + cam_w) + offsetx), (camy - region_h), camy, 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 2)
                    }
                    if scr_chance(60)
                    {
                        a = (6 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], camx, (camx + cam_w), camy, (camy + cam_h), 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 1)
                    }
                    break
                case (12 << 0):
                    offsetx = 64
                    region_h = 16
                    if scr_chance(100)
                    {
                        a = (5 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offsetx), ((camx + cam_w) + offsetx), (camy - region_h), camy, 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 11)
                    }
                    if scr_chance(100)
                    {
                        a = (6 << 0)
                        part_emitter_region(particles_system[a], partciles_emitter[a], camx, (camx + cam_w), camy, (camy + cam_h), 0, 0)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], 8)
                    }
                    break
            }

            switch global.meteo_fog
            {
                case (4 << 0):
                    break
                case (5 << 0):
                    offset = 100
                    a = (33 << 0)
                    part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), ((camx + cam_w) + offset), (camy - offset), ((camy + cam_h) + offset), 0, 0)
                    if scr_chance(50)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], particle_amount[a])
                    break
                case (6 << 0):
                    offset = 100
                    a = (33 << 0)
                    part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), ((camx + cam_w) + offset), (camy - offset), ((camy + cam_h) + offset), 0, 0)
                    if scr_chance(100)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], particle_amount[a])
                    break
                case (7 << 0):
                    offset = 100
                    a = (34 << 0)
                    part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), ((camx + cam_w) + offset), (camy - offset), ((camy + cam_h) + offset), 0, 0)
                    if scr_chance(50)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], particle_amount[a])
                    break
                case (8 << 0):
                    offset = 100
                    a = (34 << 0)
                    part_emitter_region(particles_system[a], partciles_emitter[a], (camx - offset), ((camx + cam_w) + offset), (camy - offset), ((camy + cam_h) + offset), 0, 0)
                    if scr_chance(100)
                        part_emitter_burst(particles_system[a], partciles_emitter[a], particles_type[a], particle_amount[a])
                    break
                default:

            }

        }
    }
}
