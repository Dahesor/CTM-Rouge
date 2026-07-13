tag @s add initialized
execute store result score @s interaction run data get entity @s data.interaction

function gu:generate
data modify entity @s data.Owner set from storage gu:main out