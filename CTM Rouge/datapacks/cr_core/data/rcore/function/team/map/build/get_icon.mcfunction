execute if data storage team: cell{type:"room"} run return run data modify storage run: icon set value "r-"
execute if data storage team: cell{type:"shop"} run return run data modify storage run: icon set value "s-"
execute if data storage team: cell{type:"teleporter"} run return run data modify storage run: icon set value "t-"

execute if function rcore:player/utils/condition/at_spawn run return run data modify storage run: icon set value "H-"
execute if data storage team: cell{type:"spawn"}.spawn_room{owner:"red"} run return run data modify storage run: icon set value "R-"
execute if data storage team: cell{type:"spawn"}.spawn_room{owner:"blue"} run return run data modify storage run: icon set value "B-"
execute if data storage team: cell{type:"spawn"}.spawn_room{owner:"yellow"} run return run data modify storage run: icon set value "Y-"
execute if data storage team: cell{type:"spawn"}.spawn_room{owner:"green"} run return run data modify storage run: icon set value "G-"

return run data modify storage run: icon set value "n-"