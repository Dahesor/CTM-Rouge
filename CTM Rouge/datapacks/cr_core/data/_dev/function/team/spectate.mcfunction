scoreboard players set @s join_game 0
team leave @s
scoreboard players reset @s team
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
tellraw @s "退出了队伍，旁观游戏"