execute unless data storage ram: disjoint.data[0] run return 1

execute store result score #g3 calculator.cr run data get storage ram: disjoint.data[0]

execute unless score #g3 calculator.cr = #g1 calculator.cr run data modify storage ram: stack[0].list append from storage ram: disjoint.data[0]
data remove storage ram: disjoint.data[0]
execute unless score #g3 calculator.cr = #g1 calculator.cr run return run function gen:disjoint/private/union_loop

data modify storage ram: stack[0].list append value -1
execute store result storage ram: stack[0].list[-1] int 1 run scoreboard players get #g2 calculator.cr
function gen:disjoint/private/union_loop