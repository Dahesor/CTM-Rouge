data modify storage core:player data[0].backpack set value {}
execute unless items entity @s weapon.offhand air run data modify storage core:player data[0].backpack.equipment set from entity @s equipment
data modify storage core:player data[0].backpack.inv set from entity @s Inventory

clear @s
function rcore:player/utils/saddle_item