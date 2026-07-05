scoreboard players set $callback calculator.cr 3
scoreboard players operation floor.base.x options = floor_2.x data
scoreboard players operation floor.base.y options = floor_2.y data
scoreboard players operation floor.base.z options = floor_2.z data

scoreboard players set room.spawn.create options 0
scoreboard players operation $difficulty options = diff.f2 options
scoreboard players set floor.level options 2

bossbar set rcore:init/master value 90
bossbar set rcore:init/sub name {text:"生成第三层……",color:"green"}
execute store result bossbar rcore:init/sub max run scoreboard players get floor.room_count options
scoreboard players set #subvalue calculator.cr 0


function gen:new