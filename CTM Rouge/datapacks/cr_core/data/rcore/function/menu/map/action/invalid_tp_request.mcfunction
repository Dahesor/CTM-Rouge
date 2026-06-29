tellraw @s {text:"[X] 必须在出生点或已占领的传送站内才能使用，使用时不可携带收藏品",color:"red"}
execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1.1 1
function rcore:menu/map/close