execute unless score @s join_game matches 1.. run return 1

execute if score @s revive_cd matches 1.. run return fail
execute store result score #temp2 calculator.cr run clear @s *[custom_data~{isTerraRestore:true}] 0
execute if score #temp2 calculator.cr matches 1.. run return fail

execute if entity @s[tag=has_wool] run return fail

execute if function rcore:player/utils/condition/at_spawn run return 1
execute if function rcore:player/utils/condition/in_public_tp run return 1

scoreboard players operation $this room = @s room
scoreboard players operation $this team = @s team

execute as @e[type=marker,tag=cr.tp_room] if score @s room = $this room if score @s team = $this team run return 1


return fail