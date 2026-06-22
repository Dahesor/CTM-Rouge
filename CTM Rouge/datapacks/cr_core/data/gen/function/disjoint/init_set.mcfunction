#input_1: number of elements

execute store result score #g1 calculator.cr run data get storage ram: disjoint.input_1
execute unless score #g1 calculator.cr matches 1.. run return fail

data modify storage ram: disjoint.data set value []
scoreboard players set #g2 calculator.cr -1

function gen:disjoint/private/init_loop