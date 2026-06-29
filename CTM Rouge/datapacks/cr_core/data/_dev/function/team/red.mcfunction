scoreboard players set @s join_game 1
team join red
function rcore:math/mapping/team--score
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
tellraw @s "加入了红队"