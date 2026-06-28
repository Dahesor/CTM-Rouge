
execute store result score #temp calculator.cr run clear @s *[custom_data~{soul_bind:{name:"arrow"}}] 0

execute unless score @s soul.arrow_cd matches 1.. unless score #temp calculator.cr matches 1.. run scoreboard players operation @s soul.arrow_cd = @s soul.arrow_charge_time

execute if score @s soul.arrow_cd matches 1 unless score #temp calculator.cr matches 1.. run function rcore:player/utils/soul_bind/arrow