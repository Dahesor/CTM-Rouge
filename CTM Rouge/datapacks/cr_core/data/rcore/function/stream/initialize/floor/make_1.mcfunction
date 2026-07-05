scoreboard players set $callback calculator.cr 2
scoreboard players operation floor.base.x options = floor_1.x data
scoreboard players operation floor.base.y options = floor_1.y data
scoreboard players operation floor.base.z options = floor_1.z data

scoreboard players set room.spawn.create options 0
scoreboard players operation $difficulty options = diff.f1 options
scoreboard players set floor.level options 1

bossbar set rcore:init/master value 65
bossbar set rcore:init/sub name {text:"生成第二层……",color:"green"}
execute store result bossbar rcore:init/sub max run scoreboard players get floor.room_count options
scoreboard players set #subvalue calculator.cr 0

function gen:new