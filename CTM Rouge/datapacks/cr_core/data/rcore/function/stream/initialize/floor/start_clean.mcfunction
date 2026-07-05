bossbar set rcore:init/master value 5
bossbar set rcore:init/sub name {text:"清理场地……",color:"red"}
scoreboard players operation #temp calculator.cr = floor.room_count options
execute store result bossbar rcore:init/sub max run scoreboard players operation #temp calculator.cr *= #3 calculator.cr
scoreboard players set #subvalue calculator.cr 0

scoreboard players set $callback calculator.cr 1
scoreboard players operation floor.base.x options = floor_0.x data
scoreboard players operation floor.base.y options = floor_0.y data
scoreboard players operation floor.base.z options = floor_0.z data
function gen:place/erase