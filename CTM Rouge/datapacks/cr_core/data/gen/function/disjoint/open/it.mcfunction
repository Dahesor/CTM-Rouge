execute store result score #rand calculator.cr run random value 0..100 gen:edges

execute if score #rand calculator.cr > cell.connectivity options run return run function gen:disjoint/open/skip


execute store result score #g1 calculator.cr run data get storage ram: disjoint.edges[0].from
execute store result score #g2 calculator.cr run data get storage ram: disjoint.edges[0].to
scoreboard players operation #temp calculator.cr = #g2 calculator.cr
scoreboard players operation #temp calculator.cr -= #g1 calculator.cr

execute store result score #index calculator.cr run data get storage ram: disjoint.edges[0].from
scoreboard players operation #x calculator.cr = #index calculator.cr
execute store result storage ram: disjoint.x1 int 1 run scoreboard players operation #x calculator.cr %= floor.side_length options
scoreboard players operation #z calculator.cr = #index calculator.cr
execute store result storage ram: disjoint.z1 int 1 run scoreboard players operation #z calculator.cr /= floor.side_length options

execute store result score #index calculator.cr run data get storage ram: disjoint.edges[0].to
scoreboard players operation #x calculator.cr = #index calculator.cr
execute store result storage ram: disjoint.x2 int 1 run scoreboard players operation #x calculator.cr %= floor.side_length options
scoreboard players operation #z calculator.cr = #index calculator.cr
execute store result storage ram: disjoint.z2 int 1 run scoreboard players operation #z calculator.cr /= floor.side_length options

function gen:disjoint/base/__connection with storage ram: disjoint

data remove storage ram: disjoint.edges[0]
scoreboard players remove #count calculator.cr 1
execute if score #count calculator.cr matches 1.. run function gen:disjoint/open/it