scoreboard players set game data 0
scoreboard players set time data 0
scoreboard players set @a revive_cd 0
clear @a
time set day
execute as @a run function rcore:core/lobby

execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 0.9 1

title @a times 10 20 10
title @a title "时间到！"
gamemode adventure @a
tag @a remove has_wool
tag @a remove in_room
tag @a remove magenta.f1
tag @a remove magenta.f2
tag @a remove in_public_tp

data modify storage ram: text set value [{text:"游戏结束！地图种子为",color:"green"},{score:{name:"seed",objective:"data"},color:"yellow",underlined:true,hover_event:{action:"show_text",value:"点击复制"},click_event:{action:"copy_to_clipboard",value:"1"},insertion:""}]
execute store result storage ram: i.i int 1 run scoreboard players get seed data
data modify storage ram: text[1].insertion set string storage ram: i.i
data modify storage ram: text[1].click_event.value set string storage ram: i.i
tellraw @a {storage:"ram:",nbt:"text",interpret:true}

bossbar remove rcore:boss/iron_golem
bossbar remove rcore:boss/slime_king
bossbar remove rcore:boss/enderman
bossbar remove rcore:boss/warden