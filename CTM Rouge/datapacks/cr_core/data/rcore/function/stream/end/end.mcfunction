scoreboard players set game data 0
scoreboard players set time data 0
clear @a
time set day
tp @a -93 5 -93

execute as @a at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 0.9 1

title @a times 10 20 10
title @a title "时间到！"
gamemode adventure @a