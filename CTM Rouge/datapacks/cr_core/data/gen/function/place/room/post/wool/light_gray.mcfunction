data modify storage run: i set value {x:0,y:0,z:0}
execute store result storage run: i.x int 1 run random value 0..11 gen:unique_location
execute store result storage run: i.y int 1 run random value 0..10 gen:unique_location
execute store result storage run: i.z int 1 run random value 0..11 gen:unique_location

summon marker ~ ~ ~ {Tags:["game_clear","light_gray_wool.hidden"]}

function gen:place/room/post/wool/__light_gray with storage run: i