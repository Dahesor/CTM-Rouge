execute if score @s team matches 1 as @a unless score @s join_game matches 1.. run tellraw @s {text:"[!] 红队失去了一座传送站",color:"red"}
execute if score @s team matches 2 as @a unless score @s join_game matches 1.. run tellraw @s {text:"[!] 蓝队失去了一座传送站",color:"red"}
execute if score @s team matches 3 as @a unless score @s join_game matches 1.. run tellraw @s {text:"[!] 黄队失去了一座传送站",color:"red"}
execute if score @s team matches 4 as @a unless score @s join_game matches 1.. run tellraw @s {text:"[!] 绿队失去了一座传送站",color:"red"}

execute if score @s monitor.spawner_mined matches 1 as @a unless score @s join_game matches 1.. run tellraw @s {text:"[!] 红队占领了传送站",color:"yellow"}
execute if score @s monitor.spawner_mined matches 2 as @a unless score @s join_game matches 1.. run tellraw @s {text:"[!] 蓝队占领了传送站",color:"yellow"}
execute if score @s monitor.spawner_mined matches 3 as @a unless score @s join_game matches 1.. run tellraw @s {text:"[!] 黄队占领了传送站",color:"yellow"}
execute if score @s monitor.spawner_mined matches 4 as @a unless score @s join_game matches 1.. run tellraw @s {text:"[!] 绿队占领了传送站",color:"yellow"}

execute as @a unless score @s join_game matches 1.. at @s run playsound crouge:tp.captured master @s ~ ~ ~ 1 1.3 1