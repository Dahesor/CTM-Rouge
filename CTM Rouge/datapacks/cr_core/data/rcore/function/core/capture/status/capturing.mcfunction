scoreboard players operation @s monitor.spawner_mined = #team_major calculator.cr
scoreboard players set @s interaction 2

execute if score @s leave_game matches 1.. run return fail
scoreboard players operation $this team = @s team
scoreboard players set @s leave_game 20
execute as @a if score @s team = $this team run tellraw @s {text:"[!] 您的队伍的一座传送站正在被敌方占领！",color:"red"}