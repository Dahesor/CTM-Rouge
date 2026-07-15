scoreboard players add @s genericCD 1
execute if score @s genericCD matches 2.. run return run scoreboard players set @s genericCD 0

effect give @s instant_damage 1 0 true