#(0,0)
data modify storage run: i set value {x:0,z:0,target:2,f0tl:false}
scoreboard players set #x calculator.cr 0
scoreboard players set #z calculator.cr 0
function gen:map/stairs/__/place_room with storage run: i

#(max, 0)
data modify storage run: i set value {x:0,z:0,target:2,f0tl:false}
scoreboard players operation #x calculator.cr = floor.side_length options
execute store result storage run: i.x int 1 run scoreboard players remove #x calculator.cr 1
scoreboard players set #z calculator.cr 0
function gen:map/stairs/__/place_room with storage run: i

#(0, max)
data modify storage run: i set value {x:0,z:0,target:2,f0tl:false}
scoreboard players set #x calculator.cr 0
scoreboard players operation #z calculator.cr = floor.side_length options
execute store result storage run: i.z int 1 run scoreboard players remove #z calculator.cr 1
function gen:map/stairs/__/place_room with storage run: i

#(max, max)
data modify storage run: i set value {x:0,z:0,target:2,f0tl:false}
scoreboard players operation #x calculator.cr = floor.side_length options
execute store result storage run: i.x int 1 run scoreboard players remove #x calculator.cr 1
scoreboard players operation #z calculator.cr = floor.side_length options
execute store result storage run: i.z int 1 run scoreboard players remove #z calculator.cr 1
function gen:map/stairs/__/place_room with storage run: i
