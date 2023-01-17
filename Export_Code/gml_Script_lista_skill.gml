global.skill_hover = -1
global.skill_selected = -1
global.skill_box_now = 0
global.skill_box_max = 8
global.skill_hover_before = global.skill_hover
global.skill_unlocking_now = 0
global.skill_unlocking_max = 60
var ox = 44
var oy = 0
var a = (1 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Transfusion 1"
global.skill_des[a] = "Increase max HP by 10"
global.skill_x[a] = (170 + ox)
global.skill_y[a] = (110 + oy)
global.skill_required[a, 0] = (0 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 10
a = (2 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Transfusion 2"
global.skill_des[a] = "Increase max HP by 10"
global.skill_x[a] = (170 + ox)
global.skill_y[a] = (130 + oy)
global.skill_required[a, 0] = (1 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 10
a = (3 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Mutated Platelet"
global.skill_des[a] = "Restore 0.5% of missing HP every second"
global.skill_x[a] = (170 + ox)
global.skill_y[a] = (150 + oy)
global.skill_required[a, 0] = (5 << 0)
global.skill_required[a, 1] = (9 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0.005
a = (4 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Veteran"
global.skill_des[a] = "+10% weapon damage"
global.skill_x[a] = (170 + ox)
global.skill_y[a] = (190 + oy)
global.skill_required[a, 0] = (3 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 1
global.skill_var_value[a] = 1.1
a = (5 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Integrated Armor"
global.skill_des[a] = "-10% damage received"
global.skill_x[a] = (189 + ox)
global.skill_y[a] = (150 + oy)
global.skill_required[a, 0] = (7 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 1
global.skill_var_value[a] = 0.9
a = (6 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Sixth sense"
global.skill_des[a] = "15% chance to not die from a fatal hit"
global.skill_x[a] = (189 + ox)
global.skill_y[a] = (170 + oy)
global.skill_required[a, 0] = (8 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 15
a = (7 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Strong Blood"
global.skill_des[a] = "-30% chance to bleed"
global.skill_x[a] = (189 + ox)
global.skill_y[a] = (130 + oy)
global.skill_required[a, 0] = (1 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 1
global.skill_var_value[a] = 0.7
a = (8 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Critical shot"
global.skill_des[a] = "15% to kill the target if his HP are less than 20%"
global.skill_x[a] = (210 + ox)
global.skill_y[a] = (150 + oy)
global.skill_required[a, 0] = (5 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 15
a = (9 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Soldier training"
global.skill_des[a] = "+10% accuracy and -10% recoil"
global.skill_x[a] = (151 + ox)
global.skill_y[a] = (150 + oy)
global.skill_required[a, 0] = (10 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 1
global.skill_var_value[a] = 0.9
a = (10 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Basic craftmanship course"
global.skill_des[a] = "Unlock basic gear crafting"
global.skill_x[a] = (151 + ox)
global.skill_y[a] = (130 + oy)
global.skill_required[a, 0] = (1 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0
a = (11 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Master craftmeaship course"
global.skill_des[a] = "Unlock all crafting"
global.skill_x[a] = (151 + ox)
global.skill_y[a] = (170 + oy)
global.skill_required[a, 0] = (12 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0
a = (12 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Advanced craftmanship course"
global.skill_des[a] = "Unlock more crafting"
global.skill_x[a] = (130 + ox)
global.skill_y[a] = (150 + oy)
global.skill_required[a, 0] = (9 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0
a = (13 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Charisma 1"
global.skill_des[a] = "Increase selling price by 5%"
global.skill_x[a] = (149 + ox)
global.skill_y[a] = (88 + oy)
global.skill_required[a, 0] = (0 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0.05
a = (14 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Charisma 2"
global.skill_des[a] = "Increase selling price by 7%"
global.skill_x[a] = (129 + ox)
global.skill_y[a] = (88 + oy)
global.skill_required[a, 0] = (13 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0.07
a = (15 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Friend or the train conductor"
global.skill_des[a] = "Decrease the price of entering a map by 25%"
global.skill_x[a] = (109 + ox)
global.skill_y[a] = (88 + oy)
global.skill_required[a, 0] = (17 << 0)
global.skill_required[a, 1] = (21 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0
a = (16 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Just because it is you"
global.skill_des[a] = "Traders sell more quantity of items"
global.skill_x[a] = (69 + ox)
global.skill_y[a] = (88 + oy)
global.skill_required[a, 0] = (15 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0
a = (17 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Inventory 1"
global.skill_des[a] = "Unlock more items from traders"
global.skill_x[a] = (109 + ox)
global.skill_y[a] = (107 + oy)
global.skill_required[a, 0] = (19 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0
a = (18 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Lost and found"
global.skill_des[a] = "Unlock the trader which sells random stuff"
global.skill_x[a] = (89 + ox)
global.skill_y[a] = (107 + oy)
global.skill_required[a, 0] = (20 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0
a = (19 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Survival kit"
global.skill_des[a] = "Traders sell more medikit and ammo"
global.skill_x[a] = (129 + ox)
global.skill_y[a] = (107 + oy)
global.skill_required[a, 0] = (13 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0
a = (20 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Inventory 2"
global.skill_des[a] = "Unlock more items from traders"
global.skill_x[a] = (109 + ox)
global.skill_y[a] = (128 + oy)
global.skill_required[a, 0] = (17 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0
a = (21 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Quest devourer"
global.skill_des[a] = "Increase quest experience by 30%"
global.skill_x[a] = (109 + ox)
global.skill_y[a] = (69 + oy)
global.skill_required[a, 0] = (22 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0
a = (22 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Deposit 1"
global.skill_des[a] = "You gain 1 more personal chest"
global.skill_x[a] = (129 + ox)
global.skill_y[a] = (69 + oy)
global.skill_required[a, 0] = (13 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0
a = (23 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Deposit 2"
global.skill_des[a] = "You gain two more personal chest"
global.skill_x[a] = (89 + ox)
global.skill_y[a] = (69 + oy)
global.skill_required[a, 0] = (24 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0
a = (24 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Tip"
global.skill_des[a] = "Increase the reward of quests"
global.skill_x[a] = (109 + ox)
global.skill_y[a] = (48 + oy)
global.skill_required[a, 0] = (21 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0
a = (25 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Strong shoulders"
global.skill_des[a] = "Increase max weight by 10"
global.skill_x[a] = (192 + ox)
global.skill_y[a] = (88 + oy)
global.skill_required[a, 0] = (0 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 10
a = (26 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Strong stomach"
global.skill_des[a] = "You can eat everything without be irradiated"
global.skill_x[a] = (212 + ox)
global.skill_y[a] = (88 + oy)
global.skill_required[a, 0] = (25 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 1
global.skill_var_value[a] = 0
a = (27 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Steel skin"
global.skill_des[a] = "Radiations under 90msv/hour don't harm you"
global.skill_x[a] = (232 + ox)
global.skill_y[a] = (88 + oy)
global.skill_required[a, 0] = (29 << 0)
global.skill_required[a, 1] = (33 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 90
a = (28 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Gold digger"
global.skill_des[a] = "Greatly increase the amount of items found in chests"
global.skill_x[a] = (272 + ox)
global.skill_y[a] = (88 + oy)
global.skill_required[a, 0] = (27 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0.7
a = (29 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Cardio"
global.skill_des[a] = "Increase stamina by 15 points"
global.skill_x[a] = (232 + ox)
global.skill_y[a] = (69 + oy)
global.skill_required[a, 0] = (31 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 15
a = (30 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Marathon runner"
global.skill_des[a] = "Consume 30% less stamina while running"
global.skill_x[a] = (252 + ox)
global.skill_y[a] = (69 + oy)
global.skill_required[a, 0] = (32 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 1
global.skill_var_value[a] = 0.7
a = (31 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Mule"
global.skill_des[a] = "You can move while overweighted"
global.skill_x[a] = (212 + ox)
global.skill_y[a] = (69 + oy)
global.skill_required[a, 0] = (25 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 15
a = (32 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Agility"
global.skill_des[a] = "Increase your movement speed by 10%"
global.skill_x[a] = (232 + ox)
global.skill_y[a] = (48 + oy)
global.skill_required[a, 0] = (29 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 10
a = (33 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Good finder"
global.skill_des[a] = "Slightly increase the amount of items found in chests"
global.skill_x[a] = (232 + ox)
global.skill_y[a] = (107 + oy)
global.skill_required[a, 0] = (34 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 0
global.skill_var_value[a] = 0.3
a = (34 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Wanderer"
global.skill_des[a] = "Increase max weight by 5 and gain 5% more expereince"
global.skill_x[a] = (212 + ox)
global.skill_y[a] = (107 + oy)
global.skill_required[a, 0] = (25 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 100
global.skill_var_value[a] = 105
a = (35 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Sharp eye"
global.skill_des[a] = "Increase the amount of secret stash on maps"
global.skill_x[a] = (252 + ox)
global.skill_y[a] = (107 + oy)
global.skill_required[a, 0] = (36 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 1
global.skill_var_value[a] = 1.5
a = (36 << 0)
global.skill_id[a] = a
global.skill_name[a] = "Fast hands"
global.skill_des[a] = "Decrease the looting time by 50%"
global.skill_x[a] = (232 + ox)
global.skill_y[a] = (128 + oy)
global.skill_required[a, 0] = (33 << 0)
global.skill_liv_min[a] = 1
global.skill_unlocked[a] = 0
global.skill_sprite[a] = 210
global.skill_var[a] = 1
global.skill_var_value[a] = 8
ini_open(global.save_general)
var n_skill = array_length_1d(global.skill_name)
for (var i = 1; i < n_skill; i++)
    global.skill_unlocked[i] = ini_read_real("Exp", ("Skill_" + string(i)), 0)
ini_close()
scr_set_skill_variables()
