scoreboard players operation $this input = @s input
scoreboard players set @s input 0

execute if score @s reciving matches 1 run return run function rcore:menu/map/action/request_start_tp
execute if score @s reciving matches -1 run return run function _dev:team/_start