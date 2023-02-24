function fun_button_pos(argument0, argument1, argument2, argument3, argument4, argument5) //gml_Script_fun_button_pos
{
    menu_button_x[argument0][argument1] = argument4
    menu_button_y[argument0][argument1] = argument5
    menu_button_w[argument0][argument1] = argument2
    menu_button_h[argument0][argument1] = argument3
    return;
}

function fun_button_pos_diff_setting(argument0, argument1, argument2, argument3) //gml_Script_fun_button_pos_diff_setting
{
    menu_button_name[argument0][argument1] = argument2
    menu_button_size[argument0][argument1] = 1
    menu_button_info[argument0][argument1] = 0
    var _h = 0
    if (argument3 == 6 || argument3 == 7)
        _h = 25
    if (argument3 == 6 && room != r_menu)
        argument2 = "apply"
    if (argument3 == 7 && room != r_menu)
        argument2 = "cancel"
    menu_button_x[argument0][argument1] = menu_button_diff_setting_x
    menu_button_y[argument0][argument1] = ((menu_button_diff_setting_y + ((menu_button_1_height + menu_button_sep) * argument3)) + _h)
    menu_button_w[argument0][argument1] = menu_button_width
    menu_button_h[argument0][argument1] = menu_button_1_height
    menu_button_type[argument0][argument1] = (0 << 0)
    return;
}

function fun_assing_to_variable() //gml_Script_fun_assing_to_variable
{
    global.volume_master = menu_button_val[(7 << 0)][(1 << 0)]
    global.volume_radiation = menu_button_val[(7 << 0)][(2 << 0)]
    global.volume_heart = menu_button_val[(7 << 0)][(3 << 0)]
    global.volume_main_menu = menu_button_val[(7 << 0)][(4 << 0)]
    audio_group_set_gain(3, global.volume_radiation, 1)
    audio_group_set_gain(13, global.volume_heart, 1)
    audio_group_set_gain(14, global.volume_main_menu, 1)
    audio_master_gain(global.volume_master)
    global.erba_amount = menu_button_val[(8 << 0)][(1 << 0)]
    global.erba_dinamica = menu_button_val[(8 << 0)][(2 << 0)]
    global.fog_rain = menu_button_val[(8 << 0)][(3 << 0)]
    global.low_spec = menu_button_val[(8 << 0)][(4 << 0)]
    global.fullscreen = menu_button_val[(8 << 0)][(5 << 0)]
    global.fog_enable = menu_button_val[(8 << 0)][(6 << 0)]
    global.fog_alpha = menu_button_val[(8 << 0)][(7 << 0)]
    global.fog_fow_on = menu_button_val[(8 << 0)][(8 << 0)]
    global.toggle_sprint = menu_button_val[(9 << 0)][(1 << 0)]
    global.bunker_animation = menu_button_val[(9 << 0)][(2 << 0)]
    global.hud_item_overlay = menu_button_val[(9 << 0)][(3 << 0)]
    global.ga_collect_data = menu_button_val[(11 << 0)][(1 << 0)]
    return;
}

function fun_save_settings() //gml_Script_fun_save_settings
{
    ini_open("settings.ini")
    ini_write_real("settings", "master volume", global.volume_master)
    ini_write_real("settings", "radiation volume", global.volume_radiation)
    ini_write_real("settings", "heart volume", global.volume_heart)
    ini_write_real("settings", "main volume", global.volume_main_menu)
    ini_write_real("settings", "fog rain", global.fog_rain)
    ini_write_real("settings", "dynamic grass", global.erba_dinamica)
    ini_write_real("settings", "amount grass", global.erba_amount)
    ini_write_real("settings", "low spec", global.low_spec)
    ini_write_real("settings", "fullscreen", global.fullscreen)
    ini_write_real("settings", "fog of war", global.fog_enable)
    ini_write_real("settings", "fog of war alpha", global.fog_alpha)
    ini_write_real("settings", "fog of war surface reset", global.fog_surface_reset)
    ini_write_real("resolution", "resolution", global.resolution)
    ini_write_real("settings", "item_overlay", global.hud_item_overlay)
    ini_write_real("settings", "toggle_sprint", global.toggle_sprint)
    ini_write_real("settings", "bunker_animation", global.bunker_animation)
    ini_write_real("Game analytics", "collect_data", global.ga_collect_data)
    ini_write_real("Game analytics", "FOG FOW", global.fog_fow_on)
    ini_close()
    return;
}

function fun_create_starting_equipment(argument0) //gml_Script_fun_create_starting_equipment
{
    global.trait_selected = argument0
    with (obj_item)
        instance_destroy()
    var grid_x = 100
    var grid_y = 80
    var grid_w = 12
    var grid_h = 5
    var grid_item_ = ds_grid_create(grid_w, grid_h)
    ds_grid_clear(grid_item_, 0)
    for (var i = 0; i < array_length_2d(global.arr_trait_item_id, global.trait_selected); i++)
    {
        var id_item = global.arr_trait_item_id[global.trait_selected][i]
        var placed = 0
        var necessario_w = (sprite_get_width(item_sprite_inv[id_item]) div 16)
        var necessario_h = (sprite_get_height(item_sprite_inv[id_item]) div 16)
        for (var yy = 0; yy < grid_h; yy++)
        {
            for (var xx = 0; xx < grid_w; xx++)
            {
                if (ds_grid_get(grid_item_, xx, yy) == 0)
                {
                    if (placed == 0)
                    {
                        var can_place = 1
                        if ((xx + necessario_w) > grid_w)
                            can_place = 0
                        if ((yy + necessario_h) > grid_h)
                            can_place = 0
                        for (var ix = 0; ix < necessario_w; ix++)
                        {
                            for (var iy = 0; iy < necessario_h; iy++)
                            {
                                if (ds_grid_get(grid_item_, (xx + ix), (yy + iy)) == 1)
                                    can_place = 0
                            }
                        }
                        if (can_place == 1)
                        {
                            for (ix = 0; ix < necessario_w; ix++)
                            {
                                for (iy = 0; iy < necessario_h; iy++)
                                    ds_grid_set(grid_item_, (xx + ix), (yy + iy), 1)
                            }
                            var objx = (grid_x + (xx * 16))
                            var objy = (grid_y + (yy * 16))
                            var oggetto = instance_create_depth(objx, objy, -8000, obj_item)
                            oggetto.my_id = id_item
                            oggetto.qnt = global.arr_trait_item_qnt[global.trait_selected][i]
                            oggetto.my_x = (xx * 16)
                            oggetto.my_y = (yy * 16)
                            oggetto.sprite_index = item_sprite_inv[id_item]
                            placed = 1
                        }
                    }
                }
            }
        }
    }
    ds_grid_destroy(grid_item_)
    return;
}

