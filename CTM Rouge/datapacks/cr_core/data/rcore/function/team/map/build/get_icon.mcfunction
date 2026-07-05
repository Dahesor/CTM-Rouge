data modify storage run: icon_private set value ""

execute if data storage team: cell{type:"room"} run return run function rcore:team/map/build/icon/room
execute if data storage team: cell{type:"shop"} run return run data modify storage run: icon set value "s-"
execute if data storage team: cell{type:"special"} run return run function rcore:team/map/build/icon/special
execute if data storage team: cell{type:"stairs"} run return run function rcore:team/map/build/icon/stairs
execute if data storage team: cell{type:"teleporter"} run return run function rcore:team/map/build/icon/teleport

execute if function rcore:player/utils/condition/at_spawn run data modify storage run: icon_private set value "H-"
execute if data storage team: cell{type:"spawn"}.spawn_room{owner:"red"} run return run data modify storage run: icon set value "R-"
execute if data storage team: cell{type:"spawn"}.spawn_room{owner:"blue"} run return run data modify storage run: icon set value "B-"
execute if data storage team: cell{type:"spawn"}.spawn_room{owner:"yellow"} run return run data modify storage run: icon set value "Y-"
execute if data storage team: cell{type:"spawn"}.spawn_room{owner:"green"} run return run data modify storage run: icon set value "G-"

return run data modify storage run: icon set value "n-"