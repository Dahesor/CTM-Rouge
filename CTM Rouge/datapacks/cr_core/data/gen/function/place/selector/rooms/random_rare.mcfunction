execute store result score #max calculator.cr run data get storage reg:structure_set candidates
scoreboard players operation #switch calculator.cr = #max calculator.cr
scoreboard players operation #max calculator.cr *= #2 calculator.cr

execute store result score #rand calculator.cr run random value 0..99999999 gen:room
execute store result storage ram: i.i int 1 run scoreboard players operation #rand calculator.cr %= #max calculator.cr
execute if score #rand calculator.cr < #switch calculator.cr run return run function gen:place/selector/rooms/__get_candidate with storage ram: i

data modify storage reg:structure_set candidates set from storage reg:structure_set this.templates.four_way
function gen:place/selector/rooms/random

scoreboard players set #need_blocking calculator.cr 1