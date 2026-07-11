execute if score #loop_20 calculator.cr matches 6 run function rcore:ai/enderman/second
execute if score #loop_5 calculator.cr matches 2 unless data entity @s angry_at run data modify entity @s anger_end_time set value 9999999999L


execute unless entity @s[tag=active] run return fail

scoreboard players add @s genericCD 1
execute if score @s genericCD matches 1 run kill @e[type=arrow,tag=boss.enderman.arrow]
execute if score @s genericCD matches 1200.. run scoreboard players set @s genericCD 0
execute if score @s genericCD matches 400 run function rcore:ai/enderman/rabbit/summon
execute if score @s genericCD matches 800 as @e[type=rabbit,tag=boss.enderman.rabbit,tag=pre.killer_rabit] at @s run function rcore:ai/enderman/rabbit/transform
execute if score @s genericCD matches 1100.. at @s run function rcore:ai/enderman/arrow/shoot