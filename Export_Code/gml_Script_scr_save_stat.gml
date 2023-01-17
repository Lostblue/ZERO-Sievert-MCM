ini_open(global.save_general)
for (var i = 0; i < global.stat_quante; i++)
    ini_write_real("Statistics", string(i), global.stat_amount[i])
ini_close()
