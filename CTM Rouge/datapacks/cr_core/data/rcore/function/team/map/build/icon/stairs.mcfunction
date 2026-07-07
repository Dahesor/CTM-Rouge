execute if score $this floor matches 1 if data storage team: cell.stair_room{to_floor:2} run return run data modify storage run: icon set value "I-"
execute if score $this floor matches 2 if data storage team: cell.stair_room{to_floor:1} run return run data modify storage run: icon set value "P-"


execute if score $this floor matches 0 if score secrect.f0.stof1 data matches 0 if data storage team: cell.stair_room{needs_key:true} run return run data modify storage run: icon set value "T-"
execute if score $this floor matches 0 if data storage team: cell.stair_room{needs_key:true} run return run data modify storage run: icon set value "P-"
execute if score $this floor matches 0 if data storage team: cell.stair_room{f0_time_lock:true} unless score stair.0_1.open data matches 1 run return run data modify storage run: icon set value "U-"
execute if score $this floor matches 0 if data storage team: cell.stair_room{f0_time_lock:true} run return run data modify storage run: icon set value "P-"


execute if score $this floor matches 1 if data storage team: cell.stair_room{to_floor:0} run return run data modify storage run: icon set value "Q-"