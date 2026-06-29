execute store result score #max calculator.cr run data get storage reg:structure_set candidates
execute store result score #rand calculator.cr run random value 0..99999999 gen:room
execute store result storage ram: i.i int 1 run scoreboard players operation #rand calculator.cr %= #max calculator.cr
function gen:place/selector/rooms/__get_candidate with storage ram: i