execute store result score #temp calculator.cr run clear @s *[custom_data~{item:{id:"f1_secret_key"}}]

execute unless score #temp calculator.cr matches 1.. run return fail

setblock ~ ~ ~ resin_block replace

execute positioned ~1 ~ ~ if block ~ ~ ~ resin_block run setblock ~ ~ ~ air destroy
execute positioned ~-1 ~ ~ if block ~ ~ ~ resin_block run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~1 if block ~ ~ ~ resin_block run setblock ~ ~ ~ air destroy
execute positioned ~ ~ ~-1 if block ~ ~ ~ resin_block run setblock ~ ~ ~ air destroy

fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace resin_block
playsound block.resin.break

scoreboard players set secrect.f0.stof1 data 1