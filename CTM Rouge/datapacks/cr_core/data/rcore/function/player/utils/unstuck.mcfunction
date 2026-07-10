dialog clear @s
execute unless score game data matches 1.. run return run function rcore:core/lobby

execute unless score @s join_game matches 1.. run return run tp @s 100 100 100

kill