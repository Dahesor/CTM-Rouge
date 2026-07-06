function rcore:uid/get

execute if data storage core:player data[0].backpack.equipment.head run function rcore:player/death/return_item/head
execute if data storage core:player data[0].backpack.equipment.chest run function rcore:player/death/return_item/chest
execute if data storage core:player data[0].backpack.equipment.legs run function rcore:player/death/return_item/legs
execute if data storage core:player data[0].backpack.equipment.feet run function rcore:player/death/return_item/feet
execute if data storage core:player data[0].backpack.equipment.offhand run function rcore:player/death/return_item/offhand

function rcore:player/death/return_item/inventory

data remove storage core:player data[0].backpack