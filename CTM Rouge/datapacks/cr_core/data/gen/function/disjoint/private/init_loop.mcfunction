data modify storage ram: disjoint.data append value -1
execute store result storage ram: disjoint.data[-1] int 1 run scoreboard players add #g2 calculator.cr 1

execute if score #g2 calculator.cr >= #g1 calculator.cr run return run data remove storage ram: disjoint.data[-1]
function gen:disjoint/private/init_loop