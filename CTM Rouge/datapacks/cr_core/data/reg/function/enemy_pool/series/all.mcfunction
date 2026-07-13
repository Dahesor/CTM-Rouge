data modify storage reg:enemy_pool reg append value {id:"all",tags:["undead","cave","overworld_night"],weight:100,average_difficulty:30,rating:1,contents:[]}

function reg:enemy_pool/__copy_data with storage reg:enemy_pool reg[-1]