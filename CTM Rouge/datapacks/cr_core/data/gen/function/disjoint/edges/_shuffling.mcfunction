execute store result score #rand calculator.cr run random value 0..2147483640 gen:edges
execute store result storage ram: i.i int 1 run scoreboard players operation #rand calculator.cr %= #max calculator.cr
function gen:disjoint/edges/__shuffle_new with storage ram: i

scoreboard players remove #max calculator.cr 1
execute if score #max calculator.cr matches 1.. run function gen:disjoint/edges/_shuffling