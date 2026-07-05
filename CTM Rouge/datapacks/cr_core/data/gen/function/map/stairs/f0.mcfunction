#First place a stair in middle
execute store result score #rand calculator.cr run random value 0..3 gen:stair_location

#Calculate where that is
scoreboard players operation #x calculator.cr = floor.side_length options
scoreboard players remove #x calculator.cr 1
scoreboard players operation #x calculator.cr /= #2 calculator.cr
scoreboard players operation #z calculator.cr = #x calculator.cr
execute if score #rand calculator.cr matches 2.. run scoreboard players add #z calculator.cr 1
execute if score #rand calculator.cr matches 1 run scoreboard players add #x calculator.cr 1
execute if score #rand calculator.cr matches 3 run scoreboard players add #x calculator.cr 1

scoreboard players operation #f0_mid_taken calculator.cr = #rand calculator.cr

data modify storage run: i set value {x:0,z:0,target:1,f0tl:true}
execute store result storage run: i.x int 1 run scoreboard players get #x calculator.cr
execute store result storage run: i.z int 1 run scoreboard players get #z calculator.cr

function gen:map/stairs/__/place_room with storage run: i