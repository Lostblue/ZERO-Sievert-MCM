meteo_dark[(0 << 0)] = 0
meteo_dark[(1 << 0)] = 0.1
meteo_dark[(2 << 0)] = 0.3
meteo_dark[(3 << 0)] = 0.6
meteo_dark[(4 << 0)] = 0
meteo_dark[(5 << 0)] = 0
meteo_dark[(6 << 0)] = 0
meteo_dark[(9 << 0)] = 0
meteo_dark[(10 << 0)] = 0.1
meteo_dark[(11 << 0)] = 0.1
meteo_dark[(12 << 0)] = 0.1
global.meteo_rain = (0 << 0)
global.meteo_fog = (4 << 0)
global.meteo_dark = 0
change_meteo_time = 54000
meteo_rain_prima = (0 << 0)
meteo_fog_prima = (4 << 0)
rad_rain_1_amount = 25
rad_rain_2_amount = 75
rad_rain_3_amount = 200
var i = (1 << 0)
meteo_map[i] = i
meteo_no_rain[i] = 3
meteo_rain1[i] = 2
meteo_rain2[i] = 1
meteo_rain3[i] = 1
meteo_no_fog[i] = 3
meteo_fog1[i] = 1
meteo_fog2[i] = 0
meteo_rad_rain_1[i] = 0
meteo_rad_rain_2[i] = 0
meteo_rad_rain_3[i] = 0
i = (2 << 0)
meteo_map[i] = i
meteo_no_rain[i] = 2
meteo_rain1[i] = 3
meteo_rain2[i] = 2
meteo_rain3[i] = 2
meteo_no_fog[i] = 4
meteo_fog1[i] = 1
meteo_fog2[i] = 1
meteo_rad_rain_1[i] = 0
meteo_rad_rain_2[i] = 0
meteo_rad_rain_3[i] = 0
i = (3 << 0)
meteo_map[i] = i
meteo_no_rain[i] = 4
meteo_rain1[i] = 3
meteo_rain2[i] = 2
meteo_rain3[i] = 2
meteo_no_fog[i] = 4
meteo_fog1[i] = 1
meteo_fog2[i] = 0
meteo_rad_rain_1[i] = 0
meteo_rad_rain_2[i] = 0
meteo_rad_rain_3[i] = 0
i = (4 << 0)
meteo_map[i] = i
meteo_no_rain[i] = 1
meteo_rain1[i] = 1
meteo_rain2[i] = 2
meteo_rain3[i] = 4
meteo_no_fog[i] = 0
meteo_fog1[i] = 2
meteo_fog2[i] = 1
meteo_rad_rain_1[i] = 0
meteo_rad_rain_2[i] = 0
meteo_rad_rain_3[i] = 0
i = (6 << 0)
meteo_map[i] = i
meteo_no_rain[i] = 2
meteo_rain1[i] = 2
meteo_rain2[i] = 2
meteo_rain3[i] = 2
meteo_no_fog[i] = 2
meteo_fog1[i] = 1
meteo_fog2[i] = 1
meteo_rad_rain_1[i] = 0
meteo_rad_rain_2[i] = 0
meteo_rad_rain_3[i] = 0
i = (7 << 0)
meteo_map[i] = i
meteo_no_rain[i] = 4
meteo_rain1[i] = 1
meteo_rain2[i] = 1
meteo_rain3[i] = 1
meteo_no_fog[i] = 4
meteo_fog1[i] = 1
meteo_fog2[i] = 1
meteo_rad_rain_1[i] = 0
meteo_rad_rain_2[i] = 0
meteo_rad_rain_3[i] = 0
for (i = 0; i < array_length_1d(meteo_map); i++)
{
    var map_ = meteo_map[i]
    meteo_rain_list[map_] = ds_list_create()
    repeat meteo_no_rain[i]
        ds_list_add(meteo_rain_list[i], (0 << 0))
    repeat meteo_rain1[i]
        ds_list_add(meteo_rain_list[i], (1 << 0))
    repeat meteo_rain2[i]
        ds_list_add(meteo_rain_list[i], (2 << 0))
    repeat meteo_rain3[i]
        ds_list_add(meteo_rain_list[i], (3 << 0))
    repeat meteo_rad_rain_1[i]
        ds_list_add(meteo_rain_list[i], (10 << 0))
    repeat meteo_rad_rain_2[i]
        ds_list_add(meteo_rain_list[i], (11 << 0))
    repeat meteo_rad_rain_3[i]
        ds_list_add(meteo_rain_list[i], (12 << 0))
    meteo_fog_list[map_] = ds_list_create()
    repeat meteo_no_fog[i]
        ds_list_add(meteo_fog_list[i], (4 << 0))
    repeat meteo_fog1[i]
        ds_list_add(meteo_fog_list[i], (5 << 0))
    repeat meteo_fog2[i]
        ds_list_add(meteo_fog_list[i], (6 << 0))
}
