execute if data storage team: cell.stair_room{needs_key:true} if score $this floor matches 0 run return run data modify storage run: icon set value "T-"

execute if score $this floor matches 0 run return run data modify storage run: icon set value "U-"

execute if score $this floor matches 1 if data storage team: cell.stair_room{to_floor:0} run return run data modify storage run: icon set value "Q-"