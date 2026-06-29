execute unless score game data matches 1.. run effect give @a saturation 30 0 true
execute unless score game data matches 1.. run effect give @a resistance 2 10 true
execute as @a at @s run function rcore:player/second

execute as @e[type=marker,tag=pre.game_clear,tag=cr.spawner] at @s unless block ~ ~ ~ spawner run kill @s

#Game on
execute unless score game data matches 1.. run return fail
execute as @e[type=marker,tag=cr.spawner,tag=game_clear] at @s run function rcore:core/spawner/check_tick
execute as @e[type=interaction,tag=cr.shop_interact.fill,tag=game_clear] at @s run function rcore:shop/second
execute as @e[type=marker,tag=cr.tp_room] at @s run function rcore:core/capture/marker

scoreboard players operation §cred score = score.red data
scoreboard players operation §bblue score = score.blue data
scoreboard players operation §eyellow score = score.yellow data
scoreboard players operation §agreen score = score.green data
