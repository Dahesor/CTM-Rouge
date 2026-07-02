function rcore:math/team_list/self_score_rotate

# Get Room Base Coord
scoreboard players operation #x calculator.cr = floor_0.x data
scoreboard players operation #y calculator.cr = floor_0.y data
scoreboard players operation #z calculator.cr = floor_0.z data
scoreboard players operation #delta calculator.cr = ROOM_SIZE options
scoreboard players operation #delta calculator.cr += TUNNEL_SPACE options

execute store result score #dx calculator.cr run data get storage team: data[0].spawn.x
execute store result score #dz calculator.cr run data get storage team: data[0].spawn.z
scoreboard players operation #dx calculator.cr *= #delta calculator.cr
scoreboard players operation #dz calculator.cr *= #delta calculator.cr

scoreboard players operation #x calculator.cr += #dx calculator.cr
scoreboard players operation #z calculator.cr += #dz calculator.cr

# ~16 ~11 ~16

scoreboard players add #x calculator.cr 16
scoreboard players add #y calculator.cr 11
scoreboard players add #z calculator.cr 16

data modify storage run: i set value {x: 0, y: 0, z: 0}
execute store result storage run: i.x int 1 run scoreboard players get #x calculator.cr
execute store result storage run: i.y int 1 run scoreboard players get #y calculator.cr
execute store result storage run: i.z int 1 run scoreboard players get #z calculator.cr

function rcore:player/death/__revive with storage run: i

function rcore:menu/map/close