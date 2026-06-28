
execute if score @s map_font matches ..1 run return run data modify storage ram: text[2].font set value "crouge:player/1"
execute if score @s map_font matches 2 run return run data modify storage ram: text[2].font set value "crouge:player/2"
execute if score @s map_font matches 3 run return run data modify storage ram: text[2].font set value "crouge:player/3"
execute if score @s map_font matches 4.. run return run data modify storage ram: text[2].font set value "crouge:player/4"
