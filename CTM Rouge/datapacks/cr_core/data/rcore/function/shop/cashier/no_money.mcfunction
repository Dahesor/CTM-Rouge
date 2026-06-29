tellraw @s {text:"[X] 绿宝石不足",color:"red"}
playsound crouge:ui.denied master @s ~ ~ ~
tag @n[distance=..100,tag=cr.shop_interact,tag=__target_shop,type=interaction] remove __target_shop