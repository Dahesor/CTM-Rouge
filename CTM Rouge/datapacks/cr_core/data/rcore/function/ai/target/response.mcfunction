scoreboard players set #hp calculator.cr 1024
execute store result score @s calculator.cr run data get entity @s Health
scoreboard players operation #hp calculator.cr -= @s calculator.cr
execute store result storage ram: i.i int 1 run scoreboard players get #hp calculator.cr
execute on vehicle run data modify entity @s text.extra[0].text set string storage ram: i.i

data modify entity @s Health set value 1024f

execute if score #hp calculator.cr matches 18.. on vehicle run kill
execute if score #hp calculator.cr matches 18.. run kill