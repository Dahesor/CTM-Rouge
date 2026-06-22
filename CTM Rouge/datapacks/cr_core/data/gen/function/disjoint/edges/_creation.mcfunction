scoreboard players operation #right calculator.cr = $this calculator.cr
scoreboard players add #right calculator.cr 1
scoreboard players operation #up calculator.cr = $this calculator.cr
scoreboard players operation #up calculator.cr += floor.side_length options

execute unless score #up calculator.cr >= floor.room_count options run data modify storage ram: disjoint.edges append value {from:-1,to:-1}
execute unless score #up calculator.cr >= floor.room_count options store result storage ram: disjoint.edges[-1].from int 1 run scoreboard players get $this calculator.cr
execute unless score #up calculator.cr >= floor.room_count options store result storage ram: disjoint.edges[-1].to int 1 run scoreboard players get #up calculator.cr

scoreboard players operation #temp calculator.cr = #right calculator.cr
scoreboard players operation #temp calculator.cr %= floor.side_length options
execute unless score #temp calculator.cr matches 0 run data modify storage ram: disjoint.edges append value {from:-1,to:-1}
execute unless score #temp calculator.cr matches 0 store result storage ram: disjoint.edges[-1].from int 1 run scoreboard players get $this calculator.cr
execute unless score #temp calculator.cr matches 0 store result storage ram: disjoint.edges[-1].to int 1 run scoreboard players get #right calculator.cr

scoreboard players add $this calculator.cr 1
execute unless score $this calculator.cr >= floor.room_count options run function gen:disjoint/edges/_creation