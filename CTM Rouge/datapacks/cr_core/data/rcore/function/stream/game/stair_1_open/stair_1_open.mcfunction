
scoreboard players set stair.0_1.open data 1
execute as @a at @s run playsound entity.wither.spawn master @s
tellraw @a {text:"[!] 前往第二层的楼梯已经解锁！它位于第一层地图中心",color:"red"}

data modify storage ram: map_cell set from storage map: ground.grid.cells[][{stair_room:{f0_time_lock:true}}]
data modify storage team: cell set from storage ram: map_cell

execute as @a[limit=1,scores={team=1}] run function rcore:stream/game/stair_1_open/edit_map
execute as @a[limit=1,scores={team=2}] run function rcore:stream/game/stair_1_open/edit_map
execute as @a[limit=1,scores={team=3}] run function rcore:stream/game/stair_1_open/edit_map
execute as @a[limit=1,scores={team=4}] run function rcore:stream/game/stair_1_open/edit_map