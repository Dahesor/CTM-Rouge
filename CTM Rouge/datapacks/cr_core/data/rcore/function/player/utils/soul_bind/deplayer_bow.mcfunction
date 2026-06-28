clear @s *[custom_data~{soul_bind:{name:"deplayer_bow"}}]

execute store result score #temp calculator.cr run data get entity @s Inventory
execute if score #temp calculator.cr matches 36.. run return fail

execute unless score @s soul.bow_type matches 1.. run data modify storage reg:item this set from storage reg:item reg[{id:"basic_player_bow"}]
function reg:item/get/single_spawn