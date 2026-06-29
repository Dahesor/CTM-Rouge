#If at spawn
scoreboard players operation $this room = @s tp.target
scoreboard players operation $this team = @s team
execute if function rcore:player/utils/condition/this_at_spawn run return 1

#If valid tp
data modify storage run: color set value "none"
execute store result storage ram: i.i int 1 run scoreboard players get @s tp.target
scoreboard players operation $this team = @s team
execute store result score #success calculator.cr run function rcore:menu/map/action/__get_tp_data with storage ram: i
execute if score #success calculator.cr matches 0 run return fail

return 1