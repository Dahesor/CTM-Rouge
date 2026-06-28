data modify storage core:player data append value {UID:-1}
execute store result storage core:player data[-1].UID int 1 run scoreboard players add #new UID 1
scoreboard players operation @s UID = #new UID

tag @s add __this
summon text_display ~ ~ ~ {Tags:[__name_getter],text:{selector:"@a[tag=__this]"}}
tag @s remove __this

data modify storage core:player data[-1].Name set from entity @n[type=text_display,limit=1,distance=..5,tag=__name_getter] text.insertion
kill @n[type=text_display,limit=1,distance=..5,tag=__name_getter]


function rcore:player/utils/saddle_item