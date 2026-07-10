advancement revoke @s only rcore:mech/kill_player_with_orange

scoreboard players add wool.orange.score data 15
item modify entity @s armor.head rcore:change_orange_lore

tellraw @a {text:"[!] 橙色羊毛的分值增加了15！现在是",color:"light_purple",extra:[{score:{name:"wool.orange.score",objective:"data"}}]}
execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~