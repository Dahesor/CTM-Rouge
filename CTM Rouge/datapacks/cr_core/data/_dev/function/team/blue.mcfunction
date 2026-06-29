scoreboard players set @s join_game 1
team join blue
function rcore:math/mapping/team--score
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
tellraw @s "加入了蓝队"