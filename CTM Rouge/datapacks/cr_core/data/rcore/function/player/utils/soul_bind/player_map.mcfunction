clear @s *[custom_data~{soul_bind:{name:"player_map"}}]

execute store result score #temp calculator.cr run data get entity @s Inventory
execute if score #temp calculator.cr matches 36.. run return fail

data modify storage reg:item this set from storage reg:item reg[{id:"player_map"}]
function reg:item/get/single_spawn