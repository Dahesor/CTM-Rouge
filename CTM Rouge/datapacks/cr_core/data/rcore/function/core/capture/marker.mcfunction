function rcore:core/capture/change_status
scoreboard players add @s genericCD 1
execute unless score @s genericCD matches 4.. run return 1
scoreboard players set @s genericCD 0

execute if score @s interaction matches 0 run return run function rcore:core/capture/fsm/peace
execute if score @s interaction matches 2 run return run function rcore:core/capture/fsm/capture