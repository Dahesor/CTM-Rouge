data modify storage core:player data append value {UID:-1}
execute store result storage core:player data[-1].UID int 1 run scoreboard players add #new UID 1