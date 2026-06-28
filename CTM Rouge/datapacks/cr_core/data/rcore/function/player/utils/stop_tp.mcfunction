stopsound @s master block.portal.travel
playsound entity.enderman.teleport master @s ~ ~ ~
tellraw @s {text:"[X] 移动或受到攻击，传送失败！",color:"red"}
scoreboard players set @s tp.cd 0
advancement revoke @s only rcore:mech/move_too_fast