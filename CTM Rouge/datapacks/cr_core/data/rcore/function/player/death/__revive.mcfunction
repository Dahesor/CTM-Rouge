gamemode adventure @s
$execute in overworld run tp @s $(x) $(y) $(z)
tellraw @s {"text":"你复活了！","color":"green"}
execute at @s run playsound item.totem.use master @s ~ ~ ~

data modify storage dah.sch:new new set value {run:"particle totem_of_undying ~ ~2 ~ 0.5 0.5 0.5 0.1 100 normal @a",in:"overworld",time:3,flags:["no_executer"]}
execute at @s run function dah.sch:new
data modify storage dah.sch:new new set value {run:"particle totem_of_undying ~ ~2 ~ 0.5 0.5 0.5 0.1 100 normal @a",in:"overworld",time:5,flags:["no_executer"]}
execute at @s run function dah.sch:new
data modify storage dah.sch:new new set value {run:"particle totem_of_undying ~ ~2 ~ 0.5 0.5 0.5 0.1 100 normal @a",in:"overworld",time:7,flags:["no_executer"]}
execute at @s run function dah.sch:new