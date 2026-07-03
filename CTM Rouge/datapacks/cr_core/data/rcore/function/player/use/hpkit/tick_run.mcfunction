execute if score @s hpkit matches ..-1 run return run scoreboard players add @s hpkit 1
execute if score @s[tag=using.hpkit] hpkit matches 1.. run scoreboard players remove @s hpkit 1
execute if score @s[tag=using.hpkit] hpkit matches 1.. run return run tag @s remove using.hpkit
execute if score @s hpkit matches 1.. run return run function rcore:player/use/hpkit/terminate_penalty
scoreboard players set @s hpkit 0