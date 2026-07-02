scoreboard players operation #temp calculator.cr = @s viewing_map
execute store result storage ram: i.i int 1 run scoreboard players add #temp calculator.cr 1
data modify storage ram: dialog.dialog.title.with[0] set string storage ram: i.i