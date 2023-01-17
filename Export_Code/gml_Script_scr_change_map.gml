var which_map = argument0
var which_room = argument1
ini_open(global.save_inventory)
ini_write_real("Map", "Map id", which_map)
ini_write_real("Map", "From which map", from)
ini_close()
room_goto(which_room)
