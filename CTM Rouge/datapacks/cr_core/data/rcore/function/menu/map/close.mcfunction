tag @s remove map.display
tag @s remove map.tp
scoreboard players enable @s dialog
dialog clear @s
scoreboard players operation @s map.edge = $gametime data
scoreboard players add @s map.edge 10