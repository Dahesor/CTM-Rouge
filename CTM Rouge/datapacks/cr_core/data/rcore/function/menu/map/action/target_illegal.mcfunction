tellraw @s {text:"[X] 目标只能是出生点或是已占领的传送点",color:"red"}
playsound crouge:ui.denied master @s ~ ~ ~
scoreboard players set @s tp.cd 0