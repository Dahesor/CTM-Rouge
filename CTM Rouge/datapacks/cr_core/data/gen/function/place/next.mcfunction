execute unless data storage ram: rm[0] run return run function gen:place/complete

data modify storage run: rm set from storage ram: rm[0]
data modify storage ram: map_cell set from storage ram: map[0]

execute if data storage ram: map_cell{type:"room"} run function gen:place/selector/master
execute if data storage ram: map_cell{type:"spawn"} run function gen:place/selector/spawn
execute if data storage ram: map_cell{type:"teleporter"} run function gen:place/selector/tp
execute if data storage ram: map_cell{type:"shop"} run function gen:place/selector/shop
execute if data storage ram: map_cell{type:"stairs"} run function gen:place/selector/stairs
execute if data storage ram: map_cell{type:"special"} run function gen:place/selector/special
function gen:place/room

data remove storage ram: rm[0]
data remove storage ram: map[0]