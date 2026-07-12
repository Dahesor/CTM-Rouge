scoreboard players add @s interaction 1
ride @p[distance=..20,gamemode=!spectator,scores={join_game=1..},tag=boss.enderman.ttar] mount @s
execute if score @s interaction matches 20.. run function rcore:ai/enderman/tp_back
execute if score @s interaction matches 20 at @s run playsound entity.enderman.teleport
execute if score @s interaction matches 40 run function rcore:ai/enderman/throw/end