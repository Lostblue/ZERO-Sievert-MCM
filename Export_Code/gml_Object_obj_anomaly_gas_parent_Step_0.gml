var chance = obj_controller.place_radius[ano_id]
if (global.low_spec == 0)
{
    if scr_chance(chance)
    {
        var d = ((obj_controller.place_radius[ano_id] * 16) / 2)
        var a = (15 << 0)
        var c = obj_particles_controller
        part_emitter_region(c.particles_system[a], c.partciles_emitter[a], (x - d), (x + d), (y - d), (y + d), 0, 1)
        part_emitter_burst(c.particles_system[a], c.partciles_emitter[a], c.particles_type[a], c.particle_amount[a])
    }
}
