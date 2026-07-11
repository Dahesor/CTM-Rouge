summon rabbit ~ ~ ~ {Tags:["game_clear","pre.killer_rabit","__unintialized","boss.enderman.rabbit"]}

execute as @n[type=rabbit,distance=..4,tag=__unintialized] at @s run function rcore:ai/enderman/rabbit/new_rabbit_self

scoreboard players remove #temp calculator.cr 1
execute if score #temp calculator.cr matches 1.. run function rcore:ai/enderman/rabbit/summon_new