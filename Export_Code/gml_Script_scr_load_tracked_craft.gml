ini_open(global.save_general)
for (var m = 0; m < global.last_stastic_craft; m++)
    global.craft_track[m] = ini_read_real("Track items", ("craft_" + string(m)), 0)
ini_close()
