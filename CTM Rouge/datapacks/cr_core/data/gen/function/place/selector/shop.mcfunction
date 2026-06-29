scoreboard players set #edge calculator.cr 3

execute store result score #rand calculator.cr run random value 1..3 gen:room
execute if score #rand calculator.cr matches 2 run return run data modify storage ram: struct_res.res set value "shop:spruce_akatona"
execute if score #rand calculator.cr matches 3 run return run data modify storage ram: struct_res.res set value "shop:spruce_snowy_akatona"
data modify storage ram: struct_res.res set value "shop:tavern/1"