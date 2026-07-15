# What is the lowest score?
scoreboard players set #least calculator.cr 0
scoreboard players operation #least calculator.cr < score.blue data
scoreboard players operation #least calculator.cr < score.red data
scoreboard players operation #least calculator.cr < score.yellow data
#scoreboard players operation #least calculator.cr < score.green data

# How many teams, and which team(s)?
data modify storage run: list set value []
execute if score score.blue data = #least calculator.cr run data modify storage run: list append value blue
execute if score score.red data = #least calculator.cr run data modify storage run: list append value red
execute if score score.yellow data = #least calculator.cr run data modify storage run: list append value yellow
#execute if score score.green data = #least calculator.cr run data modify storage run: list append value green
execute store result score #count calculator.cr run data get storage run: list

#How many points for each team?
scoreboard players operation $score calculator.cr = wool.cyan.score const
scoreboard players operation $score calculator.cr /= #count calculator.cr

# Award points
execute if data storage run: {list:["red"]} run scoreboard players operation score.red data += $score calculator.cr
execute if data storage run: {list:["blue"]} run scoreboard players operation score.blue data += $score calculator.cr
execute if data storage run: {list:["yellow"]} run scoreboard players operation score.yellow data += $score calculator.cr
#execute if data storage run: {list:["green"]} run scoreboard players operation score.green data += $score calculator.cr
execute if data storage run: {list:["red"]} as @a if score @s team matches 1 at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1.5 1
execute if data storage run: {list:["blue"]} as @a if score @s team matches 2 at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1.5 1
execute if data storage run: {list:["yellow"]} as @a if score @s team matches 3 at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1.5 1
#execute if data storage run: {list:["green"]} as @a if score @s team matches 4 at @s run playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1.5 1

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.6 1

tellraw @a [{text:"[!] ",color:"yellow"},{selector:"@s"},"带回了",{translate:"item.cyan_wool"},"\n分数最低的队伍（们）获得（平分）了\n它的",{score:{name:"wool.cyan.score",objective:"const"}},"分!"]

tag @s remove has_wool
function rcore:stream/start/gears/helmets