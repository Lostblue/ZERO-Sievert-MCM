var eficiency = global.sk_k[(71 << 0)]
global.injector_factor[(0 << 0)] -= (inj_max_hp[injector_id] * eficiency)
global.injector_factor[(1 << 0)] -= (inj_hp_regen[injector_id] * eficiency)
global.injector_factor[(2 << 0)] -= (inj_bleed_rec[injector_id] * eficiency)
global.injector_factor[(3 << 0)] -= inj_bleed_immune[injector_id]
global.injector_factor[(4 << 0)] -= (inj_stamina_max[injector_id] * eficiency)
global.injector_factor[(5 << 0)] -= (inj_stamina_regen[injector_id] * eficiency)
global.injector_factor[(6 << 0)] -= (inj_max_weigth[injector_id] * eficiency)
global.injector_factor[(7 << 0)] -= (inj_rad_regen[injector_id] * eficiency)
global.injector_factor[(8 << 0)] -= (inj_rad_def[injector_id] * eficiency)
global.injector_factor[(9 << 0)] -= (inj_hunger[injector_id] * eficiency)
global.injector_factor[(10 << 0)] -= (inj_hunger_regen[injector_id] * eficiency)
global.injector_factor[(11 << 0)] -= (inj_thirst[injector_id] * eficiency)
global.injector_factor[(12 << 0)] -= (inj_thirst_regen[injector_id] * eficiency)
var a = injector_id
with (obj_player)
{
    hp_max -= (inj_max_hp[a] * eficiency)
    bleed_immune -= inj_bleed_immune[a]
    stamina_max -= (inj_stamina_max[a] * eficiency)
    radiation_defence -= (inj_rad_def[a] * eficiency)
}
instance_destroy()
