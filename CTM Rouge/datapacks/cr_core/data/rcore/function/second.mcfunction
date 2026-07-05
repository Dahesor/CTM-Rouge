effect give @a saturation 30 0 true
execute unless score game data matches 1.. run effect give @a resistance 2 10 true
execute unless score game data matches 1.. run effect give @a instant_health 30 0 true
execute as @a at @s run function rcore:player/second

execute as @e[type=marker,tag=pre.game_clear,tag=cr.spawner] at @s unless block ~ ~ ~ spawner run kill @s

#Game on
execute unless score game data matches 1.. run return fail
function rcore:menu/sidebar/second
execute as @e[type=marker,tag=cr.spawner,tag=game_clear] at @s run function rcore:core/spawner/check_tick
execute as @e[type=interaction,tag=cr.shop_interact.fill,tag=game_clear] at @s run function rcore:shop/second
execute as @e[type=marker,tag=cr.tp_room] at @s run function rcore:core/capture/marker
execute as @e[type=iron_golem,tag=boss_wool,tag=boss.iron_golem] at @s run function rcore:ai/golem/second