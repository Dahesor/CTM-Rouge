execute store result score #temp2 calculator.cr if entity @e[type=rabbit,tag=boss.enderman.rabbit]
scoreboard players set #temp calculator.cr 17
scoreboard players operation #temp calculator.cr -= #temp2 calculator.cr
execute if score #temp calculator.cr matches 1.. run function rcore:ai/enderman/rabbit/summon_new