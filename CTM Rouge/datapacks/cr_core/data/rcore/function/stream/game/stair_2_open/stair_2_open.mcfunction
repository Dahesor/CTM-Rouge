scoreboard players set stair.1_2.open data 1
execute as @a at @s run playsound entity.wither.spawn master @s
tellraw @a {text:"[!] 前往第三层的楼梯已经解锁！它位于第二层地图四角",color:"red"}

data modify storage ram: map set value []
data modify storage ram: map append from storage map: upper.grid.cells[][{stair_room:{to_floor:2}}]

function rcore:stream/game/stair_2_open/each_stair

execute as @a[tag=in_stairs,scores={join_game=1..}] at @s run function rcore:player/utils/location/stairs_check