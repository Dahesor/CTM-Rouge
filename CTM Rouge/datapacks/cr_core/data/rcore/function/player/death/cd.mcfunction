effect give @s blindness 2 0 true
effect give @s resistance 2 10 true
effect give @s invisibility 2 0 true
tp @s -100 1000 0

scoreboard players operation $this UID = @s UID
execute store result storage ram: i.i int 1 run scoreboard players operation $this UID *= #10 calculator.cr
execute at @s run function rcore:player/death/__sepplayer with storage ram: i

execute store result score $this rot_xz run data get entity @s Rotation[0]
execute unless score $this rot_xz = @s rot_xz run function rcore:menu/map/specialize
scoreboard players operation @s rot_xz = $this rot_xz


scoreboard players remove @s revive_cd 1

scoreboard players operation $this revive_cd = @s revive_cd
scoreboard players operation $this revive_cd /= #20 calculator.cr
scoreboard players add $this revive_cd 1

title @s actionbar [{"text":"复活(","color":"red"},{score:{name:"$this",objective:"revive_cd"}},") [晃动鼠标以打开地图]"]



execute if score @s revive_cd matches 0 run function rcore:player/death/revive