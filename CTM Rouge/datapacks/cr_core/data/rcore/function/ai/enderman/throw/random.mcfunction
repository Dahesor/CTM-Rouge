tag @s add throwing
scoreboard players set @s interaction 0
data modify entity @s Invulnerable set value true
tag @r[scores={join_game=1..},gamemode=!spectator,distance=..3,tag=!in_room] add boss.enderman.ttar
ride @p[distance=..20,gamemode=!spectator,scores={join_game=1..},tag=boss.enderman.ttar] mount @s
playsound entity.enderman.scream master @s ~ ~ ~ 1 0.8