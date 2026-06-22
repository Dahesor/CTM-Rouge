#Calculate where the room is

scoreboard players operation #dx calculator.cr = ROOM_SIZE options
scoreboard players operation #dx calculator.cr += TUNNEL_SPACE options
scoreboard players operation #dz calculator.cr = #dx calculator.cr
scoreboard players operation #buffer calculator.cr = #dx calculator.cr
scoreboard players operation #temp calculator.cr = #rid calculator.cr
scoreboard players operation #temp calculator.cr %= floor.side_length options
scoreboard players operation #dx calculator.cr *= #temp calculator.cr
scoreboard players operation #temp calculator.cr = #rid calculator.cr
scoreboard players operation #temp calculator.cr /= floor.side_length options
scoreboard players operation #dz calculator.cr *= #temp calculator.cr

data modify storage ram: pos set value {x:0,y:0,z:0}
execute store result storage ram: pos.x int 1 run scoreboard players operation #dx calculator.cr += floor.base.x options
execute store result storage ram: pos.y int 1 run scoreboard players get floor.base.y options
execute store result storage ram: pos.z int 1 run scoreboard players operation #dz calculator.cr += floor.base.z options
data modify storage run: prsave set from storage ram: pos

function gen:place/erase/__locate with storage ram: pos