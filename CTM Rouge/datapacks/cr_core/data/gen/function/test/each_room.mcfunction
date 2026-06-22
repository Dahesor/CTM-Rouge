setblock ~ ~ ~ diamond_block
data modify storage run: rm set from storage ram: rm[0]
execute if data storage run: rm{pos_z:true} run setblock ~ ~ ~1 iron_block
execute if data storage run: rm{neg_z:true} run setblock ~ ~ ~-1 iron_block
execute if data storage run: rm{pos_x:true} run setblock ~1 ~ ~ iron_block
execute if data storage run: rm{neg_x:true} run setblock ~-1 ~ ~ iron_block

data remove storage ram: rm[0]
execute unless data storage ram: rm[0] run return 1

scoreboard players add #count calculator.cr 1
execute unless score #count calculator.cr >= floor.side_length options positioned ~2 ~ ~ run return run function gen:test/each_room

scoreboard players set #count calculator.cr 0
execute positioned ~-14 ~ ~2 run function gen:test/each_room