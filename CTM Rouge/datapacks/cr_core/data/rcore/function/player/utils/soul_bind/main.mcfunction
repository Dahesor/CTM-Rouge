execute store result score #temp calculator.cr run clear @s *[custom_data~{soul_bind:{name:"player_map"}}] 0
execute unless score #temp calculator.cr matches 1 run function rcore:player/utils/soul_bind/player_map

execute store result score #temp calculator.cr run clear @s *[custom_data~{soul_bind:{name:"deplayer_bow"}}] 0
execute unless score #temp calculator.cr matches 1 run function rcore:player/utils/soul_bind/deplayer_bow

execute store result score #temp calculator.cr run clear @s *[custom_data~{soul_bind:{name:"arrow"}}] 0
execute unless score @s soul.arrow_cd matches 1.. unless score #temp calculator.cr matches 1 run function rcore:player/utils/soul_bind/arrow