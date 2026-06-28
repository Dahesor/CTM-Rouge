execute as @a at @s run function rcore:player/second

#Game on
execute unless score game data matches 1.. run return fail
execute as @e[type=marker,tag=cr.spawner] at @s run function rcore:core/spawner/check_tick
execute as @e[type=marker,tag=cr.tp_room] at @s run function rcore:core/capture/marker