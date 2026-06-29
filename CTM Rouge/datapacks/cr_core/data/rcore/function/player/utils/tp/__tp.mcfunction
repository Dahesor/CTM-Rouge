$execute positioned $(x).0 $(y).0 $(z).0 run tp @s ~ ~ ~
execute unless score @s join_game matches 1.. at @s run return run tp @s ~ ~32 ~

execute store result storage ram: i.i int 1 run random value 0..359 gen:trivial
execute at @s run function rcore:player/utils/tp/__random_spread with storage ram: i
