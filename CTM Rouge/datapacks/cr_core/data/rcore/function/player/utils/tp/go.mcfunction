clear @s *[custom_data~{soul_bind:{name:"arrow"}}]
effect give @s resistance 3 10

#Drop terra restore
execute store result score #item_count calculator.cr run clear @s *[custom_data~{isTerraRestore:true}]
execute if score #item_count calculator.cr matches 1.. run tellraw @s {"text":"[!] 您掉落了","color":"red","extra":[{"score":{name:"#item_count",objective:"calculator.cr"},"color":"green"},{"text":"个大地复苏","color":"red"}]}
execute if score #item_count calculator.cr matches 1.. run data modify storage reg:item this set from storage reg:item reg[{ud:"terra_restore"}]
execute if score #item_count calculator.cr matches 1.. run function reg:item/get/spawn

#Calculate coords
scoreboard players operation $this floor = @s tp.target
scoreboard players operation $this floor /= floor.room_count options
scoreboard players operation @s tp.target %= floor.room_count options
scoreboard players operation #x calculator.cr = @s tp.target
scoreboard players operation #z calculator.cr = @s tp.target
scoreboard players operation #x calculator.cr %= floor.side_length options
scoreboard players operation #z calculator.cr /= floor.side_length options
scoreboard players operation #x calculator.cr *= map_spacing options
scoreboard players operation #z calculator.cr *= map_spacing options

execute if score $this floor matches 0 run scoreboard players operation #x calculator.cr += floor_0.x data
execute if score $this floor matches 0 run scoreboard players operation #y calculator.cr = floor_0.y data
execute if score $this floor matches 0 run scoreboard players operation #z calculator.cr += floor_0.z data
execute if score $this floor matches 1 run scoreboard players operation #x calculator.cr += floor_1.x data
execute if score $this floor matches 1 run scoreboard players operation #y calculator.cr = floor_1.y data
execute if score $this floor matches 1 run scoreboard players operation #z calculator.cr += floor_1.z data
execute if score $this floor matches 2 run scoreboard players operation #x calculator.cr += floor_2.x data
execute if score $this floor matches 2 run scoreboard players operation #y calculator.cr = floor_2.y data
execute if score $this floor matches 2 run scoreboard players operation #z calculator.cr += floor_2.z data

#Center of room
scoreboard players add #x calculator.cr 16
scoreboard players add #y calculator.cr 15
scoreboard players add #z calculator.cr 16

data modify storage run: i set value {x:0,y:0,z:0}
execute store result storage run: i.x int 1 run scoreboard players get #x calculator.cr
execute store result storage run: i.y int 1 run scoreboard players get #y calculator.cr
execute store result storage run: i.z int 1 run scoreboard players get #z calculator.cr

function rcore:player/utils/tp/__tp with storage run: i