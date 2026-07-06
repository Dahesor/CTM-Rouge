execute unless data storage core:player data[0].backpack.inv[0].id run return 1

data modify storage core:player itemStack set from storage core:player data[0].backpack.inv[0]
execute store result storage ram: i.i int 1 run data get storage core:player itemStack.Slot
data modify storage core:player itemStack.Slot set value 0b
data modify entity 0-0-0-0-0 Items set value []
data modify entity 0-0-0-0-0 Items append from storage core:player itemStack

function rcore:player/death/return_item/__insert_item with storage ram: i

data remove storage core:player data[0].backpack.inv[0]
function rcore:player/death/return_item/inventory